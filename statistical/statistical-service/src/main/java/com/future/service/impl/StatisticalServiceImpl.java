package com.future.service.impl;

import com.future.mapper.StatisticalMapper;
import com.future.model.Result;
import com.future.model.StatisticsVisit;
import com.future.service.StatisticalService;
import com.mongodb.DB;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.expression.spel.ast.Projection;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @program: dove-parent
 * @description:
 * @author: 邓希凡
 * @create: 2019-10-12 16:47
 **/
@Service
public class StatisticalServiceImpl implements StatisticalService {

    @Autowired
    private StatisticalMapper statisticalMapper;


    @Autowired
    private MongoTemplate mongoTemplate;

    @Override
    public void visit() {
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH");
            Date date = new Date();
            System.out.println(date);
            Query query = new Query(Criteria.where("id").in(sdf.format(date)));
            StatisticsVisit statisticsVisit = new StatisticsVisit();
            StatisticsVisit one = mongoTemplate.findOne(query, StatisticsVisit.class);
            if(one!=null){
                statisticsVisit.setCount(statisticsVisit.getCount() + 1);
            };
            statisticsVisit.setId(sdf.format(date));
            statisticsVisit.setCreateDate(date);
            statisticsVisit.setType(0L);

            mongoTemplate.save(statisticsVisit,"visit");

        } catch (Exception e) {
            e.printStackTrace();
        }

    }



    @Override
    public Map<String, Object> findVisit(StatisticsVisit statisticsVisit, int iTime) throws ParseException {
        Query query = new Query();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH");
        Map<String, Object> map = new HashMap<>();
        List list=new ArrayList<>();
        List arrayList = new ArrayList();
        List<StatisticsVisit> visit;
        if(statisticsVisit.getCreateDate()!=null&&statisticsVisit.getEndDate()!=null){
            query.addCriteria(Criteria.where("createDate").gte(statisticsVisit.getCreateDate()).lte(statisticsVisit.getEndDate()));
             visit = mongoTemplate.find(query, StatisticsVisit.class, "visit");
            for (StatisticsVisit visit1 : visit) {
                arrayList.add(visit1.getEndDate());
                list.add(visit1.getId());
            }
            map.put("list", list);
            map.put("dataList",arrayList);
            return map;
        }
        Calendar cal = Calendar.getInstance();
        cal.setTime(new Date());
        if(iTime==0) {
            cal.add(Calendar.DATE,-1);
            query.addCriteria(Criteria.where("createDate").gt(cal));
            List<StatisticsVisit> visit2 = mongoTemplate.findAll( StatisticsVisit.class, "visit");
                for (StatisticsVisit visit1 : visit2) {
                arrayList.add(visit1.getId().substring(visit1.getId().indexOf(" "))+":00");
                list.add(visit1.getCount());
            }
            map.put("list", list);
            map.put("dataList",arrayList);
            return map;
        }
        if(iTime==1){
            cal.add(Calendar.DATE,-7);
            query.addCriteria(Criteria.where("createDate").gte(cal));
            visit = mongoTemplate.find(query,StatisticsVisit.class,"visit");
            map.put("list", list);
            return map;
        }
        if(iTime==2){
            cal.add(Calendar.DATE,-30);
            query.addCriteria(Criteria.where("createDate").gte(cal));
            visit = mongoTemplate.find(query,StatisticsVisit.class,"visit");
            map.put("list", list);
            return map;
        }
        if(iTime==3){
            cal.add(Calendar.DATE,-90);
            query.addCriteria(Criteria.where("createDate").gte(cal));
            visit = mongoTemplate.find(query,StatisticsVisit.class,"visit");
            map.put("list", list);
            return map;
        }
        return map;
    }

}
