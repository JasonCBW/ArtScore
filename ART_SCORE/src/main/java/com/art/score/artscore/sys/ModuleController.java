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
     * */
    @RequestMapping(value = "/module")
    public String module(Map<String, Object> map){
        ResVo vo =moduleservice.getModuleTypes();
        map.put("data", vo.getData());
        return "module";
    }
}
