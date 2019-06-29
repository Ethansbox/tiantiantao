<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: Ethan
  Date: 2019/6/6
  Time: 23:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <%--<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8"/>--%>
    <meta http-equiv="x-ua-compatible" content="IE=edge" >
    <title>天天淘网上商城</title>
    <meta name="Keywords" content="天天淘网上商城"/>
    <meta name="Description" content="天天淘网上商城"/>
    <link href="${pageContext.request.contextPath }/css/style.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/nav2.css" type="text/css" rel="stylesheet"><!--藏品分类 -->


</head>
<body>

<%@ include file="forehead.jsp" %>


<div class="qing tibg">
    <div class="juzhong gwc-tk">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tbody><tr>
                <td><img src="${pageContext.request.contextPath }/images/pa1.png" width="273" height="19"></td>
                <td><img src="${pageContext.request.contextPath }/images/pa20.png" width="362" height="19"></td>
                <td><img src="${pageContext.request.contextPath }/images/pa30.png" width="615" height="19"></td>
            </tr>
            </tbody></table>
        <div class="qing chm">
            <div class="lf" style="width:295px; text-align:right;">购物车</div>
            <div class="lf" style="width:386px; text-align:right;">核对订单信息</div>
            <div class="lf" style="width:323px; text-align:right;">支付成功</div>
        </div>
    </div>
</div>

<div class="qing juzhong" style="margin-bottom:40px;">
    <div class="gwl">
        <div class="gw-m">
            <div class="gw-m1">商品名称</div>
            <div class="gw-m2">单价</div>
            <div class="gw-m3">数量</div>
            <div class="gw-m4">小计</div>
            <div class="gw-m5">操作</div>
        </div>

        <c:forEach items="${cart.cartItemMap }" var="item">
            <div class="gwlb">
                <a href="#" class="gw-tu" style="background:url(${pageContext.request.contextPath }/images/484069aec.jpg) center center no-repeat;"></a>
                <div class="gw-jk"><a href="#">${item.value.commodity.name }</a></div>
                <div class="gw-jg">${item.value.commodity.price }元</div>
                <div class="gw-sl">
                    <a href="${pageContext.request.contextPath }/reduceCommodityFromCart.action?commodityId=${item.value.commodity.commodityId }" class="gw-sl1 lf">-</a>
                    <input disabled="disabled" type="text" name="order_num_119" id="order_num_119" value=${item.value.buyNum } onblur="change_num('119')">
                    <a href="${pageContext.request.contextPath }/addCommodityToCart.action?commodityId=${item.value.commodity.commodityId }" class="gw-sl2 rf">+</a>
                </div>
                <div class="gw-jg" id="heji_119">${item.value.itemSum }</div>
                <a href="${pageContext.request.contextPath }/deleteCommodityFromCart.action?commodityId=${item.value.commodity.commodityId }" class="shanc">×</a>
            </div>
        </c:forEach>
    </div>
    <div class="gwzj">
        <div class="lf chjx"><a href="${pageContext.request.contextPath }/findAllCommodity.action">继续购物</a>　　|　　共<span
                id="zongshuliang">${fn:length(cart.cartItemMap)}</span>件商品
        </div>
        <div class="rf">
            <div class="lf chhj">合计：<span id="zongjiage">${cart.total }</span>元</div>
            <a href="${pageContext.request.contextPath }/toCheckOrder.action" class="jie"><span>去结算</span><span>结算</span></a>
        </div>
    </div>
</div>
<!--会员内容 -->

</div>
<link>
</body>
</html>
