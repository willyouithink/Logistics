package com.uu.manager.web;


import com.uu.manager.pojo.dto.ItemResult;
import com.uu.manager.pojo.dto.Page;
import com.uu.manager.pojo.po.Sender;
import com.uu.manager.pojo.vo.SenderCustom;
import com.uu.manager.pojo.vo.SenderQuery;
import com.uu.manager.service.SenderService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * User: ZGH
 * Date: 2018/5/26
 * Time: 19:11
 * Version:V1.0
 */
@Controller
public class SenderAction {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private SenderService senderService;

    /*
    分页显示信息加模糊查询分页
     */
    @ResponseBody
    @RequestMapping(value = "/sender",method = RequestMethod.GET)
    public ItemResult<SenderCustom> listItemsByPage(Page page,SenderQuery query,HttpSession session) {
        ItemResult<SenderCustom> list = null;
        try {
            list = senderService.listSenderByPage(page,query);
            session.setAttribute("list",list);
            // System.out.println(list);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        }
        return list;
    }

    /*
    批量逻辑删出
     */
    @ResponseBody
    @RequestMapping(value = "/batch",method = RequestMethod.POST)
    public int  updateStateByIds(@RequestParam("ids[]") List<Long> ids){
        int i = 0;
        try{
            i = senderService.updateStateByIds(ids);
        }catch (Exception e){
            logger.error(e.getMessage(), e);
        }
        return i;

    }

    /*
      添加订单
     */
    @RequestMapping(value = "/o/orderAdda",method = RequestMethod.POST)
    public String orderAdd(Sender add){
        System.out.println("aaa！~~~~");
        String province = add.getProvince();
        String city = add.getCity();
        String county = add.getCounty();
        String saddress = add.getSaddress();
        add.setSaddress(province+city+county+saddress);
        senderService.orderAdd(add);
        return "order/order-list";
    }

    /*
    编辑回显
     */
    @RequestMapping(value = "/toOrderEdit",method = RequestMethod.GET)
    public String toOrderEdit(Long sid,HttpSession session){
        System.out.println(sid);
        Sender sender = senderService.listSenderById(sid);
        // System.out.print(sender);
        session.setAttribute("sender",sender);
        return "redirect:/order/order-edit";
    }

    /*
    编辑
     */
    @RequestMapping("/orderEdit")
    public String orderEdit(Sender sender){
        Integer c = senderService.updateSenderById(sender);
        if(c!=null){
            return "redirect:/order/order-list";
        }else{
            return "order/order-edit";
        }

    }

    /*
    修改状态
     */
    @RequestMapping(value = "/updateState",method =RequestMethod.POST)
    public String updateState(Long sid){
        Sender sender =  senderService.listSenderById(sid);
        System.out.println(sid);
        int state = sender.getState();
        if(state==1){
            Sender sender1 = new Sender();
            sender1.setSid(sid);
            sender1.setState(2);
            senderService.updateState(sender1);
        }else if(state==2){
            Sender sender1 = new Sender();
            sender1.setSid(sid);
            sender1.setState(1);
            senderService.updateState(sender1);
        }
        return "order/order-list";
    }




}
