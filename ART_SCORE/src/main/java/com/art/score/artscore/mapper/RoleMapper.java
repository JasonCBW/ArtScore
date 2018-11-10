package com.art.score.artscore.mapper;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.vo.PowerVo;
import com.art.score.artscore.vo.Sys_role;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RoleMapper {

    List<JSONObject> queryList();

    JSONObject queryByID(Integer id);

    boolean save(Sys_role role);

    boolean update(Sys_role role);

    boolean deleteRoleByIds(@Param("ids") String ids);

    List<PowerVo> queryRolesForSelect();
}
