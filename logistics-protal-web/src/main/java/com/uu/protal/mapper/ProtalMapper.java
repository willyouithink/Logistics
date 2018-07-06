package com.uu.protal.mapper;

import com.uu.protal.pojo.Lunbo;

import java.util.List;

/**
 * Created by aqiang on 2018/6/4.
 */
public interface ProtalMapper {
    List<Lunbo>  showLunbo(Long iid);
}
