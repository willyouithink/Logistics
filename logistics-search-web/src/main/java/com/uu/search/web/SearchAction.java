package com.uu.search.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by aqiang on 2018/6/9.
 */
@Controller
public class SearchAction {
    @RequestMapping(value = "/search/search",method = RequestMethod.GET)
    public String search(){
        return "index-search";
    }
}
