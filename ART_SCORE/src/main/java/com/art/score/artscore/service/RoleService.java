package com.art.score.artscore.service;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.vo.PageVo;
import com.art.score.artscore.vo.ResVo;
import com.art.score.artscore.vo.Sys_Role;

public interface RoleService {
    PageVo getRolelist(JSONObject josn);

    ResVo getRoleByID(Integer id);

    ResVo save(Sys_Role role);

    ResVo update(Sys_Role role);

    ResVo deleteRoleByIds(String ids);
}
