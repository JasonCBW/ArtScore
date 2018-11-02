package com.art.score.artscore.service.impl;

import com.art.score.artscore.mapper.PermissionMapper;
import com.art.score.artscore.service.PermissionService;
import com.art.score.artscore.vo.ResVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class PermissionServiceImpl implements PermissionService {

    @Autowired
    PermissionMapper permissionMapper;

    @Override
    @Transactional(rollbackFor = Exception.class)
    public ResVo getPowerListByUserId(Integer userid) {
        return new ResVo("suc","操作成功",permissionMapper.queryPower(userid));
    }
}
