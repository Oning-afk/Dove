package com.future.controller;

import com.future.model.LectureshipBean;
import com.future.model.Membership;
import com.future.model.OperationConsult;
import com.future.model.PageBean;
import com.future.service.MembershipService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.lang.reflect.Member;

@Controller
@RequestMapping("membership")
public class MembershipController {

    @Autowired
    private MembershipService membershipService;

    @RequestMapping(value = "findMembership")
    public String MembershipList(Membership membership, Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<Membership> membershipPageBean = membershipService.membershipList(membership, page, rows);
        model.addAttribute("membershipPageBean",membershipPageBean);
        return "operating/card/membershipList";
    }



    /**
     * 运营-会员等级-删除
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "delMembership")
    public String delMembership(Long[] id, Model model){
        boolean flag = membershipService.delMembership(id);
        if(flag){
            model.addAttribute("data","删除成功!");
        }
        return "redirect:findMembership";
    }


    /**
     * 运营-线上卡券管理-启用
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "updateStatusToUp")
    public String updateStatusToup(Long[] id, Model model){
        boolean flag = membershipService.updateStatusToup(id);
        if(flag){
            model.addAttribute("forbidden",1);
            model.addAttribute("data","启用成功!");
        }
        return "redirect:findMembership";
    }

    /**
     * 运营-线上卡券管理-禁用
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "updateStatusToDown")
    public String updateStatusTodown(Long[] id, Model model){
        boolean flag = membershipService.updateStatusTodown(id);
        if(flag){
            model.addAttribute("forbidden",1);
            model.addAttribute("data","禁用成功!");
        }
        return "redirect:findMembership";
    }



    /**
     * 运营-线上卡券管理-跳转至新增页面
     * @param
     * @return
     */
    @RequestMapping(value = "toAddMembership")
    public String toAddMembership(){

         return "operating/card/addMembership";
    }




    @RequestMapping("addMembership")
    public String addMembership(Membership membership){
        membershipService.addMembership(membership);
        return "redirect:findMembership";
    }



    /**
     * 运营-会员等级-回显卡券
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "echoMembership")
    public String echoMembership(Long id,Model model){
        Membership membership = membershipService.echoMembership(id);
        model.addAttribute("bean",membership);
        return "operating/card/addMembership";
    }


}
