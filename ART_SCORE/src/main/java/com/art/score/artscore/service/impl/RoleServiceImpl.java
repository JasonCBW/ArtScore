package com.art.score.artscore.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.mapper.RoleMapper;
import com.art.score.artscore.service.RoleService;
import com.art.score.artscore.vo.PageVo;
import com.art.score.artscore.vo.ResVo;
import com.art.score.artscore.vo.Sys_Role;
import com.art.score.artscore.vo.Sys_module;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    RoleMapper roleMapper;

    @Override
    public PageVo getRolelist(JSONObject json) {
        List<JSONObject> data=roleMapper.queryList(json);
        return new PageVo(0, "", 1000, data);
    }

    @Override
    public ResVo getRoleByID(Integer id)
    {
        JSONObject obj=roleMapper.queryByID(id);
        return new ResVo("suc", "操作成功",obj);
    }

    @Override
    public ResVo save(Sys_Role role) {
        boolean flag = roleMapper.save(role);
        return new ResVo(flag ? "suc" : "error", flag ? "操作成功" : "操作失败");
    }

    @Override
    public ResVo update(Sys_Role role) {
        boolean flag = roleMapper.save(role);
        return new ResVo(flag ? "suc" : "error", flag ? "操作成功" : "操作失败");
    }


    @Override
    public ResVo deleteRoleByIds(String ids) {
        boolean flag = roleMapper.deleteRoleByIds(ids);
        return new ResVo(flag ? "suc" : "error", flag ? "操作成功" : "操作失败");
    }
}
