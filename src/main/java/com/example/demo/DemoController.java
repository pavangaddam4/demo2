package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController()
@RequestMapping("services")
public class DemoController {

    @Value("${environment}")
    String paramName;

    @GetMapping(path = "/hello")
    public String getHello() {
        return "Hello this is environment: "+paramName + " | And version: 1";
    }
}
