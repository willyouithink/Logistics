package com.uu.protal.service.impl;

import com.uu.protal.mapper.ProtalMapper;
import com.uu.protal.pojo.Lunbo;
import com.uu.protal.service.ProtalService;
import com.uu.protal.utils.JedisClient;
import com.uu.protal.utils.JsonUtils;
import com.uu.protal.utils.StrKit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by aqiang on 2018/6/4.
 */
@Service
public class ProtalServiceImpl implements ProtalService {

    @Autowired
    private ProtalMapper protalDao;
    @Autowired
    private JedisClient jedisClient;

    @Override
    public List<Lunbo> showLunbo(Long iid) {
        //第一步：先去redis集群中查询
        try {
            String json = jedisClient.hget("lunbo", iid + "");
            //判断json变量是否为空，不为空意味着，缓存中有记录，若为空
            if (StrKit.notBlank(json)) {
                //缓存中有相关记录
                //json--object(List)
                return JsonUtils.jsonToList(json, Lunbo.class);
            }
        } catch (Exception e) {
            //不要将异常抛出，处理掉异常
            //若将异常抛出，将影响主业务 throw new XxxxException();
            e.printStackTrace();
        }


        //第二步：在mysql中进行查询
        List<Lunbo> lunbo = protalDao.showLunbo(iid);

            System.out.print(lunbo.get(0).getImg());



        //第三步：存入redis集群
        try{
            //jedisClient.hset(key,field,value)
            jedisClient.hset("lunbo", iid + "", JsonUtils.objectToJson(lunbo));
        }catch (Exception e){
            //不要将异常抛出，处理掉异常
            //若将异常抛出，将影响主业务 throw new XxxxException();
            e.printStackTrace();
        }
        return lunbo;
    }
}

