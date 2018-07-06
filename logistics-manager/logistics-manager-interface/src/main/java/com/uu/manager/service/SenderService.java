package com.uu.manager.service;

import com.uu.manager.pojo.dto.ItemResult;
import com.uu.manager.pojo.dto.Page;
import com.uu.manager.pojo.po.Sender;
import com.uu.manager.pojo.vo.SenderCustom;
import com.uu.manager.pojo.vo.SenderQuery;

import java.util.List;

/**
 * User: ZGH
 * Date: 2018/5/26
 * Time: 19:14
 * Version:V1.0
 */
public interface SenderService {
    /**
     * 分页显示信息加模糊查询分页
     * @param page
     * @param query
     * @return
     */
    ItemResult<SenderCustom> listSenderByPage(Page page,SenderQuery query);

    int updateStateByIds(List<Long> ids);

    void orderAdd(Sender add);

    Sender listSenderById(Long sid);

    Integer updateSenderById(Sender sender);


    void updateState(Sender sender1);
}
