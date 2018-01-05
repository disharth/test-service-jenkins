package com.disharth.tests;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TheController {
    @RequestMapping("/")
    public String index() {
        return "Application running fine.!";
    }
}
