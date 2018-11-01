package com.art.score.artscore.service.impl;

import com.art.score.artscore.mapper.TestMapper;
import com.art.score.artscore.service.TestService;
import com.art.score.artscore.vo.ResVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class TestServiceImpl implements TestService {

    @Autowired
    TestMapper testMapper;

    @Override
    //注解回滚,默认回滚RuntimeException,要指定rollbackFor类型为Exception.class
    //如果无法回滚具体看帖子https://www.jianshu.com/p/380a9d980ca5
    @Transactional(rollbackFor = Exception.class)
    public ResVo getList() {
        return new ResVo("suc","操作成功",testMapper.queryTest());
    }
}
