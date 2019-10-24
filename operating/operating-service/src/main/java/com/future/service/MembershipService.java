package com.future.service;

import com.future.model.LectureshipBean;
import com.future.model.Membership;
import com.future.model.PageBean;


public interface MembershipService {

    /**
     * 会员等级查询
     * @param membership
     * @param page
     * @param rows
     * @return
     */
    PageBean<Membership> membershipList(Membership membership, Integer page, Integer rows);


    boolean delMembership(Long[] ids);


    boolean updateStatusToup(Long[] id);

    boolean updateStatusTodown(Long[] id);

}
