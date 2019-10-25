package com.future.controller;

import com.future.model.Swiper;
import com.future.model.Teacher;
import com.future.model.UploadOssUtil;
import com.future.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @program: dove-parent
 * @description:
 * @author: 邓希凡
 * @create: 2019-10-12 16:57
 **/
@RestController
@RequestMapping("teacher")
public class TeacherController {

    @Autowired
    private TeacherService teacherService;

    @RequestMapping("findSwiper")
    public List<Swiper> findSwiper(){
        return teacherService.findSwiper();
    }

    @RequestMapping("applyFor")
    public Map applyFor(Teacher teacher){
        return teacherService.applyFor(teacher);
    }

    @RequestMapping("uploadImg")
    public Map headImgUpload(HttpServletRequest request, MultipartFile file, Model model) throws FileNotFoundException {
        Map map = new HashMap<>();
        try {
            if (file == null || file.getSize() <= 0) {
                throw new FileNotFoundException("file不能为空");
            }
            UploadOssUtil ossClient=new UploadOssUtil();
            String name = ossClient.uploadImg2Oss(file);
            String imgUrl = ossClient.getImgUrl(name);
            map.put("filePath",imgUrl);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return map;
    }

}
