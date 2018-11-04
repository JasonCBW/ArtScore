package com.art.score.artscore.vo;

import lombok.Data;

import java.util.Date;

@Data
public class Sys_user {

    private Integer id;

    private String name;

    private String logincode;

    private String pwd;

    private Integer status;

    private String roleid;

    private Date createtime;

    private Date lastlogintime;
}
