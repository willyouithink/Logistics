package com.uu.manager.service;

import com.uu.manager.pojo.dto.ItemResult;
import com.uu.manager.pojo.dto.Page;
import com.uu.manager.pojo.po.ArticleList;
import com.uu.manager.pojo.vo.ArticleAdd;
import com.uu.manager.pojo.vo.ArticleQuery;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2018/5/28 0028.
 */
public interface ArticleService {
    ItemResult<ArticleList> listItemsByPage(Page page,ArticleQuery query);

    int updateStatusById(List<Long> ids);
  //Ìí¼Ó¹ã¸æ
    int addArticle(ArticleAdd articleAdd);


    ArticleList editArticle(long aid);

    int articleSave(ArticleList articleList);
}
