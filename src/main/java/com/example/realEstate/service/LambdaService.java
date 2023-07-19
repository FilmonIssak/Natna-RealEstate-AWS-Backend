package com.example.realEstate.service;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import software.amazon.awssdk.auth.credentials.AwsBasicCredentials;
import software.amazon.awssdk.auth.credentials.StaticCredentialsProvider;
import software.amazon.awssdk.core.SdkBytes;
import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.lambda.LambdaClient;
import software.amazon.awssdk.services.lambda.model.InvokeRequest;
import software.amazon.awssdk.services.lambda.model.InvokeResponse;

@Service
public class LambdaService {

    private final LambdaClient lambdaClient;
    @Value("${AWS_ACCESS_KEY_ID}")
    private String accessKey;
    @Value("${AWS_SECRET_ACCESS_KEY}")
    private String secretKey;

    @Value("${AWS_REGION}")
    private String awsRegion;


    public LambdaService(
            @Value("${AWS_REGION}") String awsRegion,
            @Value("${AWS_ACCESS_KEY_ID}") String awsAccessKeyId,
            @Value("${AWS_SECRET_ACCESS_KEY}") String awsSecretAccessKey
    ) {
        // Create an AWS Lambda client with the provided credentials and region
        lambdaClient = LambdaClient.builder()
                .region(Region.of(awsRegion))
                .credentialsProvider(StaticCredentialsProvider.create(
                        AwsBasicCredentials.create(awsAccessKeyId, awsSecretAccessKey)
                ))
                .build();
    }

    public String invokeLambdaFunction(String functionName, String payload) {
        // Create the request to invoke the Lambda function
        InvokeRequest request = InvokeRequest.builder()
                .functionName(functionName)
                .payload(SdkBytes.fromUtf8String(payload))
                .build();

        try {
            // Invoke the Lambda function
            InvokeResponse response = lambdaClient.invoke(request);

            // Extract and return the result from the response
            return new String(response.payload().asByteArray());

        } catch (Exception e) {
            // Handle any errors that may occur during the invocation
            e.printStackTrace();
            return null;
        }
    }




}

