package com.future.interfaces;

import com.future.model.LectureshipBean;
import com.future.model.Membership;
import com.future.model.PageBean;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface MembershipApi {


    @RequestMapping("findMembership")
    public PageBean<Membership> membershipList(@RequestBody(required = false) Membership membership, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);


    @RequestMapping("delMembership")
    boolean delMembership(@RequestParam(value = "ids",required = false)Long[] ids);


    @RequestMapping("updateStatusToup")
    boolean updateStatusToup(@RequestParam(value = "ids",required = false)Long[] id);

    @RequestMapping("updateStatusTodown")
    boolean updateStatusTodown(@RequestParam(value = "ids",required = false)Long[] id);


}
