package com.uu.protal.web;

import com.uu.protal.service.ProtalService;
import com.uu.protal.pojo.Lunbo;
import com.uu.protal.utils.PropKit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by aqiang on 2018/6/4.
 */
@Controller
public class ProtalIndexAction {
    @Autowired
    private ProtalService protalService;

    @RequestMapping(value = "/protal/index", method = RequestMethod.GET)
    public String protalIndex(HttpSession session) {
        //读取配置文件
       // System.out.print("aaaaa");
        Long iid = PropKit.use("index.properties").getLong("lunbo.iid");


        List<Lunbo> lunbo = protalService.showLunbo(iid);

        System.out.print(lunbo.get(1).getImg());
        System.out.print(lunbo.get(2).getImg());

        session.setAttribute("lunbo", lunbo);

        return "index-search-list";
    }

    @RequestMapping(value = "/new/track",method = RequestMethod.GET)

    public String search(@RequestParam String billStr ,HttpSession session){
        System.out.print(billStr);

        return "search";
    }



}
