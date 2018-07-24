package com.icss.rankings.pojo;

public class Reporter {
    private Integer rId;

    private String rName;

    private String rInfo;

    private String rBirthday;

    private String rImg;

    public Integer getrId() {
        return rId;
    }

    public void setrId(Integer rId) {
        this.rId = rId;
    }

    public String getrName() {
        return rName;
    }

    public void setrName(String rName) {
        this.rName = rName == null ? null : rName.trim();
    }

    public String getrInfo() {
        return rInfo;
    }

    public void setrInfo(String rInfo) {
        this.rInfo = rInfo == null ? null : rInfo.trim();
    }

    public String getrBirthday() {
        return rBirthday;
    }

    public void setrBirthday(String rBirthday) {
        this.rBirthday = rBirthday == null ? null : rBirthday.trim();
    }

    public String getrImg() {
        return rImg;
    }

    public void setrImg(String rImg) {
        this.rImg = rImg == null ? null : rImg.trim();
    }
}