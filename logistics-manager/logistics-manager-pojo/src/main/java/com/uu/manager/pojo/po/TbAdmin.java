package com.uu.manager.pojo.po;

/**
 * Created by aqiang on 2018/5/25.
 */
public class TbAdmin {
//    `aid` BIGINT(20) NOT NULL AUTO_INCREMENT,
//    `aname` VARCHAR(32) DEFAULT NULL,
//    `apassword` VARCHAR(32) DEFAULT NULL,
//    `aphone` VARCHAR(11) DEFAULT NULL,
//    `aemail` VARCHAR(32) DEFAULT NULL,
//    `role` INT(1) DEFAULT NULL,
//    `atime` VARCHAR(32) DEFAULT NULL,
//    `status` INT(1) DEFAULT NULL,

    private Long aid;
    private String  aname;
    private String apassword;
    private String aphone;
    private String aemail;
    private int role;
    private String atime;
    private int status;

    public Long getAid() {
        return aid;
    }

    public void setAid(Long aid) {
        this.aid = aid;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getApassword() {
        return apassword;
    }

    public void setApassword(String apassword) {
        this.apassword = apassword;
    }

    public String getAphone() {
        return aphone;
    }

    public void setAphone(String aphone) {
        this.aphone = aphone;
    }

    public String getAemail() {
        return aemail;
    }

    public void setAemail(String aemail) {
        this.aemail = aemail;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public String getAtime() {
        return atime;
    }

    public void setAtime(String atime) {
        this.atime = atime;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
