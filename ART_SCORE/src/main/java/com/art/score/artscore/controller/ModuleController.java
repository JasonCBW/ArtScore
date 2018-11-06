package com.art.score.artscore.controller;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.service.ModuleService;
import com.art.score.artscore.vo.PageVo;
import com.art.score.artscore.vo.ResVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("module")
public class ModuleController {

    @Autowired
    ModuleService service;

    /**
     * 模块列表数据
     * */
    @RequestMapping("getlist")
    public PageVo queryList(){
        PageVo vo = service.getModulelist();
        return  vo;
    }

    /**
     * 根据ID获取单个数据
     * */

    @RequestMapping("getById")
    public ResVo getByID(@RequestParam Integer id)
    {
        ResVo vo =service.getModuleByID(id);
        return vo;
    }
}
