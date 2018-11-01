package com.art.score.artscore.enumvo;


public enum ResEnum {

    SUC("suc", 200), ERROR("error", 201), CURD("curd", 203);
    private final String key;
    private final int value;

    private ResEnum(String key, int value) {
        this.key = key;
        this.value = value;
    }

    public String getKey() {
        return key;
    }
    public int getValue() {
        return value;
    }

    //根据key获取枚举
    public static ResEnum getEnumByKey(String key){
        if(null == key){
            return null;
        }
        for(ResEnum temp:ResEnum.values()){
            if(temp.getKey().equals(key)){
                return temp;
            }
        }
        return null;
    }
}
