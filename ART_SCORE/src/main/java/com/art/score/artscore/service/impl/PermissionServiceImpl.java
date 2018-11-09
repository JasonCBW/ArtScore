package com.art.score.artscore.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.mapper.PermissionMapper;
import com.art.score.artscore.service.PermissionService;
import com.art.score.artscore.vo.PowerVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class PermissionServiceImpl  implements PermissionService {

    @Autowired
    PermissionMapper permissionMapper;

    @Override
    public String getRoleByUserId(String userid) {
        String obj = permissionMapper.queryRoleByUserId(userid);
        return obj;
    }

    @Override
    public String getModuleByRoles(String roles) {
        String obj = permissionMapper.queryModuleByRoles(roles);
        return obj;
    }

    @Override
    public List<PowerVo> getPowerByModules(String modules)
    {
        List<PowerVo> obj =permissionMapper.queryPowerByModules(modules);
        return obj;
    }
}
