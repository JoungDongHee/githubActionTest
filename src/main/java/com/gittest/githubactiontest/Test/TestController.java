package com.gittest.githubactiontest.Test;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    @GetMapping("/test/{value}")
    public String test(@PathVariable String value){
        System.out.println("gitHubActionTEST");

        return "Hello World"+value;
    }
}
