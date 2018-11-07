package com.art.score.artscore.controller;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.service.RoleService;
import com.art.score.artscore.vo.PageVo;
import com.art.score.artscore.vo.ResVo;
import com.art.score.artscore.vo.Sys_Role;
import com.art.score.artscore.vo.Sys_module;
import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("role")
public class RoleApiController {

    @Autowired
    RoleService service;

    /**
     * 角色列表数据
     * */
    @RequestMapping("getlist")
    public PageVo queryList(String userid){
        JSONObject params = new JSONObject();
        params.put("userid",userid);
        PageVo vo = service.getRolelist(params);
        return  vo;
    }

    /**
     * 新增模块
     */
    @RequestMapping("save")
    public ResVo save(@RequestBody Sys_Role role) {
        return service.save(role);
    }

    /**
     * 更新模块
     */
    @RequestMapping("update")
    public ResVo update(@RequestBody Sys_Role role) {
        return service.update(role);
    }

    /**
     * 根据ID获取单个数据
     * */
    @RequestMapping("getById")
    public ResVo getByID(@RequestParam Integer id)
    {
        ResVo vo =service.getRoleByID(id);
        return vo;
    }

    /**
     * 角色列表数据
     * */
    @RequestMapping("delRoleById")
    public ResVo delRole(String ids)
    {
        return   service.deleteRoleByIds(ids);
    }

}
