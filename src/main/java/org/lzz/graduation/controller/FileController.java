package org.lzz.graduation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

@Controller
/**
 * 文件上传、保存、下载类
 */
public class FileController {

    /**
     * 文件上传
     * @param request http请求
     * @param file 上传的文件
     * @param m Model存放文件
     * @return 返回用户页面
     */
    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public String upload(HttpServletRequest request, @RequestParam("file") MultipartFile file,
                               Model m){
        //设置文件名，防止重名覆盖
        String fileName = System.currentTimeMillis() + file.getOriginalFilename();
        //设置存放路径
        String destFileName = request.getServletContext().getRealPath("") + "uploaded" + File.separator + fileName;
        //首次访问创建路径
        File destFile = new File(destFileName);
        destFile.getParentFile().mkdirs();
        try {
            //上传文件
            file.transferTo(destFile);
            m.addAttribute("fileName", fileName);
        }catch (FileNotFoundException e){
            e.printStackTrace();
            return "errorUpload";
        } catch (IOException e) {
            e.printStackTrace();
            return "errorUpload";
        }
        return "userPage";
    }
}
