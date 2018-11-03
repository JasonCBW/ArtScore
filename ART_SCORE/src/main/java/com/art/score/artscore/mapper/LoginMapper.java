package com.art.score.artscore.mapper;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.model.*;

import java.util.List;

public interface LoginMapper {
    /**
     * 登录验证
     */
    sys_user loginValidata(String account, String pwd);
}
