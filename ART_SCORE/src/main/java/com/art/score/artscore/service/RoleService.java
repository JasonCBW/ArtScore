package com.art.score.artscore.service;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.vo.PageVo;
import com.art.score.artscore.vo.ResVo;
import com.art.score.artscore.vo.Sys_role;

public interface RoleService {
    PageVo getRolelist(JSONObject josn);

    ResVo getRoleByID(Integer id);

    ResVo save(Sys_role role);

    ResVo update(Sys_role role);

    ResVo deleteRoleByIds(String ids);
}
