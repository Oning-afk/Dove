package com.future.service.impl;

import com.future.mapper.LecturershipMapper;
import com.future.model.LectureshipBean;
import com.future.model.PageBean;
import com.future.service.LectureshipService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
@Service
public class LectureshipServiceImpl implements LectureshipService {

    @Autowired
    private LecturershipMapper lecturershipMapper;

    @Override
    public PageBean<LectureshipBean> lectureshipList(LectureshipBean lectureshipBean, Integer page, Integer rows) {
        int totalSize = lecturershipMapper.getLectureshipCount(lectureshipBean);
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("lectureshipBean",lectureshipBean);
        PageBean<LectureshipBean> lectureshipPageBean = new PageBean<LectureshipBean>(page, rows, totalSize);
        List<LectureshipBean> lectureshipList = lecturershipMapper.lectureshipList(map);
        lectureshipPageBean.setList(lectureshipList);
        return lectureshipPageBean;
    }

    @Override
    public boolean delLecturership(Long[] ids) {
        return lecturershipMapper.delLecturership(ids);
    }

    @Override
    public boolean updateLecturerStatusToUp(Long[] id) {
        return lecturershipMapper.updateLecturerStatusToUp(id);
    }

    @Override
    public boolean updateLecturerStatusToDown(Long[] id) {
        return lecturershipMapper.updateLecturerStatusToDown(id);
    }

    @Override
    public void addLecturership(LectureshipBean lectureshipBean) {

        if(lectureshipBean.getId()!=null){

            lecturershipMapper.updateLecturer(lectureshipBean);
        }else{

            lecturershipMapper.addLecturership(lectureshipBean);
        }
    }

    @Override
    public LectureshipBean echoLecturership(Long id) {

        return lecturershipMapper.echoLecturership(id);
    }


}
