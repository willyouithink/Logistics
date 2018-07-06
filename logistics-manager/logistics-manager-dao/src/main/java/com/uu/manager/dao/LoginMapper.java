package com.uu.manager.dao;

import com.uu.manager.pojo.po.TbAdmin;
import org.apache.ibatis.annotations.Param;

/**
 * Created by aqiang on 2018/6/15.
 */
public interface LoginMapper {

    TbAdmin login(@Param("aname") String name, @Param("apassword")String password);
}
