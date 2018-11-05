package com.art.score.artscore.controller;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.service.RoleService;
import com.art.score.artscore.vo.ResVo;
import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("role")
public class RoleController {

    @Autowired
    RoleService service;

    /**
     * 角色列表数据
     * */
    @RequestMapping("getlist")
    public JSONObject queryList(String userid){
        JSONObject params = new JSONObject();
        params.put("userid",userid);
        JSONObject aaa = service.getRolelist(params);
        return  aaa;
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
}
