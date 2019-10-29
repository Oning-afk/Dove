package com.future.interfaces;

import com.future.model.LectureshipBean;
import com.future.model.PageBean;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface LecturershipApi {

    @RequestMapping("findLectureship")
    public PageBean<LectureshipBean> lectureshipList(@RequestBody(required = false) LectureshipBean lectureshipBean, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);

    @RequestMapping("delLecturership")
    boolean delLecturership(@RequestParam(value = "ids",required = false)Long[] ids);


    @RequestMapping("updateLecturerStatusToUp")
    boolean updateLecturerStatusToUp(@RequestParam(value = "ids",required = false)Long[] id);

    @RequestMapping("updateLecturerStatusToDown")
    boolean updateLecturerStatusToDown(@RequestParam(value = "ids",required = false)Long[] id);


    @RequestMapping("addLecturership")
    void addLecturership(@RequestBody(required = false) LectureshipBean lectureshipBean);


    @RequestMapping("echoLecturership")
    LectureshipBean echoLecturership(@RequestParam(value = "id",required = false)Long id);
}
