package com.art.score.artscore.service.impl;

import com.art.score.artscore.mapper.LoginMapper;
import com.art.score.artscore.service.LoginService;
import com.art.score.artscore.vo.ResVo;
import com.art.score.artscore.vo.Sys_user;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    LoginMapper loginMapper;

    @Value("${login_info}")
    private String sessionName;

    @Override
    @Transactional(rollbackFor = Exception.class)
    public ResVo loginValidata(HttpServletRequest request, String account, String pwd) {
        Sys_user sys_user = loginMapper.loginValidata(account, pwd);
        ResVo vo = null;
        if (sys_user != null) {
            HttpSession session = request.getSession();
            session.setAttribute(sessionName, sys_user);
            vo = new ResVo("suc", "操作成功", sys_user);
        } else {
            vo = new ResVo("error", "账号或密码错误", null);
        }
        return vo;
    }
}
