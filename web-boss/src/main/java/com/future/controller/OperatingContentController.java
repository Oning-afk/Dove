package com.future.controller;

import com.future.model.OperationConsult;
import com.future.model.PageBean;
import com.future.model.UploadOssUtil;
import com.future.service.OperatingContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.Map;

/**
 * @program: dove-parent
 * @description: 运营-内容管理-控制层
 * @author: 张晋浩
 * @create: 2019-10-18 20:18
 **/
@Controller
@RequestMapping("operating/content")
public class OperatingContentController {

    @Autowired
    private OperatingContentService operatingContentService;


    /**
     * 运营-内容管理-资讯管理-条件分页查询
     * @param operationConsult
     * @param model
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping("findConsultingList")
    public String findConsultingList(OperationConsult operationConsult, Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<OperationConsult> list = operatingContentService.findConsultingList(operationConsult,page, rows);
        model.addAttribute("list",list);
        model.addAttribute("bean",operationConsult);
        return "operating/content/consultList";
    }

    /**
     * 运营-内容管理-资讯管理-取消推荐
     * @param id
     * @return
     */
    @RequestMapping("updateDownRecommended")
    public String updateDownRecommended(Long id){
        operatingContentService.updateDownRecommended(id);
        return "redirect:findConsultingList";
    }

    /**
     * 运营-内容管理-资讯管理-设为推荐
     * @param id
     * @return
     */
    @RequestMapping("updateToRecommended")
    public String updateToRecommended(Long id){
        operatingContentService.updateToRecommended(id);
        return "redirect:findConsultingList";
    }

    /**
     * 运营-内容管理-资讯管理-批量删除
     * @param id
     * @return
     */
    @RequestMapping("deleteConsult")
    public String deleteConsult(Long[] id){
        operatingContentService.deleteConsult(id);
        return "redirect:findConsultingList";
    }

    /**
     * 运营-内容管理-资讯管理-跳转至新增页面
     * @return
     */
    @RequestMapping(value = "toAddPage")
    public String toAddPage(){
        return "operating/content/addConsult";
    }

    /**
     * 运营-内容管理-资讯管理-新增或者修改资讯
     * @param operationConsult
     * @return
     */
    @RequestMapping("addOperationConsult")
    public String addOperationConsult(OperationConsult operationConsult){
        operatingContentService.addOperationConsult(operationConsult);
        return "redirect:findConsultingList";
    }

    /**
     * 运营-内容管理-资讯管理-上传图片至oss
     * @param request
     * @param file
     * @param model
     * @return
     * @throws FileNotFoundException
     */
    @RequestMapping(value = "/headImgUpload")
    @ResponseBody
    public Map headImgUpload(HttpServletRequest request, MultipartFile file,Model model) throws FileNotFoundException {
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

    /**
     * 运营-内容管理-资讯管理-回显
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("echoConsult")
    public String echoConsult(Long id,Model model){
        OperationConsult operationConsult = operatingContentService.echoConsult(id);
        model.addAttribute("bean",operationConsult);
        return "operating/content/addConsult";
    }
}
