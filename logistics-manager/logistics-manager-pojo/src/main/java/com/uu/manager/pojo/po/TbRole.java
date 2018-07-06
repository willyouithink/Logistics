package com.uu.manager.pojo.po;

/**
 * Created by aqiang on 2018/5/26.
 */
public class TbRole {
//    `role` BIGINT(20) NOT NULL AUTO_INCREMENT,
//    `leave` VARCHAR(32) DEFAULT NULL,
    private Long role;
    private String leave;

    public Long getRole() {
        return role;
    }

    public void setRole(Long role) {
        this.role = role;
    }

    public String getLeave() {
        return leave;
    }

    public void setLeave(String leave) {
        this.leave = leave;
    }
}
