package com.uu.manager.pojo.vo;

import com.uu.manager.pojo.po.Sender;

/**
 * User: ZGH
 * Date: 2018/5/29
 * Time: 23:00
 * Version:V1.0
 */
public class SenderAdd extends Sender {
     private String province;
     private String city;
    private String county;

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
}
