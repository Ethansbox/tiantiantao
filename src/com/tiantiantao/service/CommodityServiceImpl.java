package com.tiantiantao.service;

import com.tiantiantao.mapper.CommodityMapper;
import com.tiantiantao.pojo.Commodity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class CommodityServiceImpl implements CommodityService {

    @Autowired
    private CommodityMapper commodityMapper;


    @Override
    public void addCommodity(Commodity commodity) {
        //自动生成Id
        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        commodity.setCommodityId(uuid);
        commodityMapper.addCommodity(commodity);
    }


    @Override
    public void deleteCommodityById(String id) {
        commodityMapper.deleteCommodityById(id);
    }


    @Override
    //修改商品
    public void updateCommodity(Commodity commodity) {
        commodityMapper.updateCommodity(commodity);
    }


    @Override
    public List<Commodity> findAll() {
        List<Commodity> commodityList = commodityMapper.findAllCommodity();
        return commodityList;
    }


    @Override
    public Commodity findByCode(String code) {
        return null;
    }


    @Override
    //通过Id查找商品
    public Commodity findById(String commodityId) {
        Commodity commodity = commodityMapper.findById(commodityId);
        return commodity;
    }


    @Override
    public void sortByCode() {

    }

    @Override
    //通过名字模糊查询
    public List<Commodity> findCommodityByName(String name) {
        List<Commodity> commodityList = commodityMapper.findCommodityByName(name);
        return commodityList;
    }
}
