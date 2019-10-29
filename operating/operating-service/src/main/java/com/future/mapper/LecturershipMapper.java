package com.future.mapper;

import com.future.model.LectureshipBean;
import com.future.model.Membership;

import java.util.HashMap;
import java.util.List;

public interface LecturershipMapper {

    /**
     * 讲师总条数
     * @param lectureshipBean
     * @return
     */
    int getLectureshipCount(LectureshipBean lectureshipBean);

    /**
     * 讲师头衔查询
     * @param map
     * @return
     */
    List<LectureshipBean> lectureshipList(HashMap<String, Object> map);

    boolean delLecturership(Long[] ids);



    boolean updateLecturerStatusToUp(Long[] id);

    boolean updateLecturerStatusToDown(Long[] id);



    void addLecturership(LectureshipBean lectureshipBean);

    LectureshipBean echoLecturership(Long id);

    void updateLecturer(LectureshipBean lectureshipBean);
}
