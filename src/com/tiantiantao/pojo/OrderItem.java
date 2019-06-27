package com.tiantiantao.pojo;

public class OrderItem {    //订单项，订单中的一栏

    private String orderItemId;         //订单项的id

    private int counts;                  //订单项商品的购买数量

    private double subtotal;            //订单项小计

    private Commodity commodity;        //订单项内部的商品

    private Orders orders;              //该订单项属于哪个订单

    public String getOrderItemId() {
        return orderItemId;
    }

    public void setOrderItemId(String orderItemId) {
        this.orderItemId = orderItemId;
    }

    public int getCounts() {
        return counts;
    }

    public void setCounts(int counts) {
        this.counts = counts;
    }

    public double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }

    public Commodity getCommodity() {
        return commodity;
    }

    public void setCommodity(Commodity commodity) {
        this.commodity = commodity;
    }

    public Orders getOrders() {
        return orders;
    }

    public void setOrders(Orders orders) {
        this.orders = orders;
    }
}
