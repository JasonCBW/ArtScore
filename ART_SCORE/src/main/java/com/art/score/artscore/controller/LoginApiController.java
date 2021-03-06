package com.art.score.artscore.controller;

import com.art.score.artscore.annotation.Log;
import com.art.score.artscore.enumvo.LogTypeEnum;
import com.art.score.artscore.service.LoginService;
import com.art.score.artscore.vo.ResVo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("login")
@Slf4j
public class LoginApiController {

    @Autowired
    LoginService loginService;

    @RequestMapping(value = "loginValidata", method = RequestMethod.POST)
    @Log(value = "用户登录", type = LogTypeEnum.LOG)
    @ResponseBody
    public ResVo loginValidata(HttpServletRequest request, @RequestParam String account, @RequestParam String pwd) {
        //log.info("test{}");

        return loginService.loginValidata(request,account, pwd);
    }
}
