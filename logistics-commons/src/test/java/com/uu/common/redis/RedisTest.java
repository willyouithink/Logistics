//package com.uu.common.redis;
//
//import org.junit.Test;
//import redis.clients.jedis.HostAndPort;
//import redis.clients.jedis.Jedis;
//import redis.clients.jedis.JedisCluster;
//import redis.clients.jedis.JedisPool;
//
//import java.io.IOException;
//import java.util.HashSet;
//import java.util.Set;
//
///**
// * Created by aqiang on 2018/6/2.
// */
//public class RedisTest {
//
//    //单机版本（有密码）
//    @Test
//    public  void redisTest(){
//        Jedis jedis = new Jedis("47.96.100.15",6379);
//        jedis.auth("chenzhanqiangdediannao123");
//        String name = jedis.get("name");
//        jedis.set("dyy","921009");
//        System.out.print(name);
//        jedis.close();
//    }
//
//    //测试jredisPool（有密码）
//    @Test
//    public void jrdisTest1(){
//        JedisPool jedisPool = new JedisPool("47.96.100.15",6379);
//        Jedis jedis = jedisPool.getResource();
//        jedis.auth("chenzhanqiangdediannao123");
//
//        System.out.print(jedis.get("name"));
//        jedis.close();
//        jedisPool.close();
//    }
//
//    //测试集群（无密码）
//    @Test
//    public void jrdisTest2() throws IOException {
//
//        Set<HostAndPort> nodes = new HashSet<>();
//        nodes.add(new HostAndPort("47.96.100.15",7001));
//        nodes.add(new HostAndPort("47.96.100.15",7002));
//        nodes.add(new HostAndPort("47.96.100.15",7003));
//        nodes.add(new HostAndPort("47.96.100.15",7004));
//        nodes.add(new HostAndPort("47.96.100.15",7005));
//        nodes.add(new HostAndPort("47.96.100.15",7006));
//
//
//        JedisCluster jedisCluster = new JedisCluster(nodes);
//        jedisCluster.lpush("myjredisCluster",new String[]{"a","b","c"});
//
//        jedisCluster.close();
//    }
//
//}
