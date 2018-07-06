package com.uu.manager.dao;

import com.uu.manager.pojo.po.Sender;
import com.uu.manager.pojo.vo.SenderCustom;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * User: ZGH
 * Date: 2018/5/26
 * Time: 19:38
 * Version:V1.0
 */
public interface SenderMapper {

    long countSender(Map<String,Object> map);

    List<SenderCustom> listSenderByPage(Map<String,Object> map);


    int updateStateByIds(List<Long> ids);

    void orderAdd(Sender add);

    Sender listSenderById(Long sid);

    Integer updateSenderById(Sender sender);


    void updateState(Sender sender1);
}
