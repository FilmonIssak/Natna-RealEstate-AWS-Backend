package com.example.realEstate.entity;

public class EmailData {
    private String email;

    private String subject;
    private String emailBody;


    public EmailData(String email, String subject, String emailBody) {
        this.email = email;
        this.subject = subject;
        this.emailBody = emailBody;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmailBody() {
        //replace all /n with _
        return emailBody.replaceAll("\n", "__");
    }

    public void setEmailBody(String emailBody) {
        this.emailBody = emailBody;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    // Getters and setters
}
