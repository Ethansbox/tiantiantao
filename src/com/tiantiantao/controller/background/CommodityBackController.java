package com.tiantiantao.controller.background;

import com.tiantiantao.pojo.Commodity;
import com.tiantiantao.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class CommodityBackController {

    @Autowired
    private CommodityService commodityService;

    @Autowired
    HttpServletRequest request;


    /**
     * 显示商品列表
     */
    @RequestMapping("/commodity/findAllCommodity.action")
    public ModelAndView findAllCommoditys() {
        //获取商品数据
        List<Commodity> commodityList = commodityService.findAll();

        ModelAndView modelAndView = new ModelAndView();

        //将商品数据放入就modelandview中
        modelAndView.addObject("commodityList", commodityList);

        request.getSession().setAttribute("commodityList", commodityList);

        // 设置逻辑视图
        modelAndView.setViewName("background/commodity");
        //11111222

        return modelAndView;
    }

    /**
     * 添加商品
     */
    @RequestMapping("/commodity/addCommodity.action")
    public ModelAndView addCommodity(@ModelAttribute Commodity commodity) {
        ModelAndView modelAndView = new ModelAndView();

        //用于判断商品条码是否已经存在
        boolean isAddCommodity;
        //判断条码是否为空
        boolean isCodeEmpty;

        //如果商品条码为空，则跳回添加页面
        if (commodity.getCode()==null||commodity.getCode()==""){
            modelAndView.setViewName("background/addCommodity");
            isCodeEmpty = true;
            modelAndView.addObject("isCodeEmpty",isCodeEmpty);
            return modelAndView;
        }

        //判断商品条码是否已经存在
        if(commodity.getCode()!=null){
            Commodity temp = commodityService.findByCode(commodity.getCode());

            //如果返回不为空，说明已经存在
            if(temp!=null){
                isAddCommodity = false;
                modelAndView.addObject("isAddCommodity",isAddCommodity);
                //设置逻辑视图
                modelAndView.setViewName("background/addCommodity");
            }

            //如果返回空，则直接插入
            else {
                isAddCommodity = true;
                commodityService.addCommodity(commodity);
                modelAndView.addObject("isAddCommodity",isAddCommodity);
                //设置逻辑视图
                modelAndView.setViewName("background/commodity");
            }

        }


        //获取商品列表
        List<Commodity> commodityList = (List<Commodity>) request.getSession().getAttribute("commodityList");

        //往列表添加商品
        commodityList.add(commodity);

        request.getSession().setAttribute("commodityList", commodityList);


        return modelAndView;
    }

    /**
     * 跳转到编辑商品
     */
    @RequestMapping("/commodity/toEditCommodity.action")
    public ModelAndView toEditCommodity(String commodityId) {
        //通过id找到商品
        Commodity commodity = commodityService.findById(commodityId);

        ModelAndView modelAndView = new ModelAndView();

        //将商品放入model
        modelAndView.addObject("commodity",commodity);

        modelAndView.setViewName("background/editCommodity");

        return modelAndView;
    }

    /**
     * 编辑商品
     */
    @RequestMapping("/commodity/editCommodity.action")
    public String editCommodity(Commodity commodity){
        //修改商品
        commodityService.updateCommodity(commodity);

        //重新查找所有商品
        List<Commodity> commodityList = commodityService.findAll();

        //重新将商品列表添加到session中
        request.getSession().setAttribute("commodityList", commodityList);

        return "background/commodity";
    }

    /**
     * 跳转添加商品视图
     */
    @RequestMapping("/commodity/toAddCommodity.action")
    public String toAddCommodity() {
        return "background/addCommodity";
    }


    /**
     * 删除一个商品
     */
    @RequestMapping("/commodity/deleteCommodityById.action")
    public String deleteCommodityById(String commodityId) {
        //调用service删除商品
        commodityService.deleteCommodityById(commodityId);

        //重新查找所有商品
        List<Commodity> commodityList = commodityService.findAll();

        //重新将商品列表添加到session中
        request.getSession().setAttribute("commodityList", commodityList);

        //返回商品视图
        return "background/commodity";
    }



}
