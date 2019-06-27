package com.tiantiantao.controller.foreground;

import com.tiantiantao.model.Cart;
import com.tiantiantao.pojo.Commodity;
import com.tiantiantao.service.CartService;
import com.tiantiantao.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class CartForeController {

    @Autowired
    CommodityService commodityService;

    @Autowired
    CartService cartService;

    @Autowired
    HttpServletRequest request;

    @RequestMapping("/addCommodityToCart.action")
    public String addCommodityToCart(String commodityId){       //将商品加入购物车
        //从session中取出购物车，如果没有，则创建一个
        Cart cart = (Cart)request.getSession().getAttribute("cart");
        if (cart==null){
            cart = new Cart();
        }

        //查找商品
        Commodity commodity = commodityService.findById(commodityId);

        //增加商品数量
        cart = cartService.addCommodityToCart(cart,commodity);

        //将购物车放入session
        request.getSession().setAttribute("cart",cart);

        return "foreground/cart";
    }

    @RequestMapping("/reduceCommodityFromCart.action")
    public String reduceCommodityFromCart(String commodityId){
        //从session中取出购物车，如果没有，则创建一个
        Cart cart = (Cart)request.getSession().getAttribute("cart");
        if (cart==null){
            cart = new Cart();
        }

        //查找商品
        Commodity commodity = commodityService.findById(commodityId);

        //减少商品数量
        cart = cartService.reduceCommodityFromCart(cart,commodity);

        //将购物车放入session
        request.getSession().setAttribute("cart",cart);

        return "foreground/cart";
    }


    @RequestMapping("/deleteCommodityFromCart.action")
    public String deleteCommodityFromCart(String commodityId) {
        //从session中取出购物车，如果没有，则创建一个
        Cart cart = (Cart)request.getSession().getAttribute("cart");
        if (cart==null){
            cart = new Cart();
        }

        //查找商品
        Commodity commodity = commodityService.findById(commodityId);


        //删除商品
        cart = cartService.deleteCommodityFromCart(cart,commodity);

        //将购物车放入session
        request.getSession().setAttribute("cart",cart);

        return "foreground/cart";
    }

    @RequestMapping("/toCart.action")
    public String toCart(){

        return "foreground/cart";
    }
}
