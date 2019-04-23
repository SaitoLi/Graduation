package org.lzz.graduation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


/**
 * 处理页面间的直接跳转，因为WEB-INF下的页面不允许直接跳转
 */
@RequestMapping("page")
@Controller
public class PageController {

    /**
     * 一级页面跳转
     * @param pageName1 一级访问路径
     * @return 页面
     */
    @RequestMapping(value="{pageName1}", method = RequestMethod.GET)
    public ModelAndView toPage(@PathVariable("pageName1") String pageName1){
        ModelAndView mv = new ModelAndView(pageName1);
        return mv;
    }
}
