package com.art.score.artscore.controller;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.service.PermissionService;
import com.art.score.artscore.vo.ResVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping("permission")
public class PermissionController {

    @Value("${login_info}")
    private String sessionName;

    @Autowired
    PermissionService service;

    /**
     * 模块列表数据
     */
    @RequestMapping("getpower")
    public ResVo queryPower(HttpServletRequest httpServletRequest) {
        String userid = "1";
//        HttpSession session = httpServletRequest.getSession();
//        Sys_user user = (Sys_user) session.getAttribute(sessionName);
        List<JSONObject> obj = null;
//        if (user != null) {
        String roles = service.getRoleByUserId(userid);

        String modules = service.getModuleByRoles(roles);

        obj = service.getPowerByModules(modules);
//        }

        return new ResVo("suc", "", obj);
    }
}
