package org.lzz.graduation.controller;

import org.lzz.graduation.entity.User;
import org.lzz.graduation.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

@Controller
public class UserController {

    @Autowired
    @Qualifier("userService")
    private UserService userService;

    @RequestMapping(value="/register", method = RequestMethod.POST)
    public String register(User user){
        String userName = user.getUserName();
        //查询用户是否存在，如果不存在则添加新用户
        if(userService.findByUserName(userName) == null){
            //添加新用户
            userService.register(user);
            //注册成功
            return "successRegister";
        }
        else{
            return "errorRegister";
        }
    }

    @RequestMapping(value="/login", method = RequestMethod.POST)
    public ModelAndView login(String userName, String password, ModelAndView mv, HttpSession session){
        User user = userService.findByUserNameAndPassword(userName, password);
        if(user != null){
            session.setAttribute("user", user);
            mv.setViewName("userPage");
        }
        else{
            mv.addObject("message", "用户名或密码错误");
            mv.setViewName("errorLogin");
        }
        return mv;
    }

    @RequestMapping(value="/picture", method=RequestMethod.POST)
    public String updateUserPicture(HttpServletRequest request, @RequestParam("picture") MultipartFile picture){
        User user = (User)request.getSession().getAttribute("user");
        String fileName = picture.getOriginalFilename();
        //设置存放路径
        String destFileName = request.getServletContext().getRealPath("") + "pictures" + File.separator + fileName;
        //首次访问创建路径
        File destFile = new File(destFileName);
        destFile.getParentFile().mkdirs();
        try {
            //上传文件
            picture.transferTo(destFile);
            user.setPicture(fileName);
            request.getSession().setAttribute("user", user);
            userService.updateUserPicture(fileName, user.getUserName());
        }catch (FileNotFoundException e){
            e.printStackTrace();
            return "errorUpload";
        } catch (IOException e) {
            e.printStackTrace();
            return "errorUpload";
        }
        return "userPage";
    }

    @RequestMapping(value="/nickName", method=RequestMethod.POST)
    public String updateUserNickName(HttpServletRequest request, @RequestParam("nickName")String nickName){
        User user = (User)request.getSession().getAttribute("user");
        user.setNickName(nickName);
        request.getSession().setAttribute("user", user);
        userService.updateNickName(nickName, user.getUserName());
        return "userPage";
    }

    @RequestMapping(value="/email", method=RequestMethod.POST)
    public String updateUserEmail(HttpServletRequest request, @RequestParam("email")String email){
        User user = (User)request.getSession().getAttribute("user");
        user.setEmail(email);
        request.getSession().setAttribute("user", user);
        userService.updateEmail(email, user.getUserName());
        return "userPage";
    }
}
