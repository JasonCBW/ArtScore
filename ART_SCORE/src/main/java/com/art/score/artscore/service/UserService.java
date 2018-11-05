package com.art.score.artscore.service;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.vo.ResVo;

public interface UserService {
    JSONObject getUserlist(JSONObject josn);

    ResVo getUserByID(Integer id);
}
