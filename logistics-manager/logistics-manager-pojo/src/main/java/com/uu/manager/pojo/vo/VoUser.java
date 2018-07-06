package com.uu.manager.pojo.vo;

import com.uu.manager.pojo.po.User;

/**
 * User: Administrator
 * Date: 18/5/27
 * Time: 15:31
 * Version:V1.0
 */
public class VoUser extends User {
    private  String rname;
    private  String statusName;

    public String getStatusName() {
        return statusName;
    }

    public void setStatusName(String statusName) {
        this.statusName = statusName;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }
}
