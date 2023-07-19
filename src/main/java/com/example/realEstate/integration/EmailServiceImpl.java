package com.example.realEstate.integration;

import com.example.realEstate.entity.EmailData;
import com.example.realEstate.service.SqsMessageSenderService;
import com.sendgrid.Method;
import com.sendgrid.Request;
import com.sendgrid.Response;
import com.sendgrid.SendGrid;
import com.sendgrid.helpers.mail.Mail;
import com.sendgrid.helpers.mail.objects.Content;
import com.sendgrid.helpers.mail.objects.Email;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.IOException;

@Service
public class EmailServiceImpl implements EmailService {

    @Autowired
    private SqsMessageSenderService messageSender;
//
//    @Value("${sendgrid.api-key}")
//    String api_key;

    @Override
    public void sendEmail(String to_address, String subject, String body) throws IOException {
        EmailData emailData = new EmailData(to_address, subject, body);
        pushMail(emailData);
    }

        @Override
    public void sendWelcomeEmail(String to_address) throws IOException {
            EmailData emailData = new EmailData(to_address, "Welcome", "Welcome to housing");
            pushMail(emailData);
    }

    // create a function push mail

    public void pushMail(EmailData emailData) throws IOException {
        System.out.println(emailData.getEmail());
        System.out.println(emailData.getSubject());
        System.out.println(emailData.getEmailBody());

        messageSender.sendMessageToSqs(emailData.getEmail(), emailData.getEmailBody(), emailData.getSubject());
    }




//    @Override
//    public void sendEmail(String to_address, String subject, String body) throws IOException {
//        System.out.println(api_key);
//        Email from = new Email("kidiste.gizachew@gmail.com");
//        Email to = new Email(to_address);
//        Content content = new Content("text/plain", body);
//        Mail mail = new Mail(from, subject, to, content);
//
//        sendGrid(mail);
//    }
//
//    @Override
//    public void sendWelcomeEmail(String to_address) throws IOException {
//        Email from = new Email("kidiste.gizachew@gmail.com");
//        Email to = new Email(to_address);
//        Content content = new Content("text/plain", "Welcome to housing");
//        Mail mail = new Mail(from, "Welcome", to, content);
//        mail.setTemplateId("d-cc72cd86d1764262a79adc29adf7dd78");
//        sendGrid(mail);
//    }
//
//    private void sendGrid(Mail mail) throws IOException {
//        messageSender.sendMessageToSqs(mail.getm, response.getBody(), emailData.getSubject());
//        SendGrid sg = new SendGrid(api_key);
//        Request request = new Request();
//        try {
//            request.setMethod(Method.POST);
//            request.setEndpoint("mail/send");
//            request.setBody(mail.build());
//            Response response = sg.api(request);
//            System.out.println(response.getStatusCode());
//            System.out.println(response.getBody());
//            System.out.println(response.getHeaders());
//        } catch (IOException ex) {
//            throw ex;
//        }
//    }


}
