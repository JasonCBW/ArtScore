package com.art.score.artscore.mapper.impl;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.mapper.LoginMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;
import com.art.score.artscore.model.*;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Service
public class LoginMapperlmpl implements LoginMapper {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    /**
     * 用户登录验证
     * */
    public sys_user loginValidata(String account, String pwd) {
        String sql = "select * from sys_user where logincode=? and pwd='e10adc3949ba59abbe56e057f20f883e'";
        Object[] params = new Object[]{account};
        sys_user user = (sys_user) jdbcTemplate.query(sql, params, new UserRowMapper());

        return user;
    }

    public class UserRowMapper implements RowMapper<sys_user> {
        @Override
        public sys_user mapRow(ResultSet rs, int rowNum) throws SQLException {
            sys_user user = new sys_user();
            user.setId(rs.getInt("id"));
            user.setUsername(rs.getString("username"));
            user.setPwd(rs.getString("pwd"));
            return user;
        }

    }
}
