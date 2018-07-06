package com.uu.manager.service;

import com.uu.manager.pojo.dto.AdminResult;
import com.uu.manager.pojo.dto.Page;
import com.uu.manager.pojo.po.Lunbo;
import com.uu.manager.pojo.po.TbAdmin;
import com.uu.manager.pojo.po.TbAdminLeave;
import com.uu.manager.pojo.po.TbRole;
import com.uu.manager.pojo.vo.AdminAdd;
import com.uu.manager.pojo.vo.AdminQuery;

import java.util.List;
import java.util.Map;

/**
 * Created by aqiang on 2018/5/25.
 */
public interface AdminService {

    AdminResult<TbAdminLeave> adminList(Page page,AdminQuery query);

    int updateStates(List<Long> ids);

    int adminAdd(AdminAdd add);

    TbAdmin adminEdit(Long aid);
//查找等级选项放入域对象
    List<TbRole> findRole();

    //编辑保存
    int adminSave(TbAdmin tbAdmin);

//    查询role的值
    TbAdmin showState(Long aid);
//切换管理员级别
    void updateRole(TbAdmin tbAdmin);

    int uploadSave(Lunbo l);
}
