package com.art.score.artscore.vo;

import lombok.Data;

import java.util.Date;

@Data
public class Sys_user {

    private String id;

    private String name;

    private String logincode;

    private String pwd;

    private String status;

    private String roleid;

    private Date createtime;

    private Date lastlogintime;
}
