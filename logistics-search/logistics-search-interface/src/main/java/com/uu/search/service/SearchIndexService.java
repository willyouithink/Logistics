package com.uu.search.service;

import com.uu.search.pojo.dto.TbItemIndexResult;

/**
 * Created by aqiang on 2018/6/9.
 */
public interface SearchIndexService {
    TbItemIndexResult searchIndex(String keyword, int pageIndex, int pageSize);
}
