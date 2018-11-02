package com.art.score.artscore.mapper.impl;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.mapper.PermissionMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Service
public class PermissionMapperImpl implements PermissionMapper {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    /**
     * 查询用户的菜单权限
     * */
    public List<JSONObject> queryPower(Integer userid) {
        //这个JDBC 查询的时候需要一个rowMapper  这个莫比东西,你就这样写 ,
        // 这个rowMpper 作用就是把 user_name 转换成你需要的
        String sql = "select * from sys_user where id=?";
        List<JSONObject> list = jdbcTemplate.query(sql, new Object[]{userid}, new RowMapper<JSONObject>() {
            @Override
            public JSONObject mapRow(ResultSet resultSet, int i) throws SQLException {
                JSONObject jsonObject = new JSONObject();
                //jsonObject.put("data",resultSet);
                jsonObject.put("1", resultSet.getString("username"));
                return jsonObject;
            }
        });
        return list;
    }
}
