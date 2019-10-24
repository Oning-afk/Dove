package com.future.mapper;

import com.future.model.LectureshipBean;
import com.future.model.Membership;

import java.util.HashMap;
import java.util.List;

public interface MembershipMapper {

    /**
     * 会员等级总条数
     * @param
     * @return
     */
    int getCount1(Membership membership);

    /**
     * 会员等级查询
     * @param map
     * @return
     */
    List<Membership> membershipList(HashMap<String, Object> map);



    boolean delMembership(Long[] ids);



    boolean updateStatusToup(Long[] id);

    boolean updateStatusTodown(Long[] id);

}
