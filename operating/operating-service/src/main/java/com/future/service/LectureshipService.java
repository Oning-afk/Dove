package com.future.service;

import com.future.model.LectureshipBean;
import com.future.model.PageBean;

public interface LectureshipService {


    /**
     * 讲师头衔查询
     * @param lectureshipBean
     * @param page
     * @param rows
     * @return
     */
    PageBean<LectureshipBean> lectureshipList(LectureshipBean lectureshipBean, Integer page, Integer rows);



    boolean delLecturership(Long[] ids);


    boolean updateLecturerStatusToUp(Long[] id);

    boolean updateLecturerStatusToDown(Long[] id);
}
