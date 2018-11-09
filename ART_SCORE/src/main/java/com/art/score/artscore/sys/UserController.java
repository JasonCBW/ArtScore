package com.art.score.artscore.sys;

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

    /**
     * 模块页面
     */
    @RequestMapping(value = "/user/index")
    public String role(Map<String, Object> map) {
        return "user/index";
    }

    /**
     * 新增页面
     */
    @RequestMapping(value = "/user_add")
    public String roleAdd(Map<String, Object> map, Integer id) {
        return "user/user_add";
    }

    /**
     * 编辑页面
     */
    @RequestMapping(value = "/user_edit")
    public String roleEdit(Map<String, Object> map, Integer id) {
        ResVo vo = userService.getUserByID(id);
        map.put("user", vo.getData());
        return "user/user_edit";
    }
}
