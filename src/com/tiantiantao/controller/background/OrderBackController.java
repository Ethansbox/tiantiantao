package com.tiantiantao.controller.background;

import com.tiantiantao.pojo.Orders;
import com.tiantiantao.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class OrderBackController {

    @Autowired
    private OrderService orderService;

    @Autowired
    HttpServletRequest request;

    @RequestMapping("/orders/findAllOrders.action")
    public String findAllOrders(){
        List<Orders> ordersList = orderService.findAllOrders();

        request.getSession().setAttribute("ordersList",ordersList);

        return "background/order";
    }

}
