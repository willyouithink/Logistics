package com.uu.manager.service;

import com.uu.manager.pojo.po.TbAdmin;

/**
 * Created by aqiang on 2018/6/15.
 */
public interface LoginService {
    TbAdmin login(String name, String password);
}
