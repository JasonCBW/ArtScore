package com.art.score.artscore.service;

import com.art.score.artscore.vo.PowerVo;

import java.util.List;

public interface PermissionService {
    String getRoleByUserId(String userid);

    String getModuleByRoles(String roles);

    List<PowerVo> getPowerByModules(String modules);
}
