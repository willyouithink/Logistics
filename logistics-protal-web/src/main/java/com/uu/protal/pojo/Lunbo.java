package com.uu.protal.pojo;

/**
 * Created by aqiang on 2018/6/4.
 */
public class Lunbo {
//    lid` BIGINT(20) NOT NULL AUTO_INCREMENT,
//    `iid` BIGINT(225) DEFAULT NULL,
//    `img` VARCHAR(225) DEFAULT NULL,
    private Long lid;
    private Long iid;
    private String img;

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Long getIid() {
        return iid;
    }

    public void setIid(Long iid) {
        this.iid = iid;
    }

    public Long getLid() {
        return lid;
    }

    public void setLid(Long lid) {
        this.lid = lid;
    }
}
