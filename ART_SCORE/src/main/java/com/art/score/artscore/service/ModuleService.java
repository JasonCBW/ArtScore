package com.art.score.artscore.service;

import com.art.score.artscore.vo.PageVo;
import com.art.score.artscore.vo.ResVo;


public interface ModuleService {
    PageVo getModulelist();

    ResVo getModuleByID(Integer id);
}
