package com.art.score.artscore.vo;

import lombok.Data;

import java.util.Date;

@Data
public class Sys_user {

    private Integer id;

    private String username;

    private String logincode;

    private String email;

    private String phone;

    private String pwd;

    private String roleid;

    private String specialpower;

    private Integer status;

    private Date createdate;

    private Date lastupdate;

    private Date lastlogin;

    private String remark;
}
