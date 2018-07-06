//package com.uu.common.redis;
//
//import com.uu.manager.utils.JedisClientCluster;
//import junit.framework.TestCase;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//
///**
// * Created by aqiang on 2018/6/3.
// */
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration("classpath:spring/spring-jedis.xml")
//public class JedisClientTest extends TestCase {
//
//    @Autowired
//    private JedisClientCluster jedisClientCluster;
//    @Test
//    public void testGet() throws Exception {
//
//
//        System.out.print(jedisClientCluster.get("name"));
//
//
//    }
//}