package com.example.realEstate.entity.dto.request;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class LoginRequest {
    private String email;
    private String password;

    @Override
    public String toString() {
        return "{\"username\":\"" + email + "\", \"password\":\"" + password + "\"}";
    }

//    @Override
//    public String toString() {
//        return "{" +
//                "email: \"" + email + "\", " +
//                "password: \"" + password + "\"}";
//    }
}
