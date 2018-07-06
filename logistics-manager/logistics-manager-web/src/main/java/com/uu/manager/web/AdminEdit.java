package com.uu.manager.web;

import ch.qos.logback.core.net.SyslogOutputStream;
import com.uu.manager.pojo.po.TbAdmin;
import com.uu.manager.pojo.po.TbRole;
import com.uu.manager.service.AdminService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by aqiang on 2018/5/30.
 */
@Controller
public class AdminEdit {

    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private AdminService adminService;


    @RequestMapping(value = "/adminEdit")
    public String adminEdit(Long aid , HttpServletRequest request){
        System.out.print(aid);
        List<TbRole> roleList = adminService.findRole();
        TbAdmin admin = adminService.adminEdit(aid);
        System.out.print("方法走过了");
        System.out.print(admin.getAname());
        request.setAttribute("admin",admin);
        request.setAttribute("role",admin.getRole());
        request.setAttribute("role1",roleList);
        return "admin/admin-edit";
    }

    @RequestMapping(value = "/adminSave")
    public String adminSave(TbAdmin tbAdmin){
        int i = 0;

       i = adminService.adminSave(tbAdmin);
        if (i>0){
            return "redirect:/admin/admin-list";
        }
        return "admin/admin-edit";
    }


}
