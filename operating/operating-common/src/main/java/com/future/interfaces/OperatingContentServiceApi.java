package com.future.interfaces;

import com.future.model.OperationConsult;
import com.future.model.PageBean;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface OperatingContentServiceApi {

    @RequestMapping("findConsultingList")
    PageBean<OperationConsult> findConsultingList(@RequestBody(required = false)OperationConsult operationConsult, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);

    @RequestMapping("updateDownRecommended")
    void updateDownRecommended(@RequestParam(value = "id",required = false) Long id);

    @RequestMapping("updateToRecommended")
    void updateToRecommended(@RequestParam(value = "id",required = false)Long id);

    @RequestMapping("deleteConsult")
    void deleteConsult(@RequestParam(value = "ids",required = false)Long[] ids);

    @RequestMapping("addOperationConsult")
    void addOperationConsult(@RequestBody(required = false)OperationConsult operationConsult);

    @RequestMapping("echoConsult")
    OperationConsult echoConsult(@RequestParam(value = "id",required = false)Long id);

}
