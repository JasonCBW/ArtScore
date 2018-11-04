package com.art.score.artscore.service.impl;

import com.art.score.artscore.mapper.LoginMapper;
import com.art.score.artscore.service.LoginService;
import com.art.score.artscore.vo.ResVo;
import com.art.score.artscore.vo.Sys_user;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    LoginMapper loginMapper;

    @Override
    @Transactional(rollbackFor = Exception.class)
    public ResVo loginValidata(String account, String pwd) {
        Sys_user sys_user =  loginMapper.loginValidata(account, pwd);
        return new ResVo("suc", "操作成功",sys_user);
    }
}
