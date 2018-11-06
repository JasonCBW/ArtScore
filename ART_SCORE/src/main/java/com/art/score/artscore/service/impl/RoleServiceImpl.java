package com.art.score.artscore.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.mapper.RoleMapper;
import com.art.score.artscore.service.RoleService;
import com.art.score.artscore.vo.ResVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    RoleMapper roleMapper;

    @Override
    public JSONObject getRolelist(JSONObject json) {
        JSONObject obj=new JSONObject();
        List<JSONObject> data=roleMapper.queryList(json);
        obj.put("code",0);
        obj.put("msg","");
        obj.put("count",data.size());
        obj.put("data",data);
        return obj;
    }

    @Override
    public ResVo getRoleByID(Integer id)
    {
        JSONObject obj=roleMapper.queryByID(id);
        return new ResVo("suc", "操作成功",obj);
    }

    @Override
    public ResVo deleteRoleByIds(String ids) {
        if (roleMapper.deleteRoleByIds(ids))
        return new ResVo("suc", "删除成功");
        return new ResVo("curd", "删除失败");
    }
}
