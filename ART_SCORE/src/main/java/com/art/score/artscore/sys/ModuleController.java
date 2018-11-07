package com.art.score.artscore.sys;

import com.art.score.artscore.service.ModuleService;
import com.art.score.artscore.vo.ResVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class ModuleController {

    @Autowired
    ModuleService moduleservice;

    /**
     * 模块页面
     */
    @RequestMapping(value = "/module/index")
    public String module(Map<String, Object> map) {
        return "module/index";
    }

    /**
     * 新增页面
     */
    @RequestMapping(value = "/module_add")
    public String moduleAdd(Map<String, Object> map, Integer id) {
        map.put("types", moduleservice.getModuleTypes());
        return "module/module_add";
    }

    /**
     * 编辑页面
     */
    @RequestMapping(value = "/module_edit")
    public String moduleEdit(Map<String, Object> map, Integer id) {
        ResVo vo = moduleservice.getModuleByID(id);
        map.put("types", moduleservice.getModuleTypes());
        map.put("module", vo.getData());
        return "module/module_edit";
    }
}
