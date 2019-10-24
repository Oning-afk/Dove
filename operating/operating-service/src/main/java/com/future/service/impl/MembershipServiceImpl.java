package com.future.service.impl;

import com.future.mapper.MembershipMapper;
import com.future.model.LectureshipBean;
import com.future.model.Membership;
import com.future.model.PageBean;
import com.future.service.MembershipService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
@Service
public class MembershipServiceImpl implements MembershipService {

    @Autowired
    private MembershipMapper membershipMapper;


    @Override
    public PageBean<Membership> membershipList(Membership membership, Integer page, Integer rows) {
        int totalSize = membershipMapper.getCount1(membership);
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("membership",membership);
        PageBean<Membership> membershipPageBean = new PageBean<Membership>(page, rows, totalSize);
        List<Membership> membershipList = membershipMapper.membershipList(map);
        membershipPageBean.setList(membershipList);
        return membershipPageBean;
    }

    @Override
    public boolean delMembership(Long[] ids) {
        return membershipMapper.delMembership(ids);
    }

    @Override
    public boolean updateStatusToup(Long[] id) {
        return membershipMapper.updateStatusToup(id);
    }

    @Override
    public boolean updateStatusTodown(Long[] id) {
        return membershipMapper.updateStatusTodown(id);
    }


}
