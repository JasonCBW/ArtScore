package com.art.score.artscore.mapper;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.vo.Sys_module;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ModuleMapper {
    List<JSONObject> queryList();

    JSONObject queryByID(Integer id);

    boolean save(Sys_module module);

    boolean update(Sys_module module);

    boolean deleteByIds(@Param("ids") String ids);
}
