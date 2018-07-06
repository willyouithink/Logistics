package com.uu.protal.service;


import com.uu.protal.pojo.TbItemIndexResult;

/**
 * Created by aqiang on 2018/6/9.
 */
public interface SearchIndexService {
    TbItemIndexResult searchIndex(String keyword, int pageIndex, int pageSize);
}
