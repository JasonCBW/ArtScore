package com.art.score.artscore.service;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.vo.PageVo;
import com.art.score.artscore.vo.ResVo;
import com.art.score.artscore.vo.Sys_module;

import java.util.List;


public interface ModuleService {
    PageVo getModulelist();

    ResVo getModuleByID(Integer id);

    ResVo save(Sys_module module);

    ResVo update(Sys_module module);

    ResVo dels(String ids);

    List<JSONObject> getModuleTypes();
}
