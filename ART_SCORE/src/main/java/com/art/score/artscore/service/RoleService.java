package com.art.score.artscore.service;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.vo.PageVo;
import com.art.score.artscore.vo.PowerVo;
import com.art.score.artscore.vo.ResVo;
import com.art.score.artscore.vo.Sys_role;

import java.util.List;

public interface RoleService {
    PageVo getRolelist(JSONObject josn);

    ResVo getRoleByID(Integer id);

    ResVo save(Sys_role role);

    ResVo update(Sys_role role);

    ResVo deleteRoleByIds(String ids);

    List<PowerVo> queryRolesForSelect();
}
