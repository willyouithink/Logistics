package com.uu.manager.web;

import com.uu.manager.pojo.vo.AdminAdd;
import com.uu.manager.service.AdminService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by aqiang on 2018/5/30.
 */

@Controller
public class adminAdd {

    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private AdminService adminService;


    @RequestMapping(value = "/aaaa",method = RequestMethod.GET)
    public String adminAdd(AdminAdd add){
    //System.out.print(add);
        int i = 0;
        try {



            
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
            System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
            add.setAtime(df.format(new Date()));
            i = adminService.adminAdd(add);

        }catch (Exception e){
            logger.error("添加失败");
        }
        return "redirect:/admin/admin-list";
    }
}
