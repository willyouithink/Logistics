package com.uu.manager.service.impl;

import com.uu.manager.dao.ImportMapper;
import com.uu.manager.pojo.vo.IndexImport;
import com.uu.manager.service.ImprotService;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.common.SolrInputDocument;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.List;

/**
 * Created by aqiang on 2018/6/8.
 */
@Service
public class ImportServiceImpl implements ImprotService {

    @Autowired
    private ImportMapper importDao;
    @Autowired
    private SolrServer solrServer;

    @Override
    public void indexImport() {

        //通过dao层采集数据
        //将查到的数据
        try{
        List<IndexImport> list = importDao.indexImport();

        //2 添加到索引库
        for (IndexImport it : list){
            //每次循环要创建一个文档对象
            //把每一个it的值赋值给一个文档对象
            //简单来说，把数据库中每条记录做成一个文档
            SolrInputDocument document = new SolrInputDocument();
            //将it的每个属性放到string文档的字段中
            document.addField("id",it.getId());
            document.addField("pname",it.getPname());
            document.addField("shop_price",it.getShop_price());
            document.addField("pdesc",it.getPdesc());
            document.addField("cname",it.getCname());
            document.addField("pimage",it.getPimage());
            System.out.print(it.getPimage());
            //通过solrServer写入索引库
            solrServer.add(document);
        }
        //通过solrServer提交事务
        solrServer.commit();
    } catch (SolrServerException e) {
        e.printStackTrace();
    } catch (IOException e) {
        e.printStackTrace();
    }
    }
}
