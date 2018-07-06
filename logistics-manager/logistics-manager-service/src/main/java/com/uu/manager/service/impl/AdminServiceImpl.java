package com.uu.manager.service.impl;


import com.uu.manager.dao.AdminMapper;
import com.uu.manager.pojo.dto.AdminResult;
import com.uu.manager.pojo.dto.Page;
import com.uu.manager.pojo.po.Lunbo;
import com.uu.manager.pojo.po.TbAdmin;
import com.uu.manager.pojo.po.TbAdminLeave;
import com.uu.manager.pojo.po.TbRole;
import com.uu.manager.pojo.vo.AdminAdd;
import com.uu.manager.pojo.vo.AdminQuery;
import com.uu.manager.service.AdminService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * Created by aqiang on 2018/5/25.
 */
@Service
public class AdminServiceImpl implements AdminService {

             private Logger logger = LoggerFactory.getLogger(this.getClass());
            @Autowired
            private AdminMapper adminDao;


            @Override
            public AdminResult<TbAdminLeave> adminList(Page page,AdminQuery query) {

                AdminResult<TbAdminLeave> list = new AdminResult<TbAdminLeave>();
                list.setMsg("select success");
                list.setCode(0);
                //创建一个map,封装所有的参数
                Map<String, Object> map = new HashMap<String, Object>();
                map.put("page", page);
                map.put("query", query);
                try {
                    long count = adminDao.countItems(map);
                    List<TbAdminLeave> List = adminDao.adminList(map);
            list.setCount(count);
            list.setData(List);
        } catch (Exception e) {
            list.setMsg("select failed");
            list.setCode(1);
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return list;
    }



    /**
     * 删除管理员
     * @param ids
     * @return
     */
    @Override
    public int updateStates(List<Long> ids) {
        return adminDao.updateStates(ids);
    }

    //添加管理员
    @Override
    public int adminAdd(AdminAdd add) {
        return adminDao.adminAdd(add);
    }

//    编辑行
    @Override
    public TbAdmin adminEdit(Long aid) {
        return adminDao.adminEdit(aid);
    }

//    查找等级放入域对象
    @Override
    public List<TbRole> findRole() {
        return adminDao.findRole();
    }

    @Override
    public int adminSave(TbAdmin tbAdmin) {
        return adminDao.adminSave(tbAdmin);
    }

//    查询stauts的值
    @Override
    public TbAdmin showState(Long aid) {
        return adminDao.showState(aid);
    }

//    切换管理员状态
    @Override
    public void updateRole(TbAdmin tbAdmin) {
        adminDao.updateRole(tbAdmin);
    }

    @Override
    public int uploadSave(Lunbo l) {

        return adminDao.uploadSave(l);
    }
}
