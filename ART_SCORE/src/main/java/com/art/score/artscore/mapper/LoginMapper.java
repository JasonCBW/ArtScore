package com.art.score.artscore.mapper;

import com.art.score.artscore.vo.Sys_user;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
@Mapper
public interface LoginMapper {
    /**
     * 登录验证
     */
    Sys_user loginValidata(@Param("logincode") String account, @Param("pwd") String pwd);
}
