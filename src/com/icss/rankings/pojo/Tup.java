package com.icss.rankings.pojo;

public class Tup {
    private Integer tId;

    private String tName;

    private String tInfo;

    private String tBirthday;

    private String tImg;

    public Integer gettId() {
        return tId;
    }

    public void settId(Integer tId) {
        this.tId = tId;
    }

    public String gettName() {
        return tName;
    }

    public void settName(String tName) {
        this.tName = tName == null ? null : tName.trim();
    }

    public String gettInfo() {
        return tInfo;
    }

    public void settInfo(String tInfo) {
        this.tInfo = tInfo == null ? null : tInfo.trim();
    }

    public String gettBirthday() {
        return tBirthday;
    }

    public void settBirthday(String tBirthday) {
        this.tBirthday = tBirthday == null ? null : tBirthday.trim();
    }

    public String gettImg() {
        return tImg;
    }

    public void settImg(String tImg) {
        this.tImg = tImg == null ? null : tImg.trim();
    }
}