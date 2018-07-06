package com.uu.manager.pojo.po;

import java.util.Date;


public class User {

//    `uid` bigint(20) NOT NULL AUTO_INCREMENT,
//  `uname` varchar(255) DEFAULT NULL,
//  `ugender` varchar(255) DEFAULT NULL,
//  `uphone` varchar(255) DEFAULT NULL,
//  `uemail` varchar(255) DEFAULT NULL,
//  `uadress` varchar(255) DEFAULT NULL,
//  `uintime` datetime DEFAULT NULL,
//   urank` int(11) DEFAULT NULL,
//  `ustates` int(11) DEFAULT NULL,
//  `rid` int(11) DEFAULT NULL,
//    PRIMARY KEY (`uid`)

    private  Long uid;
    private  String uname;
    private  String ugender;
    private  String uphone;
    private  String uemail;
    private  String uadress;
    private Date uintime;
    private int  urank;
    private int  ustates;
    private Long  rid;

    public Long getUid() {
        return uid;
    }

    public void setUid(Long uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUgender() {
        return ugender;
    }

    public void setUgender(String ugender) {
        this.ugender = ugender;
    }

    public String getUphone() {
        return uphone;
    }

    public void setUphone(String uphone) {
        this.uphone = uphone;
    }

    public String getUemail() {
        return uemail;
    }

    public void setUemail(String uemail) {
        this.uemail = uemail;
    }

    public String getUadress() {
        return uadress;
    }

    public void setUadress(String uadress) {
        this.uadress = uadress;
    }

    public Date getUintime() {
        return uintime;
    }

    public void setUintime(Date uintime) {
        this.uintime = uintime;
    }

    public int getUrank() {
        return urank;
    }

    public void setUrank(int urank) {
        this.urank = urank;
    }

    public int getUstates() {
        return ustates;
    }

    public void setUstates(int ustates) {
        this.ustates = ustates;
    }

    public Long getRid() {
        return rid;
    }

    public void setRid(Long rid) {
        this.rid = rid;
    }



    @Override
    public String toString() {
        return "User{" +
                "uid=" + uid +
                ", uname='" + uname + '\'' +
                ", ugender='" + ugender + '\'' +
                ", uphone='" + uphone + '\'' +
                ", urank=" + urank +
                ", ustates=" + ustates +
                ", rid=" + rid +
                '}';
    }
}
