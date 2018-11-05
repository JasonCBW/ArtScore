package com.art.score.artscore.mapper;

import com.alibaba.fastjson.JSONObject;

import java.util.List;

public interface RoleMapper {

     List<JSONObject> queryList(JSONObject jsonObject);
}
