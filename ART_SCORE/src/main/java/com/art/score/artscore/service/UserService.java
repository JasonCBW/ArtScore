package com.art.score.artscore.service;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.vo.ResVo;
import com.art.score.artscore.vo.Sys_role;
import com.art.score.artscore.vo.Sys_user;

public interface UserService {
    JSONObject getUserlist();

    ResVo getUserByID(Integer id);

    ResVo save(Sys_user user);

    ResVo update(Sys_user user);

    ResVo deleteUserByIds(String ids);
}
