package com.future.controller;

import com.future.interfaces.LecturershipApi;
import com.future.interfaces.MembershipApi;
import com.future.model.LectureshipBean;
import com.future.model.PageBean;
import com.future.service.LectureshipService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LecturershipController implements LecturershipApi {

    @Autowired
    private LectureshipService lectureshipService;

    @Override
    public PageBean<LectureshipBean> lectureshipList(LectureshipBean lectureshipBean, Integer page, Integer rows) {
        return lectureshipService.lectureshipList(lectureshipBean, page, rows);
    }

    @Override
    public boolean delLecturership(Long[] ids) {
        return lectureshipService.delLecturership(ids);
    }

    @Override
    public boolean updateLecturerStatusToUp(Long[] id) {
        return lectureshipService.updateLecturerStatusToUp(id);
    }

    @Override
    public boolean updateLecturerStatusToDown(Long[] id) {
        return lectureshipService.updateLecturerStatusToDown(id);
    }

    @Override
    public void addLecturership(LectureshipBean lectureshipBean) {
        lectureshipService.addLecturership(lectureshipBean);
    }


    @Override
    public LectureshipBean echoLecturership(Long id) {
        return lectureshipService.echoLecturership(id);
    }

}
