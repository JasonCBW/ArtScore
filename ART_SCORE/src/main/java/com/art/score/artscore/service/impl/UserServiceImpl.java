package com.art.score.artscore.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.mapper.RoleMapper;
import com.art.score.artscore.mapper.UserMapper;
import com.art.score.artscore.service.UserService;
import com.art.score.artscore.vo.ResVo;
import com.art.score.artscore.vo.Sys_role;
import com.art.score.artscore.vo.Sys_user;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    @Override
    public JSONObject getUserlist() {
        JSONObject obj=new JSONObject();
        List<JSONObject> data=userMapper.queryList();
        obj.put("code",0);
        obj.put("msg","");
        obj.put("count",data.size());
        obj.put("data",data);
        return obj;
    }

    @Override
    public ResVo getUserByID(Integer id)
    {
        JSONObject obj=userMapper.queryByID(id);
        return new ResVo("suc", "操作成功",obj);
    }

    @Override
    public ResVo save(Sys_user user)
    {
        boolean flag = userMapper.save(user);
        return new ResVo(flag ? "suc" : "error", flag ? "操作成功" : "操作失败");
    }

    @Override
    public ResVo update(Sys_user user) {
        boolean flag = userMapper.update(user);
        return new ResVo(flag ? "suc" : "error", flag ? "操作成功" : "操作失败");
    }

    @Override
    public ResVo deleteUserByIds(String ids) {
        boolean flag = userMapper.deleteUserByIds(ids);
        return new ResVo(flag ? "suc" : "error", flag ? "操作成功" : "操作失败");
    }
}
