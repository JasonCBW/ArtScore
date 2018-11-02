package com.art.score.artscore.mapper.impl;

import com.alibaba.fastjson.JSONObject;
import com.art.score.artscore.mapper.TestMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Service
public class TstMapperImpl implements TestMapper {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public List<JSONObject> queryTest() {
        //这个JDBC 查询的时候需要一个rowMapper  这个莫比东西,你就这样写 ,
        // 这个rowMpper 作用就是把 user_name 转换成你需要的
        String sql = "select * from users";
        List<JSONObject> list =  jdbcTemplate.query(sql, new RowMapper<JSONObject>() {
            @Override
            public JSONObject mapRow(ResultSet resultSet, int i) throws SQLException {
                JSONObject jsonObject = new JSONObject();
                jsonObject.put("1",resultSet.getString("name"));
                return jsonObject;
            }
        });
        return list;
    }
}
