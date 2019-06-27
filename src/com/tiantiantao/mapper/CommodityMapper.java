package com.tiantiantao.mapper;

import com.tiantiantao.pojo.Commodity;

import java.util.List;

public interface CommodityMapper {

    List<Commodity> findAllCommodity();              //查找所有商品

    void addCommodity(Commodity commodity);       //添加一个商品

    void deleteCommodityByCode(String code);            //通过code删除一个商品

    void deleteCommodityById(String commodityId);        //通过id删除一个商品

    void updateCommodity(Commodity commodity);    //修改一个商品

    Commodity findByCode(String code);      //通过条码查找商品

    Commodity findById(String commodityId); //通过id查找商品

    List<Commodity> findCommodityByName(String name);           //根据名字模糊查询
}
