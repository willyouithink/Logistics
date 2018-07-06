package com.uu.search.pojo.vo;

/**
 * Created by aqiang on 2018/6/8.
 */
public class IndexImport {
//    `pid` VARCHAR(32) NOT NULL,
//    `pname` VARCHAR(50) DEFAULT NULL,
//    `market_price` DOUBLE DEFAULT NULL,
//    `shop_price` DOUBLE DEFAULT NULL,
//    `pimage` VARCHAR(200) DEFAULT NULL,
//    `pdate` DATE DEFAULT NULL,
//    `is_hot` INT(11) DEFAULT NULL,
//    `pdesc` VARCHAR(255) DEFAULT NULL,
//    `pflag` INT(11) DEFAULT NULL,
//    `cid` VARCHAR(32) DEFAULT NULL,
    private String id;
    private String pname;
    private double shop_price;
    private String pdesc;
    private String cname;
    private String pimage;

    public String getPimage() {
        return pimage;
    }

    public void setPimage(String pimage) {
        this.pimage = pimage;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setShop_price(double shop_price) {
        this.shop_price = shop_price;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public Double getShop_price() {
        return shop_price;
    }


    public String getPdesc() {
        return pdesc;
    }

    public void setPdesc(String pdesc) {
        this.pdesc = pdesc;
    }



}
