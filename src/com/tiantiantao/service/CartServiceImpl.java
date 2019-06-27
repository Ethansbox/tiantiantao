package com.tiantiantao.service;

import com.tiantiantao.model.Cart;
import com.tiantiantao.model.CartItem;
import com.tiantiantao.pojo.Commodity;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.Map;

@Service
public class CartServiceImpl implements CartService {

    @Override
    //将商品添加入购物车
    public Cart addCommodityToCart(Cart cart, Commodity commodity) {
        //获得购物车列表
        Map<String, CartItem> cartItemMap = cart.getCartItemMap();
        String code = commodity.getCode();

        //如果存在该商品的购物项，则增加数量，修改购物项小计
        if(cartItemMap.containsKey(code)){
            CartItem cartItem = cartItemMap.get(code);

            //增加购买数量
            Integer buyNum = cartItem.getBuyNum();
            buyNum++;
            cartItem.setBuyNum(buyNum);

            //更新购物项小计,保留小数点后两位
            double itemSum = buyNum*cartItem.getCommodity().getPrice();
            cartItem.setItemSum(new BigDecimal(itemSum).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue());

            //更新购物车
            cart.setCartItemMap(cartItemMap);
        }

        //如果购物车中不存在该商品的购物项，则添加一项
        else {
            CartItem item = new CartItem();
            item.setCommodity(commodity);
            item.setBuyNum(1);
            item.setItemSum(new BigDecimal(commodity.getPrice()).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue());
            cart.getCartItemMap().put(commodity.getCode(),item);
        }

        //更新总计
        double total = cart.getTotal()+commodity.getPrice();
        cart.setTotal(new BigDecimal(total).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue());

        return cart;
    }


    @Override
    //减少购物车中的商品数量
    public Cart reduceCommodityFromCart(Cart cart, Commodity commodity) {
        //获得购物车项
        Map<String,CartItem> cartItemMap = cart.getCartItemMap();
        String code = commodity.getCode();

        if(cartItemMap.containsKey(code)){
            CartItem cartItem = cartItemMap.get(code);

            //减少购买数量
            Integer buyNum = cartItem.getBuyNum();
            //如果数量为1，则直接删除该商品的购物项
            if(buyNum==1){
                cartItemMap.remove(code);
            }

            //如果数量不为1，则减少数量，更新小计
            else {
                buyNum--;
                cartItem.setBuyNum(buyNum);
                double itemSum = buyNum*cartItem.getCommodity().getPrice();
                cartItem.setItemSum(new BigDecimal(itemSum).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue());
                cart.setCartItemMap(cartItemMap);
            }
        }
        //更新总计
        double total = cart.getTotal()-commodity.getPrice();
        cart.setTotal(new BigDecimal(total).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue());

        return cart;
    }

    @Override
    public Cart deleteCommodityFromCart(Cart cart, Commodity commodity) {
        String code = commodity.getCode();
        //获得购物车项
        Map<String, CartItem> cartItemMap = cart.getCartItemMap();

        //购物车中存在此商品购物车项才删除
        if(cartItemMap.containsKey(code)){
            CartItem cartItem = cartItemMap.get(code);
            //获取删除前的购买数量
            Integer buyNum = cartItem.getBuyNum();
            //删除购物项
            cartItemMap.remove(code);

            //更新总计
            double total = cart.getTotal()-commodity.getPrice()*buyNum;
            cart.setTotal(new BigDecimal(total).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue());
        }

        return cart;
    }
}
