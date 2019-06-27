package com.tiantiantao.mapper;

import com.tiantiantao.pojo.OrderItem;
import com.tiantiantao.pojo.Orders;

import java.util.List;

public interface OrderMapper {


    void addOrders(Orders orders);           //添加订单

    void addOrderItem(List<OrderItem> orderItemList);           //添加订单项

    List<Orders> findAllOrders();            //查找所有订单
}
