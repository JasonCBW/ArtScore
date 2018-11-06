package com.art.score.artscore.service;

import com.art.score.artscore.vo.PageVo;
import com.art.score.artscore.vo.ResVo;
import com.art.score.artscore.vo.Sys_module;


public interface ModuleService {
    PageVo getModulelist();

    ResVo getModuleByID(Integer id);

    ResVo save(Sys_module module);

    ResVo update(Sys_module module);

    ResVo dels(String ids);
}
