package com.tiantiantao.service;

import com.tiantiantao.model.Cart;
import com.tiantiantao.pojo.Commodity;

public interface CartService {

    Cart addCommodityToCart(Cart cart, Commodity commodity);    //将商品添加入购物车

    Cart reduceCommodityFromCart(Cart cart,Commodity commodity); //将商品数量减少

    Cart deleteCommodityFromCart(Cart cart,Commodity commodity);   //将商品移出购物车

}
