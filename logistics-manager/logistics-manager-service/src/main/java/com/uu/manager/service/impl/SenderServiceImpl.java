package com.uu.manager.service.impl;

import com.uu.manager.dao.SenderMapper;
import com.uu.manager.pojo.dto.ItemResult;
import com.uu.manager.pojo.dto.Page;
import com.uu.manager.pojo.po.Sender;
import com.uu.manager.pojo.vo.SenderCustom;
import com.uu.manager.pojo.vo.SenderQuery;
import com.uu.manager.service.SenderService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * User: ZGH
 * Date: 2018/5/26
 * Time: 19:36
 * Version:V1.0
 */
@Service
public class SenderServiceImpl implements SenderService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private SenderMapper senderDao;

    @Override
    public ItemResult<SenderCustom> listSenderByPage(Page page,SenderQuery query) {
        ItemResult<SenderCustom> list = new ItemResult<SenderCustom>();
        list.setMsg("select success");
        list.setCode(0);
        try {
            //创建一个map，封装所有的参数
            Map<String,Object> map = new HashMap<String,Object>();
            map.put("page",page);
            map.put("query",query);
            //这里是展示查到的信息的总个数
//            long count = senderDao.countSender(map);
            long count = senderDao.countSender(map);
            List<SenderCustom> senderList = senderDao.listSenderByPage(map);
            list.setCount(count);
            list.setData(senderList);
        } catch (Exception e) {
            list.setMsg("select failed");
            list.setCode(1);
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public int updateStateByIds(List<Long> ids) {

        int i = 0;
        try{
            i =  senderDao.updateStateByIds(ids);
        }catch (Exception e){
            logger.error(e.getMessage(), e);
        }
        return i;
    }

    @Override
    public void orderAdd(Sender add) {
        senderDao.orderAdd(add);
    }

    @Override
    public Sender listSenderById(Long sid) {

        return  senderDao.listSenderById(sid);
    }

    @Override
    public Integer updateSenderById(Sender sender) {

        return  senderDao.updateSenderById(sender);
    }

    @Override
    public void updateState(Sender sender1) {
       senderDao.updateState(sender1);
    }


}
