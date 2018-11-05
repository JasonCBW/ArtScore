package com.art.score.artscore.mapper;

import com.alibaba.fastjson.JSONObject;

import java.util.List;

public interface UserMapper {

    List<JSONObject> queryList(JSONObject jsonObject);

    JSONObject queryByID(Integer id);
}
