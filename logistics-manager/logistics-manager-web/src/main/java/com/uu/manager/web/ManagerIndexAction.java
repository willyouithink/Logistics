package com.uu.manager.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by aqiang on 2018/5/24.
 */
@Controller
public class ManagerIndexAction {

    @RequestMapping(value = "/{page}",method = RequestMethod.GET)
    public String index1(@PathVariable String page){
        return page;
    }

    @RequestMapping(value = "/admin/{pageName1}",method = RequestMethod.GET)
    public String index2(@PathVariable String pageName1){
        return "admin/"+pageName1;
    }


    @RequestMapping(value = "/admin/{pageName1}/{pageName2}",method = RequestMethod.GET)
    public String index3(@PathVariable String pageName1,@PathVariable String pageName2){
        return "admin/"+pageName1+"/"+pageName2;
    }



    //   ./pages/welcome      /WEB-INF/jsp/pages/welcome.jsp
    @RequestMapping(value = "/order/{pageName1}", method = RequestMethod.GET)
    public String index5(@PathVariable String pageName1) {
        return "order/" + pageName1;
    }

    //  ./pages/item/list     /WEB-INF/jsp/ pages/item/list  .jsp
    @RequestMapping(value = "/order/{pageName1}/{pageName2}", method = RequestMethod.GET)
    public String index6(@PathVariable String pageName1, @PathVariable String pageName2) {
        return "order/" + pageName1 + "/" + pageName2;
    }


    @RequestMapping("/{path}/{path2}")
    //@PathVariable 获得请求的路径
    public String viewTwo(@PathVariable String path , @PathVariable String path2) {
       // System.out.println("路径到了:"+path+"/"+path2);
        return path+"/"+path2;

    }
	
	@RequestMapping(value = "/article/{pageName1}",method = RequestMethod.GET)
    public String index7(@PathVariable String pageName1){
        return "article/"+pageName1;
    }


    @RequestMapping(value = "/indexInport/{pageName1}",method = RequestMethod.GET)
    public String index8(@PathVariable String pageName1){
        return "indexInport/"+pageName1;
    }

}
