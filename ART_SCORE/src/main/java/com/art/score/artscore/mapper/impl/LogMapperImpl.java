package com.art.score.artscore.mapper.impl;

import com.art.score.artscore.mapper.LogMapper;
import com.art.score.artscore.vo.LogVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class LogMapperImpl implements LogMapper {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public void saveLog(LogVo logVo) {
        String sql = "insert into log(user,userid,modular,token,params,method,className,createTime,param1,param2,param3,param4,param5) " +
                "values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
        jdbcTemplate.update(sql, new Object[]{logVo.getUser(), logVo.getUserId(),logVo.getModular(),logVo.getToken(), logVo.getParams(), logVo.getMethod(),
                logVo.getClassName(), logVo.getCreateTime(), logVo.getParam1(), logVo.getParam2(), logVo.getParam3(), logVo.getParam4(), logVo.getParam5(),
        });
    }
}
