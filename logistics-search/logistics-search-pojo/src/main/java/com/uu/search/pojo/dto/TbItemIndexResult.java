package com.uu.search.pojo.dto;

import com.uu.search.pojo.vo.IndexImport;

import java.util.List;

/**
 * Created by aqiang on 2018/6/9.
 */
public class TbItemIndexResult {
    //符合条件的总记录数
    private long recordCount;
    //总页数
    private long totalPages;
    //指定分页的集合
    private List<IndexImport> list;

    public long getRecordCount() {
        return recordCount;
    }

    public void setRecordCount(long recordCount) {
        this.recordCount = recordCount;
    }

    public long getTotalPages() {
        return totalPages;
    }

    public void setTotalPages(long totalPages) {
        this.totalPages = totalPages;
    }

    public List<IndexImport> getList() {
        return list;
    }

    public void setList(List<IndexImport> list) {
        this.list = list;
    }
}
