package com.uu.manager.service;

import com.uu.manager.pojo.dto.ItemResult;
import com.uu.manager.pojo.dto.Page;
import com.uu.manager.pojo.po.User;
import com.uu.manager.pojo.vo.SearchVo;
import com.uu.manager.pojo.vo.VoAddUser;
import com.uu.manager.pojo.vo.VoUser;

import java.util.List;

/**
 * User: Administrator
 * Date: 18/5/26
 * Time: 16:25
 * Version:V1.0
 */
public interface UserService {


    ItemResult<VoUser> listUserByPage(Page page, SearchVo searchVo);

    int updateStatesByIds(List<Long> uids);

    void addUser(VoAddUser user);

    User findUser(Long uid);

    void updateUser(User user);

    void delUser(Long uid);

    void changeStates(Long uid);
}
