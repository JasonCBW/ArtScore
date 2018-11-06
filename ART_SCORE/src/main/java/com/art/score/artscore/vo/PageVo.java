package com.art.score.artscore.vo;

import lombok.Data;

@Data
public class PageVo {

    private int code;

    private int count;

    private String msg;

    private Object data;

    public PageVo() {

    }

    public PageVo(Integer code, String msg, Integer count, Object data) {
        this.code = code;
        this.msg = msg;
        this.count = count;
        this.data = data;
    }
}
