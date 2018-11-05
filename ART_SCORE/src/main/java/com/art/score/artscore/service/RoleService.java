package com.art.score.artscore.service;

import com.alibaba.fastjson.JSONObject;

import java.util.List;

public interface RoleService {
    List<JSONObject> getRolelist(JSONObject josn);
}
