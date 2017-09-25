package com.example.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * docker
 * Created by jinra on 2017/9/6.
 */
@RestController
public class HelloController {

    @RequestMapping("/")
    public String home() {
        return "Hello Docker World";
    }
}
