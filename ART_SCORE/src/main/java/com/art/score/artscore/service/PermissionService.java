package com.art.score.artscore.service;

import com.alibaba.fastjson.JSONObject;

import java.util.List;

public interface PermissionService {
    String getRoleByUserId(String userid);

    String getModuleByRoles(String roles);

    List<JSONObject> getPowerByModules(String modules);
}
