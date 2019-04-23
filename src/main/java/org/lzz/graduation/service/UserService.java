package org.lzz.graduation.service;

import org.lzz.graduation.entity.User;

public interface UserService {
    void register(User user);

    User login(String userName, String password);

    User findByUserName(String userName);

    User findByUserNameAndPassword(String userName, String password);

    void updateUserPicture(String picture, String userName);

    void updateNickName(String nickName,String userName);

    void updateEmail(String email, String userName);
}
