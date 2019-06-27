package com.tiantiantao.model;

import com.tiantiantao.pojo.Commodity;

public class CartItem {//购物项，指的是购物车中的一栏，也就是一个商品

    private Commodity commodity;    //商品
    private int buyNum;             //单个商品的购买数量
    private double itemSum;         //一栏的小计

    public Commodity getCommodity() {
        return commodity;
    }

    public void setCommodity(Commodity commodity) {
        this.commodity = commodity;
    }

    public int getBuyNum() {
        return buyNum;
    }

    public void setBuyNum(int buyNum) {
        this.buyNum = buyNum;
    }

    public double getItemSum() {
        return itemSum;
    }

    public void setItemSum(double itemSum) {
        this.itemSum = itemSum;
    }
}
