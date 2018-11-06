package com.art.score.artscore.mapper;

import com.alibaba.fastjson.JSONObject;

import java.util.List;

public interface ModuleMapper {
    List<JSONObject> queryList();

    JSONObject queryByID(Integer id);
}
