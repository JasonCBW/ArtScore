package com.art.score.artscore.controller;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.service.PermissionService;
import com.art.score.artscore.vo.PowerVo;
import com.art.score.artscore.vo.ResVo;
import com.art.score.artscore.vo.Sys_user;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import static java.util.stream.Collectors.groupingBy;

@RestController
@RequestMapping("permission")
public class PermissionApiController {

    @Value("${login_info}")
    private String sessionName;

    @Autowired
    PermissionService service;

    /**
     * 左侧菜单数据
     */
    @RequestMapping("getpower")
    public ResVo queryPower(HttpServletRequest httpServletRequest) {
        HttpSession session = httpServletRequest.getSession();
        Sys_user user = (Sys_user) session.getAttribute(sessionName);
        List<JSONObject> list = new ArrayList<>();
        if (user != null) {
            String roles = service.getRoleByUserId(user.getId());

            String modules = service.getModuleByRoles(roles);

            List<PowerVo> obj = service.getPowerByModules(modules);

            Map<String, List<PowerVo>> map = obj.stream().collect(groupingBy(PowerVo::getParentname));

            map.forEach((k, v) -> {
                JSONObject json = new JSONObject();
                json.put("text", k);
                json.put("icon", "");
                json.put("subset", map.get(k));
                list.add(json);
            });
        }
        return new ResVo("suc", "", list);
    }
}
