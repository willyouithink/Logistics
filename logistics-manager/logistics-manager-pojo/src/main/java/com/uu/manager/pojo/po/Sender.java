package com.uu.manager.pojo.po;

/**
 * User: ZGH
 * Date: 2018/5/26
 * Time: 19:20
 * Version:V1.0
 */
public class Sender {
//    `sid` BIGINT(20) NOT NULL AUTO_INCREMENT,
//    `sname` VARCHAR(50) DEFAULT NULL,
//    `saddress` VARCHAR(200) DEFAULT NULL,
//    `weight` VARCHAR(50) DEFAULT NULL,
//    `smoney` DOUBLE DEFAULT NULL,
//            `stime` VARCHAR(50) DEFAULT NULL COMMENT '寄件时间',
//            `state` INT(11) DEFAULT NULL COMMENT '0表示出仓-1表示未出仓2表示删除',
//            `cid` BIGINT(20) DEFAULT NULL,
    private Long sid;
    private String sname;
    private String province;
    private String city;
    private String county;
    private String saddress;
    private String weight;
    private Double smoney;
    private String stime;
    private int state;
    private Long cid;

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCounty() {
        return county;
    }

    public void setCounty(String county) {
        this.county = county;
    }

    public Long getSid() {
        return sid;
    }

    public void setSid(Long sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getSaddress() {
        return saddress;
    }

    public void setSaddress(String saddress) {
        this.saddress = saddress;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public Double getSmoney() {
        return smoney;
    }

    public void setSmoney(Double smoney) {
        this.smoney = smoney;
    }

    public String getStime() {
        return stime;
    }

    public void setStime(String stime) {
        this.stime = stime;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public Long getCid() {
        return cid;
    }

    public void setCid(Long cid) {
        this.cid = cid;
    }
}
