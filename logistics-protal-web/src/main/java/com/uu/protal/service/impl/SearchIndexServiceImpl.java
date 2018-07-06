package com.uu.protal.service.impl;



import com.uu.protal.mapper.SearchIndexDao;
import com.uu.protal.pojo.TbItemIndexResult;
import com.uu.protal.service.SearchIndexService;
import org.apache.solr.client.solrj.SolrQuery;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class SearchIndexServiceImpl implements SearchIndexService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private SearchIndexDao searchIndexDao;

    @Override
    public TbItemIndexResult searchIndex(String keyword, int pageIndex, int pageSize) {
        TbItemIndexResult result = null;
        try {

            SolrQuery query = new SolrQuery();

            query.setQuery(keyword);
            if (pageIndex <= 0) {
                pageIndex = 1;
            }
            query.setStart((pageIndex - 1) * pageSize);
            query.setRows(pageSize);
            query.set("df", "item_keywords");
            query.setHighlight(true);
            query.addHighlightField("pdesc");
            query.setHighlightSimplePre("<em style='color:red;'>");
            query.setHighlightSimplePost("</em>");
            result = searchIndexDao.search(query,pageSize);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        }
        return result;
    }
}
