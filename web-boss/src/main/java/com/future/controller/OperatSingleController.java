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

    @RequestMapping("findSingleList")
    public String findSingleList(Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<OperationSingle> list = operatSingleService.findSingleList(page, rows);
        model.addAttribute("list",list);
        return "/operating/single/singleList";
    }

    @RequestMapping("toAddPage")
    public String toAddPage(){
        return "/operating/single/addSingle";
    }

    @RequestMapping("addSingle")
    public String addSingle(OperationSingle operationSingle){
        operatSingleService.addSingle(operationSingle);
        return "redirect:/operating/single/findSingleList";
    }

    @RequestMapping("echoSingle")
    public String echoSingle(long id,Model model){
        OperationSingle operationSingle = operatSingleService.echoSingle(id);
        model.addAttribute("bean",operationSingle);
        return "/operating/single/addSingle";
    }

    @RequestMapping("delSingle")
    public String delSingle(long id){
        operatSingleService.delSingle(id);
        return "redirect:/operating/single/findSingleList";
    }

    @RequestMapping("delSingles")
    public String delSingles(Long[] id){
        operatSingleService.delSingles(id);
        return "redirect:/operating/single/findSingleList";
    }
}
