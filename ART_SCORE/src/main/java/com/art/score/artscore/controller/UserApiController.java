package com.art.score.artscore.controller;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.service.RoleService;
import com.art.score.artscore.service.UserService;
import com.art.score.artscore.vo.ResVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("user")
public class UserApiController {

    @Autowired
    UserService service;

    /**
     * 用户列表数据
     * */
    @RequestMapping("getlist")
    public JSONObject queryList(String userid){
        JSONObject params = new JSONObject();
        params.put("userid",userid);
        return  service.getUserlist(params);
    }

    /**
     * 根据ID获取单个数据
     * */

    @RequestMapping("getById")
    public ResVo getByID(@RequestParam Integer id)
    {
        ResVo vo =service.getUserByID(id);

        return vo;
    }
}
