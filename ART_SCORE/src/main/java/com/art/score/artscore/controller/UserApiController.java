package com.art.score.artscore.controller;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.service.UserService;
import com.art.score.artscore.vo.ResVo;
import com.art.score.artscore.vo.Sys_user;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
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
    public JSONObject queryList(){
        return  service.getUserlist();
    }

    /**
     * 新增
     */
    @RequestMapping("save")
    public ResVo save(@RequestBody Sys_user user)
    {
        return service.save(user);
    }

    /**
     * 更新
     */
    @RequestMapping("update")
    public ResVo update(@RequestBody Sys_user user)
    {
        return service.update(user);
    }

    /**
     * 删除角色
     */
    @RequestMapping("delUserById")
    public ResVo delUser(String ids) {
        return service.deleteUserByIds(ids);
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
