package com.future.controller;


import com.future.model.CardVoucher;
import com.future.model.IntegralBean;
import com.future.model.LectureshipBean;
import com.future.model.PageBean;
import com.future.service.IntegralService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("integral")
public class IntegralController {

    @Autowired
    private IntegralService integralService;

    @RequestMapping(value = "findIntegral")
    public String integralList(IntegralBean integralBean, Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<IntegralBean> integralPageBean = integralService.integralList(integralBean, page, rows);
        model.addAttribute("integralPageBean",integralPageBean);
        return "operating/card/IntegralList";
    }



    /**
     * 运营-讲师头衔-启用
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "updateIntegralToUp")
    public String updateIntegralToUp(Long[] id, Model model){
        boolean flag = integralService.updateIntegralToUp(id);
        if(flag){
            model.addAttribute("status",1);
            model.addAttribute("data","启用成功!");
        }
        return "redirect:findIntegral";
    }

    /**
     * 运营-讲师头衔-禁用
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "updateIntegralToDown")
    public String updateIntegralToDown(Long[] id, Model model){
        boolean flag = integralService.updateIntegralToDown(id);
        if(flag){
            model.addAttribute("status",1);
            model.addAttribute("data","禁用成功!");
        }
        return "redirect:findIntegral";
    }



    /**
     * 运营-积分规则配置-跳转至新增页面
     * @param
     * @return
     */
    @RequestMapping(value = "toAddIntegral")
    public String toAddMembership(){

        return "operating/card/addIntegral";
    }


    /**
     * 运营-积分规则配置-新增或修改卡券
     * @param cardVoucher
     * @param model
     * @return
     */
    @RequestMapping(value = "addIntegral")
    public String addIntegral(IntegralBean integralBean,Model model){
        integralService.addIntegral(integralBean);
        return "redirect:findIntegral";
    }



    /**
     * 运营-线上卡券管理-回显卡券
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "echoIntegral")
    public String echoIntegral(Long id,Model model){
        IntegralBean integralBean = integralService.echoIntegral(id);
        model.addAttribute("bean",integralBean);
        return "operating/card/addIntegral";
    }

}

