package com.art.score.artscore.service;

import com.art.score.artscore.vo.ResVo;

import javax.servlet.http.HttpServletRequest;

public interface LoginService {
    ResVo loginValidata(HttpServletRequest request, String account, String pwd);
}
