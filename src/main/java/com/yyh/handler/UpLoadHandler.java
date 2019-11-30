package com.yyh.handler;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

/**
 * 文件上传处理器
 *
 * @author YanYuHang
 * @create 2019-11-30-13:42
 */
@Controller
public class UpLoadHandler {
    @RequestMapping("/upload")
    public String upload(MultipartFile file, HttpServletRequest request) throws IOException {
        if (file.isEmpty()) {
            System.out.println("文件未上传");
        } else {
            System.out.println("文件长度" + file.getSize());
            System.out.println("文件类型" + file.getContentType());
            System.out.println("文件名称" + file.getName());
            System.out.println("文件原名" + file.getOriginalFilename());
            //设置文件上传路径
            String realPath = request.getSession().getServletContext()
                    .getRealPath("/WEB-INF/upload");
            //执行上传操作
            FileUtils.copyInputStreamToFile(
                    file.getInputStream(),
                    new File(realPath, file.getOriginalFilename())
            );
        }
        return "uploadsuccess";
    }

    @RequestMapping("/uploads")
    public String uploads(@RequestParam MultipartFile[] file, HttpServletRequest request) throws IOException {
        for (MultipartFile myfile : file) {
            if (myfile.isEmpty()) {
                System.out.println("文件未上传");
            } else {
                System.out.println("文件长度" + myfile.getSize());
                System.out.println("文件类型" + myfile.getContentType());
                System.out.println("文件名称" + myfile.getName());
                System.out.println("文件原名" + myfile.getOriginalFilename());
                //设置文件上传路径
                String realPath = request.getSession().getServletContext()
                        .getRealPath("/WEB-INF/upload");
                //执行上传操作
                FileUtils.copyInputStreamToFile(
                        myfile.getInputStream(),
                        new File(realPath, myfile.getOriginalFilename())
                );
            }
        }

        return "uploadsuccess";
    }

}
