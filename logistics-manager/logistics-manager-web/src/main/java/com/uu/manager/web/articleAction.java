package com.uu.manager.web;

import com.uu.manager.pojo.dto.ItemResult;
import com.uu.manager.pojo.dto.Page;
import com.uu.manager.pojo.po.ArticleList;

import com.uu.manager.pojo.vo.ArticleAdd;
import com.uu.manager.pojo.vo.ArticleQuery;
import com.uu.manager.service.ArticleService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Controller
public class articleAction {

  private Logger logger = LoggerFactory.getLogger(this.getClass());
  @Autowired
   private ArticleService articleService;

    @ResponseBody
    @RequestMapping(value = "/article-list", method = RequestMethod.GET)
    public ItemResult<ArticleList> listItemsByPage(Page page,ArticleQuery query) {
        ItemResult<ArticleList> list = null;
        //System.out.println("wiewfwe");
        try {
            System.out.println(page);
            list = articleService.listItemsByPage(page,query);
           // System.out.print("111");
        } catch (Exception e) {
           //System.out.println("dfhdsfhsij");
        logger.error(e.getMessage(), e);
        }
        //System.out.print("222");
        return list;
    }
     @ResponseBody
    @RequestMapping(value = "/delete",method =RequestMethod.POST)
    public int  updateStatusById(@RequestParam("ids[]") List<Long> ids){
         //System.out.println("进来了");
          int i=0;
         try {

             i= articleService.updateStatusById(ids);


         } catch (Exception e) {

             logger.error(e.getMessage(), e);
         }

         return i;
     }

    @RequestMapping(value = "/addArticle",method = RequestMethod.POST)
    public  String  addStatus( ArticleAdd articleAdd){
         int i=0;
        try {

               i= articleService.addArticle( articleAdd);

        } catch (Exception e) {

            logger.error(e.getMessage(), e);
        }

        return"article/articleList" ;

    }
    //广告回显
    @RequestMapping(value = "/editArticle1", method = RequestMethod.GET)
    public  String  update(long aid ,HttpServletRequest request){
        try {
            ArticleList articleList= articleService.editArticle(aid);
            request.setAttribute("ArticleList",articleList);
        //  System.out.println(articleList.getAname());
        } catch (Exception e) {

            logger.error(e.getMessage(), e);
        }
        return "article/editArticle";
    }

    /*
    编辑
     */
    @RequestMapping(value = "/editArticle")
    public String articleSave(ArticleList articleList){
        int i = 0;

        i = articleService.articleSave(articleList);
        if (i>0){
            return "redirect:/article/articleList";
        }
        return "article/editArticle";
    }



}
