package com.art.score.artscore.mapper;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.vo.PowerVo;
import com.art.score.artscore.vo.Sys_role;
import com.art.score.artscore.vo.Sys_user;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {

    List<JSONObject> queryList();

    JSONObject queryByID(Integer id);

    boolean save(Sys_user user);

    boolean update(Sys_user user);

    boolean deleteUserByIds(@Param("ids") String ids);
}
