package com.tiantiantao.pojo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Orders implements Serializable {

    private static final long serialVersionUID = 1L;

    private String orderId;         //订单号

    private double total;       //订单金额

    private int state;   //0已撤销  1已生成，未支付  2已支付，未执行    3已执行

    private String address;     //收货地址

    private String name;        //收货人

    private String tel;         //收货人电话

    private User user;          //订单所属用户

   List<OrderItem> orderItems = new ArrayList<OrderItem>();        //所有订单项

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<OrderItem> getOrderItems() {
        return orderItems;
    }

    public void setOrderItems(List<OrderItem> orderItems) {
        this.orderItems = orderItems;
    }
}
