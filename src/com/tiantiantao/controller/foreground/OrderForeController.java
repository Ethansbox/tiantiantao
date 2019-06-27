package com.tiantiantao.controller.foreground;

import com.tiantiantao.model.Cart;
import com.tiantiantao.model.CartItem;
import com.tiantiantao.pojo.OrderItem;
import com.tiantiantao.pojo.Orders;
import com.tiantiantao.pojo.User;
import com.tiantiantao.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
public class OrderForeController {

    @Autowired
    OrderService orderService;

    @Autowired
    HttpServletRequest request;

    @RequestMapping("/toCheckOrder.action")
    public String toCheckOrder(){

        return "foreground/checkOrder";
    }

    @RequestMapping("/toPaySuccess.action")
    public String toPaySuccess(){
        return "foreground/paySuccess";
    }


    //结算,添加订单至数据库
    @RequestMapping("/balanceAccounts.action")
    public String balanceAccounts(){
        User user = (User)request.getSession().getAttribute("user");
        //如果用户未登陆，则跳至登陆页面
        if (user==null){
            return "/toLogin.action";
        }

        //从session中取出购物车，封装成订单
        Cart cart = (Cart)request.getSession().getAttribute("cart");
        Orders orders = new Orders();
        //自动生成Id
        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        orders.setOrderId(uuid);
        orders.setTotal(cart.getTotal());
        orders.setState(1);
        orders.setAddress(user.getAddress());
        orders.setName(user.getUsername());
        orders.setTel(user.getTel());
        orders.setUser(user);

        //将CartItem数据全部放入OrderItem
        Map<String,CartItem> cartItemMap = cart.getCartItemMap();
        List<OrderItem> orderItemList = orders.getOrderItems();
        for (Map.Entry<String,CartItem> entry : cartItemMap.entrySet()){
            //取出每一个购物车项
            CartItem cartItem = entry.getValue();
            //创建新的订单项
            OrderItem orderItem = new OrderItem();
            //创建订单项id
            uuid = UUID.randomUUID().toString().replaceAll("-", "");
            orderItem.setOrderItemId(uuid);
            //订单项内商品的购买数量
            orderItem.setCounts(cartItem.getBuyNum());
            //订单项小计
            orderItem.setSubtotal(cartItem.getItemSum());
            //订单项的商品
            orderItem.setCommodity(cartItem.getCommodity());
            //所属订单
            orderItem.setOrders(orders);
            //加进列表
            orderItemList.add(orderItem);
        }

        //将orderItemList放入orders
        orders.setOrderItems(orderItemList);

        orderService.addOrders(orders);

        //清空购物车
        cart = new Cart();
        request.getSession().setAttribute("cart",cart);

        return "redirect:/toPaySuccess.action";
    }
}
