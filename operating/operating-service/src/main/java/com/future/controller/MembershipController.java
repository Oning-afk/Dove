package com.future.controller;

import com.future.interfaces.MembershipApi;
import com.future.model.CardVoucher;
import com.future.model.LectureshipBean;
import com.future.model.Membership;
import com.future.model.PageBean;
import com.future.service.MembershipService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MembershipController implements MembershipApi {

    @Autowired
    private MembershipService membershipService;


    @Override
    public PageBean<Membership> membershipList(Membership membership, Integer page, Integer rows) {
        return membershipService.membershipList(membership,page,rows);
    }

    @Override
    public boolean delMembership(Long[] ids) {
        return membershipService.delMembership(ids);
    }

    @Override
    public boolean updateStatusToup(Long[] id) {
        return membershipService.updateStatusToup(id);
    }

    @Override
    public boolean updateStatusTodown(Long[] id) {
        return membershipService.updateStatusTodown(id);
    }


}
