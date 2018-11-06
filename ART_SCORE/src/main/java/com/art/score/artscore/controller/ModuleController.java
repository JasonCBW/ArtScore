package com.art.score.artscore.controller;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.service.ModuleService;
import com.art.score.artscore.vo.PageVo;
import com.art.score.artscore.vo.ResVo;
import com.art.score.artscore.vo.Sys_module;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("module")
public class ModuleController {

    @Autowired
    ModuleService service;

    /**
     * 模块列表数据
     */
    @RequestMapping("getlist")
    public PageVo queryList() {
        PageVo vo = service.getModulelist();
        return vo;
    }

    /**
     * 新增模块
     */
    @RequestMapping("save")
    public ResVo save(@RequestBody Sys_module module) {
        return  service.save(module);
    }

    /**
     * 更新模块
     */
    @RequestMapping("update")
    public ResVo update(@RequestBody Sys_module module) {
        return service.update(module);
    }

    /**
     * 删除模块
     */
    @RequestMapping("delById")
    public ResVo del(String ids) {
        return service.dels(ids);
    }

    /**
     * 根据ID获取单个数据
     */
    @RequestMapping("getById")
    public ResVo getByID(@RequestParam Integer id) {
        ResVo vo = service.getModuleByID(id);
        return vo;
    }
}
