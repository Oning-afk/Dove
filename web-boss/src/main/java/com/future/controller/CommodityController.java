package com.future.controller;


import com.future.model.Commodity;
import com.future.model.PageBean;
import com.future.model.UploadOssUtil;
import com.future.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * LJ
 * 商品管理
 */
@Controller
@RequestMapping("mall")
public class CommodityController {
    @Autowired
    private CommodityService commodityService;
    @RequestMapping(value = "findCommodity")
    public String commodityList(Commodity commodity, Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<Commodity> commodityPageBean = commodityService.commodityList(commodity, page, rows);
        model.addAttribute("commodityPageBean",commodityPageBean);
        return "mall/commodity/commodityList";
    }

    /**
     * 商城管理—删除
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "delCommodity")
    public String delCommodity(Long[] id, Model model){
        boolean flag = commodityService.delCommodity(id);
        if(flag){
            model.addAttribute("state",0);
            model.addAttribute("data","删除成功!");
        }
        return "redirect:findCommodity";
    }

    /**
     * 商城管理—启用
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "updateStateToUp")
    public String updateStateToUp(Long[] id, Model model){
        boolean flag = commodityService.updateStateToUp(id);
        if(flag){
            model.addAttribute("state",2);
            model.addAttribute("data","启用成功!");
        }
        return "redirect:findCommodity";
    }

    /**
     * 商城管理—禁用
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "updateStateToDown")
    public String updateStateToDown(Long[] id, Model model){
        boolean flag = commodityService.updateStateToDown(id);
        if(flag){
            model.addAttribute("state",1);
            model.addAttribute("data","禁用成功!");
        }
        return "redirect:findCommodity";
    }

    /**
     * 回收站
     * @param commodity
     * @param model
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping(value = "commodityShow")
    public String commodityShow(Commodity commodity,Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<Commodity> commodities = commodityService.commodityShow(commodity, page, rows);
        model.addAttribute("commodityShowPageBean",commodities);
        return "mall/commodity/commodityShow";
    }

    /**
     * 跳转至新增页面
     * @return
     */
    @RequestMapping(value = "toAddPage")
    public String toAddPage(){
        return "mall/commodity/addCommodity";
    }
    /**
     * 新增
     * @param commodity
     * @param model
     * @return
     */
    @RequestMapping(value = "addCommodity")
    public String addCommodity(Commodity commodity,Model model){
        commodityService.addCommodity(commodity);
        return "redirect:findCommodity";
    }

    /**
     * 上传图片至oss
     * @param request
     * @param file
     * @param model
     * @return
     * @throws FileNotFoundException
     */
    @RequestMapping(value = "/headImgUpload")
    @ResponseBody
    public Map headImgUpload(HttpServletRequest request, MultipartFile file, Model model) throws FileNotFoundException {
        Map map = new HashMap<>();
        try {
            if (file == null || file.getSize() <= 0) {
                throw new FileNotFoundException("file不能为空");
            }
            UploadOssUtil ossClient=new UploadOssUtil();
            String name = ossClient.uploadImg2Oss(file);
            String imgUrl = ossClient.getImgUrl(name);
            map.put("filePath",imgUrl);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return map;
    }

    @RequestMapping("deleteCommodity")
    public String deleteCommodity(Long[] id){
        commodityService.deleteCommodity(id);
        return "redirect:findCommodity";
    }
}
