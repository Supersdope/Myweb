package com.itheima.po;

public class Kind {
    private Integer id;
    private String kind_id;
    private String length;
    private String env;
    private String plantkind;
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPlantkind() {
        return plantkind;
    }

    public void setPlantkind(String plantkind) {
        this.plantkind = plantkind;
    }

    public String getLength() {
        return length;
    }

    public void setLength(String length) {
        this.length = length;
    }

    public String getEnv() {
        return env;
    }

    public void setEnv(String env) {
        this.env = env;
    }

    public String getKind_id() {
        return kind_id;
    }

    public void setKind_id(String kind_id) {
        this.kind_id = kind_id;
    }



}
