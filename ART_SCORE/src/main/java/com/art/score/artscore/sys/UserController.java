package com.art.score.artscore.sys;

import com.art.score.artscore.service.RoleService;
import com.art.score.artscore.service.UserService;
import com.art.score.artscore.vo.ResVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class UserController {

    @Autowired
    UserService userService;

    @Autowired
    RoleService roleService;

    /**
     * 用户页面
     */
    @RequestMapping(value = "/user/index")
    public String user(Map<String, Object> map) {
        return "user/index";
    }

    /**
     * 新增页面
     */
    @RequestMapping(value = "/user_add")
    public String userAdd(Map<String, Object> map)
    {
        map.put("roles",roleService.getRolelist().getData());
        return "user/user_add";
    }

    /**
     * 编辑页面
     */
    @RequestMapping(value = "/user_edit")
    public String userEdit(Map<String, Object> map, Integer id) {
        ResVo vo = userService.getUserByID(id);
        map.put("roles",roleService.getRolelist().getData());
        map.put("user", vo.getData());
        return "user/user_edit";
    }
}
