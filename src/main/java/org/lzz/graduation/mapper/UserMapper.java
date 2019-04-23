package org.lzz.graduation.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.lzz.graduation.entity.User;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface UserMapper {
    @Select("select * from user where username = #{userName}")
    User findByUserName(String userName);

    @Select("select * from user where username = #{userName} and password = #{password}")
    User findByUserNameAndPassword(String userName, String password);

    @Insert("insert into user(username, password, nickname, email) values(#{userName},#{password},#{nickName},#{email})")
    void addUser(User user);

    @Update("update user set picture = #{picture} where username = #{userName}")
    void updateUserPicture(String picture, String userName);

    @Update("update user set nickName=#{nickName} where username = #{userName}")
    void updateNickName(String nickName,String userName);

    @Update("update user set email = #{email} where username = #{userName}")
    void updateEmail(String email, String userName);

}
