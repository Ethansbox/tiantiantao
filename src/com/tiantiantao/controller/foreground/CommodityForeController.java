package com.tiantiantao.controller.foreground;

import com.tiantiantao.pojo.Commodity;
import com.tiantiantao.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class CommodityForeController {

    @Autowired
    private CommodityService commodityService;

    @Autowired
    HttpServletRequest request;

    @RequestMapping("/findAllCommodity.action")
    public String findAllCommoditys(){
        //获取商品数据
        List<Commodity> commodityList = commodityService.findAll();

        //将商品列表放入session中
        request.getSession().setAttribute("commodityList", commodityList);

        return "foreground/show";
    }

    @RequestMapping("/findCommodityByName.action")
    public String findCommodityByName(String name){
        List<Commodity> commodityList = commodityService.findCommodityByName(name);

        //将商品列表放入session中
        request.getSession().setAttribute("commodityList", commodityList);

        return "foreground/show";
    }

}
