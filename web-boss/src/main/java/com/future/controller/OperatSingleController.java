package com.future.controller;

import com.future.model.OperationSingle;
import com.future.model.PageBean;
import com.future.service.OperatSingleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @program: dove-parent
 * @description: 运营-内容管理-单页管理-控制层
 * @author: 张晋浩
 * @create: 2019-10-21 17:23
 **/
@RequestMapping("operating/single")
@Controller
public class OperatSingleController {

    @Autowired
    private OperatSingleService operatSingleService;

    /**
     * 运营-内容管理-单页管理-条件分页查询
     * @param model
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping("findSingleList")
    public String findSingleList(Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<OperationSingle> list = operatSingleService.findSingleList(page, rows);
        model.addAttribute("list",list);
        return "/operating/single/singleList";
    }

    /**
     * 运营-内容管理-单页管理-跳转至新增页面
     * @return
     */
    @RequestMapping("toAddPage")
    public String toAddPage(){
        return "/operating/single/addSingle";
    }

    /**
     * 运营-内容管理-单页管理-新增或修改
     * @param operationSingle
     * @return
     */
    @RequestMapping("addSingle")
    public String addSingle(OperationSingle operationSingle){
        operatSingleService.addSingle(operationSingle);
        return "redirect:/operating/single/findSingleList";
    }

    /**
     * 运营-内容管理-单页管理-回显
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("echoSingle")
    public String echoSingle(long id,Model model){
        OperationSingle operationSingle = operatSingleService.echoSingle(id);
        model.addAttribute("bean",operationSingle);
        return "/operating/single/addSingle";
    }

    /**
     * 运营-内容管理-单页管理-删除
     * @param id
     * @return
     */
    @RequestMapping("delSingle")
    public String delSingle(long id){
        operatSingleService.delSingle(id);
        return "redirect:/operating/single/findSingleList";
    }

    /**
     * 运营-内容管理-单页管理-批量删除
     * @param id
     * @return
     */
    @RequestMapping("delSingles")
    public String delSingles(Long[] id){
        operatSingleService.delSingles(id);
        return "redirect:/operating/single/findSingleList";
    }
}
