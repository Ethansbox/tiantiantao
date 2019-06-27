package com.tiantiantao.service;

import com.tiantiantao.pojo.Orders;

import java.util.List;

public interface OrderService {

    void addOrders(Orders orders);      //添加订单

    List<Orders> findAllOrders();       //查找所有订单

}
