package com.uu.manager.service.impl;

import com.uu.manager.dao.UserMapper;
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
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class UserServiceImpl implements UserService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private UserMapper userMapper;


    @Override
    public ItemResult<VoUser> listUserByPage(Page page, SearchVo searchVo) {

        ItemResult<VoUser> list = new ItemResult<>();
        list.setMsg("select success");
        list.setCode(0);
        try {
            Long conut = userMapper.listUser(searchVo);
            List<VoUser> userList = userMapper.listUserByPage(page,searchVo);
            list.setCount(conut);
            list.setData(userList);
        } catch (Exception e) {
            list.setMsg("select failed");
            list.setCode(1);
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public int updateStatesByIds(List<Long> uids) {
        System.out.println(uids);
        int i =0;
        try {
            i=userMapper.updateStatesByIds(uids);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
        }
        return i;
    }

    @Override
    public void addUser(VoAddUser user) {

        user.setUadress(user.getProvince()+user.getCity()+user.getCounty()+user.getUadress()+"")  ;
        try {
            userMapper.addUser(user);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
        }
    }

    @Override
    public User findUser(Long uid) {

        return userMapper.findUser(uid);
    }

    @Override
    public void updateUser(User user) {

        userMapper.updateUser(user);

    }

    @Override
    public void delUser(Long uid) {
        userMapper.delUser(uid);
    }

    @Override
    public void changeStates(Long uid) {

        userMapper.changeStates(uid);

    }
}
