package org.lzz.graduation.service;

import org.lzz.graduation.entity.User;
import org.lzz.graduation.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService{

    @Autowired
    private UserMapper userMapper;

    /**
     * 注册新用户
     * @param user
     */
    @Override
    public void register(User user) {
        userMapper.addUser(user);
    }

    /**
     * 用户登录
     * @param userName 用户名
      * @param password 密码
     * @return 用户
     */
    @Override
    public User login(String userName, String password) {
        return null;
    }

    @Override
    public User findByUserName(String userName) {
        return userMapper.findByUserName(userName);
    }

    @Override
    public User findByUserNameAndPassword(String userName, String password) {
        return userMapper.findByUserNameAndPassword(userName, password);
    }

    @Override
    public void updateUserPicture(String picture, String userName) {
        userMapper.updateUserPicture(picture, userName);
    }

    @Override
    public void updateNickName(String nickName, String userName) {
        userMapper.updateNickName(nickName, userName);
    }

    @Override
    public void updateEmail(String email, String userName) {
        userMapper.updateEmail(email, userName);
    }
}
