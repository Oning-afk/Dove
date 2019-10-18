package com.future.controller;

import com.future.model.CardVoucher;
import com.future.model.CardVoucherLog;
import com.future.model.ExportExcel;
import com.future.model.PageBean;
import com.future.service.OperatCardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

/**
 * @program: dove-parent
 * @description: 运营控制层
 * @author: 张晋浩
 * @create: 2019-10-14 20:19
 **/
@Controller
@RequestMapping("operating/card")
public class OperatCardController {
    @Autowired
    private OperatCardService operatingService;

    /**
     *  运营-线上卡券管理-查询
     * @param cardVoucher
     * @param model
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping(value = "findCardVoucher")
    public String cardVoucherList(CardVoucher cardVoucher, Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<CardVoucher> cardVoucherPageBean = operatingService.cardVoucherList(cardVoucher, page, rows);
        model.addAttribute("cardVoucherPageBean",cardVoucherPageBean);
        model.addAttribute("bean",cardVoucher);
        if(cardVoucher != null && cardVoucher.getCardVoucherType() != null){
            if(cardVoucher.getCardVoucherType() ==1){
                return "operating/card/fullDeleteCardList";
            }else if(cardVoucher.getCardVoucherType() ==2){
                return "operating/card/discountCardList";
            }else if(cardVoucher.getCardVoucherType() ==3){
                return "operating/card/classCardList";
            }else if(cardVoucher.getCardVoucherType() ==4){
                return "operating/card/rechargeCardList";
            }else if(cardVoucher.getCardVoucherType() ==5){
                return "operating/card/vipCardList";
            }
        }
        return "operating/card/fullDeleteCardList";
    }

    /**
     * 运营-线上卡券管理-删除
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "delCardVoucher")
    public String delCardVoucher(Long[] id, Model model){
        boolean flag = operatingService.delCardVoucher(id);
        if(flag){
            model.addAttribute("status",1);
            model.addAttribute("data","删除成功!");
        }
        return "redirect:findCardVoucher";
    }

    /**
     * 运营-线上卡券管理-启用
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "updateStatusToUp")
    public String updateStatusToUp(Long[] id, Model model){
        boolean flag = operatingService.updateStatusToUp(id);
        if(flag){
            model.addAttribute("status",1);
            model.addAttribute("data","启用成功!");
        }
        return "redirect:findCardVoucher";
    }

    /**
     * 运营-线上卡券管理-禁用
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "updateStatusToDown")
    public String updateStatusToDown(Long[] id, Model model){
        boolean flag = operatingService.updateStatusToDown(id);
        if(flag){
            model.addAttribute("status",1);
            model.addAttribute("data","禁用成功!");
        }
        return "redirect:findCardVoucher";
    }

    /**
     * 运营-线上卡券管理-跳转至导出页面
     * @return
     */
    @RequestMapping(value = "toExportPage")
    public String toExportPage(){
        return "operating/card/exportCardVoucher";
    }

