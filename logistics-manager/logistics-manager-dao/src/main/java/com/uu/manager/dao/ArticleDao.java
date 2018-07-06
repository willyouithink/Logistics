package com.uu.manager.dao;

import com.uu.manager.pojo.dto.Page;
import com.uu.manager.pojo.po.ArticleList;
import com.uu.manager.pojo.vo.ArticleAdd;
import com.uu.manager.pojo.vo.ArticleQuery;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/5/28 0028.
 */
public interface ArticleDao {
    Integer countArticle(Map<String,Object> map);

    List<ArticleList> listArticleBypage(Map<String,Object> map);

    int updateStatusById(List<Long> ids);

    int addArticle(ArticleAdd articleAdd);

    ArticleList editArticle(long aid);

    int articleSave(ArticleList articleList);
}
