package com.future.controller;

import com.future.model.OfflineClass;
import com.future.model.PageBean;
import com.future.service.OfflineClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @program: Dove
 * @description: 课堂-线下课管理-控制层
 * @author: 张晋浩
 * @create: 2019-10-25 14:31
 **/
@RequestMapping("offline/class")
@Controller
public class ClassroomController {

    @Autowired
    private OfflineClassService offlineClassService;

    /**
     * 课堂-线下课管理-分页条件查询
     * @param offlineClass
     * @param model
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping("findOfflineClassList")
    public String findOfflineClassList(OfflineClass offlineClass, Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<OfflineClass> offlineClassList = offlineClassService.findOfflineClassList(offlineClass, page, rows);
        model.addAttribute("list",offlineClassList);
        model.addAttribute("bean",offlineClass);
        return "offline/class/list";
    }

    /**
     * 课堂-线下课管理-跳转至新增页面
     * @return
     */
    @RequestMapping("toAdd")
    public String toAdd(){
        return "offline/class/add";
    }

    /**
     * 课堂-线下课管理-新增或修改
     * @param offlineClass
     */
    @RequestMapping("addOffline")
    public String addOffline(OfflineClass offlineClass){
        offlineClassService.addOffline(offlineClass);
        return "redirect:findOfflineClassList";
    }

    /**
     * 课堂-线下课管理-回显
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("echoOffline")
    public String echoOffline(Long id, Model model){
        OfflineClass offlineClass = offlineClassService.echoOffline(id);
        model.addAttribute("bean",offlineClass);
        return "offline/class/add";
    }
}
