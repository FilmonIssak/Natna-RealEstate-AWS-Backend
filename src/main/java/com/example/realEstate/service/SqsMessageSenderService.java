package com.example.realEstate.service;

import software.amazon.awssdk.auth.credentials.AwsBasicCredentials;
import software.amazon.awssdk.auth.credentials.StaticCredentialsProvider;
import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.sqs.SqsClient;
import software.amazon.awssdk.services.sqs.model.SendMessageRequest;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service
public class SqsMessageSenderService {

    private SqsClient sqsClient;
    private String queueUrl;

    private String accessKey;
    private String secretKey;

    public SqsMessageSenderService(
            @Value("${AWS_QUEUE}") String queueUrl,
            @Value("${AWS_ACCESS_KEY_ID}") String awsAccessKeyId,
            @Value("${AWS_SECRET_ACCESS_KEY}") String awsSecretAccessKey
    ) {
        this.queueUrl = queueUrl;
        this.accessKey = awsAccessKeyId;
        this.secretKey = awsSecretAccessKey;
    }

    public void sendMessageToSqs(String email, String emailBody, String subject) {
        AwsBasicCredentials credentials = AwsBasicCredentials.create(accessKey, secretKey);
        StaticCredentialsProvider credentialsProvider = StaticCredentialsProvider.create(credentials);

        this.sqsClient = SqsClient.builder()
                .region(Region.US_EAST_1)
                .credentialsProvider(credentialsProvider)
                .build();

        String messageBody = String.format("{\"email\": \"%s\", \"emailBody\": \"%s\", \"subject\": \"%s\"}", email, emailBody, subject);

        SendMessageRequest sendMessageRequest = SendMessageRequest.builder()
                .queueUrl(queueUrl)
                .messageBody(messageBody)
                .build();

        sqsClient.sendMessage(sendMessageRequest);
    }

    // Remember to close the SQS client when it's no longer needed to free up resources.
    public void close() {
        sqsClient.close();
    }
}
