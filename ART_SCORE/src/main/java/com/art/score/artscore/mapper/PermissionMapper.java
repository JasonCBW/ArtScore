package com.art.score.artscore.mapper;

import com.alibaba.fastjson.JSONObject;

import java.util.List;

public interface PermissionMapper {

    /**
     *查询菜单权限列表
     * */
    List<JSONObject> queryPower(Integer userid);
}
