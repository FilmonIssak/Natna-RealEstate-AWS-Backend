package com.example.realEstate.controller;

import com.example.realEstate.entity.User;
import com.example.realEstate.entity.dto.request.LoginRequest;
import com.example.realEstate.entity.dto.request.RefreshTokenRequest;
import com.example.realEstate.entity.dto.request.SignupRequest;
import com.example.realEstate.entity.dto.response.LoginResponse;
import com.example.realEstate.service.AuthService;
import com.example.realEstate.service.LambdaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;

@RestController
@RequestMapping("/api/v1/auth")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class AuthController {
    @Autowired
    private final AuthService authService;

    @Autowired
    private LambdaService lambdaService;

    public AuthController(AuthService authService) {
        this.authService = authService;
    }

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody LoginRequest loginRequest) {
        String functionName = "natnaLambdaSigning";
        //arn:aws:lambda:us-east-1:969885300851:function:natnaLambdaSigning
//        return new ResponseEntity<LoginResponse>(loginResponse, HttpStatus.OK);
        System.out.println(loginRequest.toString());
        String result = lambdaService.invokeLambdaFunction(functionName, loginRequest.toString());
        System.out.println(result);
        if (result.compareTo("200")==0){
            var loginResponse = authService.login(loginRequest);
            return new ResponseEntity<LoginResponse>(loginResponse, HttpStatus.OK);
        }
        return new ResponseEntity<LoginResponse>(new LoginResponse(), HttpStatus.BAD_REQUEST);
    }

    @PostMapping("/signup")
    public ResponseEntity<?> signUp(@RequestBody SignupRequest signupRequest){
        User user = null;
        try {
            user = authService.signup(signupRequest);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return new ResponseEntity<User>(user, HttpStatus.OK);

    }

    @PostMapping("/refresh-token")
    public LoginResponse refreshToken(@RequestBody RefreshTokenRequest refreshTokenRequest) {
        return authService.refreshToken(refreshTokenRequest);
    }

}