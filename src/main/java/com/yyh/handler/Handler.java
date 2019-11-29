package com.yyh.handler;

import com.yyh.dao.ImageDao;
import com.yyh.po.Image;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author YanYuHang
 * @create 2019-11-29-10:19
 */
@Controller
public class Handler {

    @Autowired
    private ImageDao imageDao;

    @RequestMapping("/test")
    public String test(Model model) {
        List<Image> images = imageDao.selectAll();
        model.addAttribute("imgs", images);
        return "index";
    }

}
