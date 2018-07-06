package com.uu.protal.mapper;



import com.uu.protal.pojo.IndexImport;
import com.uu.protal.pojo.TbItemIndexResult;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class SearchIndexDao {

    @Autowired
    private SolrServer solrServer;

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    public TbItemIndexResult search(SolrQuery query, int pageSize) {
         TbItemIndexResult result = new TbItemIndexResult();
        try {
            QueryResponse response = solrServer.query(query);
            SolrDocumentList documentList = response.getResults();
            long recordCount = documentList.getNumFound();
            result.setRecordCount(recordCount);
            long totalPages = (recordCount + pageSize - 1) / pageSize;
            result.setTotalPages(totalPages);
             Map<String, Map<String, List<String>>> highlighting = response.getHighlighting();
            //DocumentList--List
            List<IndexImport> list = new ArrayList<IndexImport>();
            for (SolrDocument document : documentList){
                IndexImport item = new IndexImport();
                item.setId((String) document.get("id"));
                item.setPname((String)document.get("pname"));
                item.setShop_price((double)document.get("shop_price"));
                item.setPdesc((String) document.get("pdesc"));
                item.setCname((String) document.get("cname"));
                item.setPimage((String) document.get("pimage"));

                List<String> stringList = highlighting.get(document.get("id")).get("pdesc");
                String pdesc = "";
                if (stringList != null && !stringList.isEmpty()){
                    pdesc = stringList.get(0);
                }else{
                    pdesc = (String) document.get("pdesc");
                }
                item.setPdesc(pdesc);
                list.add(item);
            }
            result.setList(list);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return result;
    }
}
