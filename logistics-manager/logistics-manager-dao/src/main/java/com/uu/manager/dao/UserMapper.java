package com.uu.manager.dao;

import com.uu.manager.pojo.dto.Page;
import com.uu.manager.pojo.po.User;
import com.uu.manager.pojo.vo.SearchVo;
import com.uu.manager.pojo.vo.VoAddUser;
import com.uu.manager.pojo.vo.VoUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * User: Administrator
 * Date: 18/5/26
 * Time: 16:58
 * Version:V1.0
 */
public interface UserMapper {

    Long listUser(@Param("searchVo")SearchVo searchVo);

    List<VoUser> listUserByPage(@Param("page") Page page, @Param("searchVo") SearchVo searchVo);

    int updateStatesByIds(List<Long> uids);

    void addUser(VoAddUser user);

    User findUser(@Param("uid") Long uid);

    void updateUser(User user);

    void delUser(Long uid);

    void changeStates(Long uid);
}
