package com.future.interfaces;

import com.future.model.OfflineClass;
import com.future.model.PageBean;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @author zjh
 */
public interface OfflineClassApi {

    /**
     * 查询方法
     * @param offlineClass
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping("findOfflineClassList")
    public PageBean<OfflineClass> findOfflineClassList (@RequestBody(required = false) OfflineClass offlineClass, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);

    /**
     * 新增
     * @param offlineClass
     */
    @RequestMapping("addOffline")
    void addOffline(@RequestBody(required = false)OfflineClass offlineClass);

    /**
     * 回显
     * @param id
     * @return
     */
    @RequestMapping("echoOffline")
    OfflineClass echoOffline(@RequestParam(required = false,value = "id") Long id);
}
