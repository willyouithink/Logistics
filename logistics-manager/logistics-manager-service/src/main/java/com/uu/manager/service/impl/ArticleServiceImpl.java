package com.uu.manager.service.impl;


import com.uu.manager.dao.ArticleDao;
import com.uu.manager.pojo.dto.ItemResult;
import com.uu.manager.pojo.dto.Page;
import com.uu.manager.pojo.po.ArticleList;
import com.uu.manager.pojo.vo.ArticleAdd;
import com.uu.manager.pojo.vo.ArticleQuery;
import com.uu.manager.service.ArticleService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/5/28 0028.
 */
@Service
public class ArticleServiceImpl implements ArticleService{
    private Logger logger =  LoggerFactory.getLogger(this.getClass());
    @Autowired
    private ArticleDao articleDao;
    @Override
    public ItemResult<ArticleList> listItemsByPage(Page page,ArticleQuery query) {
        ItemResult<ArticleList> list = new ItemResult<ArticleList>();
        list.setMsg("select success");
        list.setCode(0);
        try {
            //创建一个map把所有的数据封装起来
            Map<String ,Object> map=new HashMap<String,Object>();
            map.put("page",page);
            map.put("query",query);


            Integer count=articleDao.countArticle(map);
            System.out.println("ghkghghjgjghjghjghjfdjgfdhsg");
            List<ArticleList> articeList =articleDao.listArticleBypage(map);
            list.setCount(count);
            list.setData(articeList);

        } catch (Exception e) {
            list.setMsg("select failed");
            list.setCode(1);
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return list;
    }
   //批量删除
    @Override
    public int updateStatusById(List<Long> ids) {
        int i=0;
        try {

              i=articleDao.updateStatusById(ids);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        }


        return i;
    }
//添加广告
    @Override
    public int addArticle(ArticleAdd articleAdd) {
        return articleDao.addArticle(articleAdd);
    }
    //编辑广告
    @Override
    public ArticleList editArticle(long aid) {
        return articleDao.editArticle(aid);
    }
    //保存广告
    @Override
    public int articleSave(ArticleList articleList) {
        return articleDao.articleSave(articleList);
    }
}
