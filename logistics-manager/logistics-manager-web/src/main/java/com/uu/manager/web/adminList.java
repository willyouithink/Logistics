package com.uu.manager.web;


import com.uu.manager.pojo.dto.AdminResult;
import com.uu.manager.pojo.dto.Page;
import com.uu.manager.pojo.po.Lunbo;
import com.uu.manager.pojo.po.TbAdmin;
import com.uu.manager.pojo.po.TbAdminLeave;
import com.uu.manager.pojo.vo.AdminQuery;
import com.uu.manager.service.AdminService;
import com.uu.manager.utils.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

/**
 * Created by aqiang on 2018/5/25.
 */
@Controller
public class adminList {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private AdminService adminService;

    @RequestMapping(value ="/admin-list", method = RequestMethod.GET)
    @ResponseBody
    public AdminResult<TbAdminLeave> adminList(Page page,AdminQuery query){
        //System.out.print(query.getAname());
        AdminResult<TbAdminLeave> list = null;
        try {
            list = adminService.adminList(page,query);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
        }
        return list;
    }

    /**
     * 删除管理员
     * @param ids
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/updateStates/batch",method = RequestMethod.POST)
    public int deleteAdmin(@RequestParam("ids[]")List<Long> ids){
    System.out.print(ids);
        int a = 0;
    try{
           a = adminService.updateStates(ids);
    }catch (Exception e){
        logger.error(e.getMessage(),e);
    }
        return a;
    }

//    切换员工状态

    @RequestMapping(value = "/updateStates/role",method = RequestMethod.POST)
    public String updateStates(Long aid){

        TbAdmin tbAdmin1 = adminService.showState(aid);
        System.out.print("开始查status");

        int status = tbAdmin1.getStatus();
        System.out.print(status);
        if (status==1){
            System.out.print("状态为1");
            TbAdmin tbAdmin = new TbAdmin();
            tbAdmin.setAid(aid);
            tbAdmin.setStatus(2);

            adminService.updateRole(tbAdmin);
        }else {
            System.out.print("状态为2");
            TbAdmin tbAdmin = new TbAdmin();
            tbAdmin.setAid(aid);
            tbAdmin.setStatus(1);
            adminService.updateRole(tbAdmin);
        }
        return "admin/admin-list";
    }


    @ResponseBody
    @RequestMapping(value = "/uploadImage/bb",method = RequestMethod.POST)
    public String uploadImage(@RequestParam MultipartFile file,HttpSession session) throws IOException {
        String jsonString = "";
        Map<String, Object> map = new HashMap<>();
        try {
            System.out.print("上传图片");

            //初始化实体类
            FastDFSFile fastDFSFile = new FastDFSFile(file.getBytes(), file.getOriginalFilename(), file.getSize());
            //调用工具类的上传图片的方法
            String filePath = FastDFSUtils.uploadFile(fastDFSFile);
            System.out.print(filePath);
            //执行到这一步，如果filePath不为空，就说明上传成功
            //读取配置文件
            String basePath = PropKit.use("fdfs_client.conf").get("fdfs_server");
            System.out.print(basePath);
            //说明返回的路径不为空
            if (StrKit.notBlank(filePath)) {
                //上传成功
                map.put("code", 0);
                map.put("msg", "success");
                Map<String, Object> dataMap = new HashMap<String, Object>();
                dataMap.put("src", basePath + "/" + filePath);
                map.put("data", dataMap);
                session.setAttribute("tupian",basePath + "/" + filePath);
            } else {
                map.put("code", 1);
                map.put("msg", "fail");
                Map<String, Object> dataMap = new HashMap<String, Object>();
                dataMap.put("src", "");
                map.put("data", dataMap);
            }
        }catch (Exception e) {
            logger.error(e.getMessage(), e);
        }
        jsonString = JsonUtils.objectToJson(map);
        return jsonString;
    }



    @RequestMapping(value = "/uploadSave/bb",method = RequestMethod.GET)
    public String uploadSave(HttpSession session){

       String tupian = (String) session.getAttribute("tupian");
        //System.out.print(tupian.toString());
        Lunbo l = new Lunbo();
        l.setIid(1L);
        l.setImg(tupian);
        int r = adminService.uploadSave(l);

        return "admin/admin-list";
    }

}
