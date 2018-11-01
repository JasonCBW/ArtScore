package com.art.score.artscore.vo;

import com.art.score.artscore.enumvo.ResEnum;
import lombok.Data;

@Data
public class ResVo {

    private int code = ResEnum.getEnumByKey("suc").getValue();

    private String msg;

    private Object data;

    public ResVo() {

    }

    public ResVo(String code, String msg, Object data) {
        this.code =  ResEnum.getEnumByKey(code).getValue();
        this.msg = msg;
        this.data = data;
    }

    public ResVo(String code, String msg) {
        this.code =  ResEnum.getEnumByKey(code).getValue();
        this.msg = msg;
    }


}
