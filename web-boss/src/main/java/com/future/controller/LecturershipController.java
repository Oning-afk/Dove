package com.future.controller;

import com.future.model.LectureshipBean;
import com.future.model.PageBean;
import com.future.service.LectureshipService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("lecturership")
public class LecturershipController {

    @Autowired
    private LectureshipService lectureshipService;

    @RequestMapping(value = "findLecturership")
    public String LecturershipList(LectureshipBean lectureshipBean, Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<LectureshipBean> lectureshipPageBean = lectureshipService.lectureshipList(lectureshipBean, page, rows);
        model.addAttribute("lectureshipPageBean",lectureshipPageBean);
        return "operating/card/lecturershipList";
    }


    /**
     * 运营-讲师头衔-删除
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "delLecturership")
    public String delCardVoucher(Long[] id, Model model){
        boolean flag = lectureshipService.delLecturership(id);
        if(flag){
            model.addAttribute("status",1);
            model.addAttribute("data","删除成功!");
        }
        return "redirect:findLecturership";
    }


    /**
     * 运营-讲师头衔-启用
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "updateLecturerStatusToUp")
    public String updateStatusToUp(Long[] id, Model model){
        boolean flag = lectureshipService.updateLecturerStatusToUp(id);
        if(flag){
            model.addAttribute("status",1);
            model.addAttribute("data","启用成功!");
        }
        return "redirect:findLecturership";
    }

    /**
     * 运营-讲师头衔-禁用
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "updateLecturerStatusToDown")
    public String updateStatusToDown(Long[] id, Model model){
        boolean flag = lectureshipService.updateLecturerStatusToDown(id);
        if(flag){
            model.addAttribute("status",1);
            model.addAttribute("data","禁用成功!");
        }
        return "redirect:findLecturership";
    }
}
