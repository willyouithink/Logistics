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
}
