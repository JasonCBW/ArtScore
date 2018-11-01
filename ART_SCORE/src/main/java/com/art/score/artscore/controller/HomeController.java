package com.art.score.artscore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping(value = "/home")
    public String home(){
        return "common/index";
    }

    @RequestMapping(value = "/welcome")
    public String welcome(){
        return "common/welcome";
    }

    @RequestMapping(value = "/login")
    public String login(){
        return "common/login";
    }
}
