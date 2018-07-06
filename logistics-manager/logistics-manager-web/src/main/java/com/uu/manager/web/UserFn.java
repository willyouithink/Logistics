package com.uu.manager.web;

import com.uu.manager.pojo.dto.ItemResult;
import com.uu.manager.pojo.dto.Page;
import com.uu.manager.pojo.po.User;
import com.uu.manager.pojo.vo.SearchVo;
import com.uu.manager.pojo.vo.VoAddUser;
import com.uu.manager.pojo.vo.VoUser;
import com.uu.manager.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping(value = "/user")
public class UserFn {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

@Autowired
private UserService userService;

@ResponseBody
@RequestMapping(value = "/listUser",method =RequestMethod.GET)
public ItemResult<VoUser> listUserByPage(Page page, SearchVo searchVo){
    ItemResult<VoUser> list= null;
    try {
        list = userService.listUserByPage(page, searchVo);
    } catch (Exception e) {
        logger.error(e.getMessage(), e);
    }
  System.out.println(list+"~~~~~~~~~~~~~~~~~~");
  return list;
}

@ResponseBody
@RequestMapping(value = "/updateStates",method = RequestMethod.POST)
public  int updateStatesByIds(@RequestParam("uids[]")List<Long>uids){
    int i = 0;
    try {
            i=userService.updateStatesByIds(uids);
    }catch (Exception e){
            logger.error(e.getMessage(),e);
    }
    return i;
}

@RequestMapping( value = "/addUser")
    public String addUser(VoAddUser user){
    try {

        userService.addUser(user);
    }catch (Exception e){
        logger.error(e.getMessage(),e);
    }
    return "user/user-list";
}

@RequestMapping(value = "/findUser",method = RequestMethod.GET)
public String findUser(Long uid , HttpServletRequest request){
    User user= userService.findUser(uid);
    request.setAttribute("user",user);
    return "user/user-edit";
}

@RequestMapping(value = "/updateUser",method = RequestMethod.GET )
public  String updateUser(User user){
   userService.updateUser(user);
    return "user/user-list";
}

    @RequestMapping(value = "/delUser")
    public String delUser(Long uid) {
         userService.delUser(uid);
        return "user/user-list";
    }

    @RequestMapping(value = "/changeStates")
    public String changeStates( Long uid ){

    userService.changeStates(uid);

        System.out.println("fasdfaasfaf");

        return "user/user-list";
    }

}
