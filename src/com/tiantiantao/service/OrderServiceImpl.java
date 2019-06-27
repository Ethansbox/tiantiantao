package com.tiantiantao.service;

import com.tiantiantao.mapper.OrderMapper;
import com.tiantiantao.pojo.Orders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMapper orderMapper;


    @Override
    public void addOrders(Orders orders) {      //添加订单
        //订单和订单项同时加入数据库
        orderMapper.addOrders(orders);
        orderMapper.addOrderItem(orders.getOrderItems());
    }

    @Override
    public List<Orders> findAllOrders() {       //查找所有订单
        return orderMapper.findAllOrders();
    }
}
