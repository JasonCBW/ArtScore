package com.art.score.artscore.mapper;

import com.art.score.artscore.vo.PowerVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PermissionMapper {

    String queryRoleByUserId(@Param("userid") String userid);

    String queryModuleByRoles(@Param("roles") String roles);

    List<PowerVo> queryPowerByModules(@Param("modules") String modules);
}
