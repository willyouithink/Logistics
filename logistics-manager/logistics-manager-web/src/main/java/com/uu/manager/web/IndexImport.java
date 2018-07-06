package com.uu.manager.web;

import com.uu.manager.pojo.ResultMsg;
import com.uu.manager.service.ImprotService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by aqiang on 2018/6/8.
 */
@Controller
public class IndexImport {

    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private ImprotService importService;

    //跳转
    @RequestMapping(value = "/indexImport/indexImport",method = RequestMethod.GET)
    public String index(){
        return "indexInport/indexImport";
    }


    @ResponseBody
    @RequestMapping(value = "/indexlib/import",method = RequestMethod.POST)
    public ResultMsg indexImport(){
        System.out.print("一键导入");
        ResultMsg msg = new ResultMsg();
        msg.setSuccess(false);
        msg.setMsg("filed");
        try {
            importService.indexImport();
            msg.setSuccess(true);
            msg.setMsg("import index success");
        }catch (Exception e){
            logger.error(e.getMessage(), e);
        }
        return msg;
    }



}
