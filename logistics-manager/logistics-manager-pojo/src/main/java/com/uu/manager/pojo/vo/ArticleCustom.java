package com.uu.manager.pojo.vo;

import com.uu.manager.pojo.po.ArticleList;

/**
 * Created by Administrator on 2018/5/29 0029.
 */
public class ArticleCustom extends ArticleList {
    private String catName;
    private String statusName;

    public String getCatName() {
        return catName;
    }

    public void setCatName(String catName) {
        this.catName = catName;
    }

    public String getStatusName() {
        return statusName;
    }

    public void setStatusName(String statusName) {
        this.statusName = statusName;
    }
}

