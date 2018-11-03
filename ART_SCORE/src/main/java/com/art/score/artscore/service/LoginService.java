package com.art.score.artscore.service;

import com.art.score.artscore.vo.ResVo;

public interface LoginService {
    ResVo loginValidata(String account,String pwd);
}
