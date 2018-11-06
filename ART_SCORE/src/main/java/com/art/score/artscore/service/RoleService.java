package com.art.score.artscore.service;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.vo.PageVo;
import com.art.score.artscore.vo.ResVo;

public interface RoleService {
    PageVo getRolelist(JSONObject josn);

    ResVo getRoleByID(Integer id);
}
