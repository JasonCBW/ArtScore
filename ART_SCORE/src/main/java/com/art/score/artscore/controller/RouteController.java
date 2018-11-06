package com.art.score.artscore.controller;

import com.art.score.artscore.service.ModuleService;
import com.art.score.artscore.vo.ResVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class RouteController {

    @Autowired
    ModuleService moduleservice;

    /**
     *系统框架页面
     */
    @RequestMapping(value = "/sys")
    public String home(){
        return "common/index";
    }

    /**
     * 欢迎页
     * */
    @RequestMapping(value = "/welcome")
    public String welcome(){
        return "common/welcome";
    }

    /**
     * 系统登录页
     * */
    @RequestMapping(value = "/login")
    public String login(){
        return "common/login";
    }

    /**
     * 角色页面
     * */
    @RequestMapping(value = "/role")
    public String role(){
        return "role";
    }

    /**
     * 用户页面
     * */
    @RequestMapping(value = "/user")
    public String user(){
        return "user";
    }

    /**
     * 学生页面
     * */
    @RequestMapping(value = "/student")
    public String student(){
        return "student";
    }

    /**
     * 在线审核页面
     * */
    @RequestMapping(value = "/works")
    public String works(){
        return "works";
    }

    /**
     * 微信关注用户页面
     * */
    @RequestMapping(value = "/member")
    public String member(){
        return "member";
    }
}
