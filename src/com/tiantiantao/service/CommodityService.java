package com.tiantiantao.service;

import com.tiantiantao.pojo.Commodity;

import java.util.List;

public interface CommodityService {

    void addCommodity(Commodity commodity);     //添加一个商品

    void deleteCommodityById(String id);            //通过id删除一个商品

    void updateCommodity(Commodity commodity);  //修改一个商品

    List<Commodity> findAll();              //查找所有商品

    Commodity findByCode(String code);      //通过code商品条码查找商品

    Commodity findById(String commodityId);          //通过id查找商品

    void sortByCode();                  //按照code给商品排序

    List<Commodity> findCommodityByName(String name);      //通过名字模糊查询

}
