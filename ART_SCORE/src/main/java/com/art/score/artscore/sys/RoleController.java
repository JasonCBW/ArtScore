package com.art.score.artscore.sys;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.service.RoleService;
import com.art.score.artscore.vo.PowerVo;
import com.art.score.artscore.vo.ResVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import static java.util.stream.Collectors.groupingBy;

@Controller
public class RoleController {

    @Autowired
    RoleService roleService;

    /**
     * 模块页面
     */
    @RequestMapping(value = "/role/index")
    public String role(Map<String, Object> map) {
        return "role/index";
    }

    /**
     * 新增页面
     */
    @RequestMapping(value = "/role_add")
    public String roleAdd(Map<String, Object> map)
    {
        List<PowerVo> list = roleService.queryRolesForSelect();
        Map<String, List<PowerVo>> data = list.stream().collect(groupingBy(PowerVo::getParentname));
        map.put("rs", data);
        return "role/role_add";
    }

    /**
     * 编辑页面
     */
    @RequestMapping(value = "/role_edit")
    public String roleEdit(Map<String, Object> map, Integer id)
    {
        List<PowerVo> list = roleService.queryRolesForSelect();
        Map<String, List<PowerVo>> data = list.stream().collect(groupingBy(PowerVo::getParentname));
        map.put("rs", data);
        map.put("role", roleService.getRoleByID(id).getData());
        return "role/role_edit";
    }
}
