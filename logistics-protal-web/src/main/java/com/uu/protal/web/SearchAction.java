package com.uu.protal.web;



import com.uu.protal.pojo.TbItemIndexResult;
import com.uu.protal.service.SearchIndexService;
import com.uu.protal.utils.PropKit;
import com.uu.protal.utils.StrKit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by aqiang on 2018/6/9.
 */
@Controller
public class SearchAction {


    @Autowired
    private SearchIndexService searchIndexService;
    @RequestMapping(value = "/search",method = RequestMethod.GET)
    public String search(String keyword, @RequestParam(defaultValue = "1") int pageIndex, Model model){
        //System.out.print("sghjkljhgfhjk");
          if(StrKit.notBlank(keyword)) {
            int pageSize = PropKit.use("file.properties").getInt("search.pagesize");
             TbItemIndexResult result = searchIndexService.searchIndex(keyword, pageIndex, pageSize);
             // System.out.print(result.getList().get(2).getPdesc());

                  model.addAttribute("list", result.getList());
                  return "index-search";



        }
        return "index-search-list";
    }

    @RequestMapping(value = "/searclList" , method = RequestMethod.GET)
    public String searclList(){
        return "index-search-list";
    }
}
