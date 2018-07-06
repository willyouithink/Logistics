package com.uu.manager.service.impl;

import com.uu.manager.dao.LoginMapper;
import com.uu.manager.pojo.po.TbAdmin;
import com.uu.manager.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by aqiang on 2018/6/15.
 */
@Service
public class LoginServiceImpl implements LoginService{

    @Autowired
    private LoginMapper loginDao;

    @Override
    public TbAdmin login(String name, String password) {
        return loginDao.login(name,password);
    }
}
