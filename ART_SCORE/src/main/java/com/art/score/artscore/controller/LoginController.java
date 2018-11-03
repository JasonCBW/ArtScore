package com.art.score.artscore.controller;

import com.art.score.artscore.annotation.Log;
import com.art.score.artscore.enumvo.LogTypeEnum;
import com.art.score.artscore.service.LoginService;
import com.art.score.artscore.vo.ResVo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("login")
@Slf4j
public class LoginController {

    @Autowired
    LoginService loginService;

    @RequestMapping(value = "loginValidata", method = RequestMethod.POST)
    @Log(value = "用户登录", type = LogTypeEnum.LOG)
    @ResponseBody
    public ResVo loginValidata(@RequestParam String account, @RequestParam String pwd) {
        log.info("test{}");

        return loginService.loginValidata(account, pwd);
    }
}
