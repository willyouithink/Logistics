package com.uu.manager.pojo.dto;

/**
 * Created by aqiang on 2018/5/25.
 */
public class Page {
    private long page;
    private long limit;


    public long getPage() {
        return page;
    }

    public void setPage(long page) {
        this.page = page;
    }

    public long getLimit() {
        return limit;
    }

    public void setLimit(long limit) {
        this.limit = limit;
    }

    //自动获取偏移量
    public int getOffset() {
        return (int) ((page - 1) * limit);
    }
}