    /**
     * 运营-线上卡券管理-卡券导出
     * @param cardVoucher
     * @param response
     */
    @RequestMapping(value = "exportCardVoucher")
    public void exportCardVoucher(CardVoucher cardVoucher, HttpServletResponse response){
        List<CardVoucher> list=  operatingService.exportCardVoucher(cardVoucher);
        if(list !=null || list.size() > 0){
            //标题
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            String title="线上卡券";
            String[] rowsName=new String[]{"ID","卡券编码","卡券类型","开始时间","中止时间","折扣"};
            //定义数据集合
            List<Object[]> dataList = new ArrayList<Object[]>();
            for (int i = 0; i <list.size() ; i++) {
                Object[] obj=new Object[rowsName.length];
                obj[0] = list.get(i).getId();
                obj[1] = list.get(i).getCardVoucherNo();
                //1:优惠券;2:打折卡;3课程卡;4:充值卡;5:会员卡
                if(list.get(i).getCardVoucherType() ==1){
                    obj[2] = "优惠券";
                }else if(list.get(i).getCardVoucherType() ==2){
                    obj[2] = "打折卡";
                }else if(list.get(i).getCardVoucherType() ==3){
                    obj[2] = "课程卡";
                }else if(list.get(i).getCardVoucherType() ==4){
                    obj[2] = "充值卡";
                }else if(list.get(i).getCardVoucherType() ==5){
                    obj[2] = "会员卡";
                }
                obj[3] = formatter.format(list.get(i).getCreateDate());
                obj[4] = formatter.format(list.get(i).getToReceivedDate());
                obj[5] = list.get(i).getCardVoucherType();
                dataList.add(obj);
            }
            ExportExcel exportExcel = new ExportExcel(title, rowsName,dataList,response);
            try {
                exportExcel.export();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * 运营-线上卡券管理-跳转至新增页面
     * @param type
     * @return
     */
    @RequestMapping(value = "toAddPage")
    public String toAddPage(Integer type){
        if(type ==1){
            return "operating/card/addFullCard";
        }else if(type ==2){
            return "operating/card/addDiscountCard";
        }else if(type ==3){
            return "operating/card/addClassCard";
        }else if(type ==4){
            return "operating/card/addRechargeCard";
        }else if(type ==5){
            return "operating/card/addVipCard";
        }
        return "operating/card/addFull";
    }

    /**
     * 运营-线上卡券管理-新增或修改卡券
     * @param cardVoucher
     * @param model
     * @return
     */
    @RequestMapping(value = "addCardVoucher")
    public String addCardVoucher(CardVoucher cardVoucher,Model model){
        operatingService.addCardVoucher(cardVoucher);
        return "redirect:findCardVoucher";
    }

    /**
     * 运营-线上卡券管理-回显卡券
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "echoCard")
    public String echoCard(Long id,Model model){
        CardVoucher cardVoucher = operatingService.echoCard(id);
        model.addAttribute("bean",cardVoucher);
        if(cardVoucher.getCardVoucherType() ==1){
            return "operating/card/addFullCard";
        }else if(cardVoucher.getCardVoucherType() ==2){
            return "operating/card/addDiscountCard";
        }else if(cardVoucher.getCardVoucherType() ==3){
            return "operating/card/addClassCard";
        }else if(cardVoucher.getCardVoucherType() ==4){
            return "operating/card/addRechargeCard";
        }else if(cardVoucher.getCardVoucherType() ==5){
            return "operating/card/addVipCard";
        }
        return "operating/card/addFull";
    }

    /**
     *  运营-卡券发放记录-查询
     * @param cardVoucherLog
     * @param model
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping(value = "findCardLog")
    public String findCardLog(CardVoucherLog cardVoucherLog, Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<CardVoucherLog> cardVoucherLogPageBean = operatingService.findCardLog(cardVoucherLog, page, rows);
        model.addAttribute("list",cardVoucherLogPageBean);
        model.addAttribute("bean",cardVoucherLog);
        return "operating/card/cardLog";
    }

    /**
     * 运营-卡券发放记录-导出
     * @param response
     */
    @RequestMapping(value = "exportCardLog")
    public void exportCardLog(HttpServletResponse response){
        List<CardVoucherLog> list=  operatingService.exportCardLog();
        if(list !=null || list.size() > 0){
            //标题
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            String title="卡券记录";
            String[] rowsName=new String[]{"编号","用户昵称","卡券ID","卡券类型","有效天数","状态","领取时间","结束时间","是否删除"};
            //定义数据集合
            List<Object[]> dataList = new ArrayList<Object[]>();
            for (int i = 0; i <list.size() ; i++) {
                Object[] obj=new Object[rowsName.length];
                obj[0] = list.get(i).getCardVoucherNo();
                obj[1] = list.get(i).getUserName();
                obj[2] = list.get(i).getId();
                //1:优惠券;2:打折卡;3课程卡;4:充值卡;5:会员卡
                if(list.get(i).getCardType() ==1){
                    obj[3] = "优惠券";
                }else if(list.get(i).getCardType() ==2){
                    obj[3] = "打折卡";
                }else if(list.get(i).getCardType() ==3){
                    obj[3] = "课程卡";
                }else if(list.get(i).getCardType() ==4){
                    obj[3] = "充值卡";
                }else if(list.get(i).getCardType() ==5){
                    obj[3] = "会员卡";
                }
                obj[4] = list.get(i).getValiditeDay();
                if(list.get(i).getCardStatus() ==1 ){
                    obj[5] = "未使用";
                }else if(list.get(i).getCardStatus() ==2 ){
                    obj[5] = "已使用";
                }else if(list.get(i).getCardStatus() ==3 ){
                    obj[5] = "已过期";
                }else if(list.get(i).getCardStatus() ==4 ){
                    obj[5] = "已作废";
                }
                long endTime = list.get(i).getReceivedDate().getTime()+ (list.get(i).getValiditeDay()*24*60*60*1000);
                obj[6] = formatter.format(list.get(i).getReceivedDate());
                obj[7] = formatter.format(endTime);
                if(list.get(i).getIsDel() ==0 ){
                    obj[8] = "正常";
                }else if(list.get(i).getIsDel() ==1 ){
                    obj[8] = "已删除";
                }
                dataList.add(obj);
            }
            ExportExcel exportExcel = new ExportExcel(title, rowsName,dataList,response);
            try {
                exportExcel.export();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * 运营-卡券发放记录-删除
     * @param ids
     * @return
     */
    @RequestMapping(value = "delCardLogs")
    public String delCardLogs(Long[] ids){
        operatingService.delCardLogs(ids);
        return "redirect:findCardLog";
    }

    /**
     * 运营-卡券发放记录-恢复
     * @param ids
     * @return
     */
    @RequestMapping(value = "restoreCardLog")
    public String restoreCardLog(Long[] ids){
        operatingService.restoreCardLog(ids);
        return "redirect:findCardLog";
    }

}
