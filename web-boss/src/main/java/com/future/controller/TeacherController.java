package com.future.controller;

import com.future.model.PageBean;
import com.future.model.Swiper;
import com.future.model.Teacher;
import com.future.model.UploadOssUtil;
import com.future.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
@Controller
@RequestMapping("teacher")
public class TeacherController {

    @Autowired
    private TeacherService teacherService;

    @RequestMapping("findSwiper")
    @ResponseBody
    public List<Swiper> findSwiper(){
        return teacherService.findSwiper();
    }

    @RequestMapping("applyFor")
    @ResponseBody
    public Map applyFor(Teacher teacher){
        return teacherService.applyFor(teacher);
    }

    @RequestMapping("uploadImg")
    @ResponseBody
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

    /**
     * 讲师分页条件查询
     * @param teacher
     * @param model
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping("findTeacherList")
    public String findTeacherList(Teacher teacher, Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<Teacher> teacherPageBean = teacherService.findTeacherList(teacher,page,rows);
        model.addAttribute("list",teacherPageBean);
        model.addAttribute("bean",teacher);
        if(teacher!=null && teacher.getType() == 1){
            return "teacher/teacherList";
        }else if (teacher!=null && teacher.getType() == 0){
            return "teacher/teacherNoList";
        }
        return "teacher/teacherList";
    }

    /**
     * 批量通过审核
     * @param id
     */
    @RequestMapping("updateToAllowed")
    public String updateToAllowed(Long[] id){
        teacherService.updateToAllowed(id);
        return "redirect:findTeacherList";
    }

    /**
     * 批量拒绝审核
     * @param id
     */
    @RequestMapping("updateToRefused")
    public String updateToRefused(Long[] id){
        teacherService.updateToRefused(id);
        return "redirect:findTeacherList";
    }

}
