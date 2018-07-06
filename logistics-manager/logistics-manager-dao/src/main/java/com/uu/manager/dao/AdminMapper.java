package com.uu.manager.dao;

import com.uu.manager.pojo.dto.AdminResult;
import com.uu.manager.pojo.dto.Page;
import com.uu.manager.pojo.po.Lunbo;
import com.uu.manager.pojo.po.TbAdmin;
import com.uu.manager.pojo.po.TbAdminLeave;
import com.uu.manager.pojo.po.TbRole;
import com.uu.manager.pojo.vo.AdminAdd;
import com.uu.manager.pojo.vo.AdminQuery;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

/**
 * Created by aqiang on 2018/5/25.
 */
public interface AdminMapper {
    long countItems(Map<String,Object> map);

    List<TbAdminLeave> adminList(Map<String,Object> map);

    int updateStates(List<Long> ids);

    int adminAdd(AdminAdd add);

    TbAdmin adminEdit(Long aid);

//    查找等级集合  放入域对象
    List<TbRole> findRole();

    //编辑保存
    int adminSave(TbAdmin tbAdmin);

//    查询role的值
    TbAdmin showState(Long aid);

//    切换管理员状态
    void updateRole(TbAdmin tbAdmin);

    int uploadSave(Lunbo l);
}
