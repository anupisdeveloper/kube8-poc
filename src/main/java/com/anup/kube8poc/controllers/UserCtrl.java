package com.anup.kube8poc.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/rest")
public class UserCtrl {

    @GetMapping("/app")
    public String getAppName() {
        return "Kube8 Poc App (Status: Working)";
    }
}
