package com.art.score.artscore.service;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.vo.ResVo;

import java.util.List;

public interface RoleService {
    JSONObject getRolelist(JSONObject josn);

    ResVo getRoleByID(Integer id);

    ResVo deleteRoleByIds(String ids);
}
