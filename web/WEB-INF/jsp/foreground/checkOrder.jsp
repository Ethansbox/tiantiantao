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
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8"/>
    <title>天天淘网上商城</title>
    <meta name="Keywords" content="天天淘网上商城"/>
    <meta name="Description" content="天天淘网上商城"/>
    <link href="../css/style.css" type="text/css" rel="stylesheet">
    <link href="../css/nav2.css" type="text/css" rel="stylesheet"><!--藏品分类 -->


</head>
<body>

<%@ include file="forehead.jsp" %>

<form id="myform" action="" method="post">
    <div class="qing tibg">
        <div class="juzhong gwc-tk">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody>
                <tr>
                    <td><img src="../images/pa1.png" width="273" height="19"></td>
                    <td><img src="../images/pa2.png" width="362" height="19"></td>
                    <td><img src="../images/pa30.png" width="615" height="19"></td>
                </tr>
                </tbody>
            </table>
            <div class="qing chm">
                <div class="lf" style="width:295px; text-align:right;">购物车</div>
                <div class="lf" style="width:386px; text-align:right;">核对订单信息</div>
                <div class="lf" style="width:323px; text-align:right;">支付成功</div>
            </div>
        </div>
    </div>
    <!--核对信息 -->
    <div class="qing juzhong">

        <div class="cenbg">
            <div class="qing">
                <div class="xxti">收货地址</div>
                <div class="qing addk">
                    <div class="address_li add  addnn" id="div_address_id_41" onclick="change_address('41');">
                        <input type="radio" name="address_id" id="address_id_41" value="41" checked=""
                               style="display:none;">
                        <div class="ad-m">${user.realname }</div>
                        <div class="ad-js">
                            ${user.tel }<br>
                                ${user.address }<br>
                        </div>
                        <%--<div class="ad-bj">--%>
                            <%--<a href="my-address-edit.php?id=41">修改</a>--%>
                        <%--</div>--%>
                    </div>
                    <%--<a href="my-address-add.php" class="add">--%>
                    <%--<div class=" add-tj"><img src="../images/dizhi_03.png" width="39" height="39">添加新地址</div>--%>
                    <%--</a>--%>
                </div>
            </div>
            <!--支付方式 -->
            <div class="qing fuk">
                <div class="fu-ti">
                    <div class="xxti">支付方式</div>
                </div>
                <div class="lf"><!--选中状态 class为paynn -->
                    <input type="hidden" name="pay_method" value="1" id="pay_method">
                    <a href="#" id="pay_method_1" class="pay paynn"><img src="../images/pay1.png" width="160" height="60"></a>
                    <a href="#" id="pay_method_2" class="pay"><img src="../images/pay2.png" width="160" height="60"></a>
                    <a href="#" id="pay_method_3" class="pay"><img src="../images/pay3.png" width="160" height="60"></a>
                </div>
            </div>
            <!--配送方式 -->
            <div class="qing dizk">
                <div class="xxti lf">配送方式</div>
                <div class="xxps">快递配送</div>
            </div>
            <!--商品及优惠 -->
            <div class="qing">
                <div class="qing">
                    <div class="xxti lf">商品及优惠</div>
                    <a href="/toCart.action" class="rf hui">返回购物车<span> &gt;</span></a>
                </div>
                <div class="qing xcp">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                        <c:forEach items="${cart.cartItemMap }" var="item">
                            <tr>
                                <td width="75"><img src="../images/484069aec.jpg" width="59" height="45"></td>
                                <td width=""><a href="product-view.php?id=1351" class="dj-m1">${item.value.commodity.name }</a>
                                </td>
                                <td width="150" align="center">
                                    <div class="xsl">${item.value.commodity.price } ×${item.value.buyNum }</div>
                                </td>
                                <td width="150" align="center">
                                    <div class="xslj">${item.value.itemSum }</div>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="qing fuyk0">
                    <div class="rf fuyk">
                        <div class="fu-you2 rf">${fn:length(cart.cartItemMap)}件</div>
                        <div class="fu-yu2 rf">商品件数：</div>
                    </div>
                    <div class="rf fuyk">
                        <div class="fu-you2 rf">${cart.total }元</div>
                        <div class="fu-yu2 rf">商品总金额：</div>
                    </div>
                    <div class="rf fuyk">
                        <div class="fu-you3 rf">
                            <sapn>${cart.total }元</sapn>
                        </div>
                        <div class="fu-yu2 fu-yu3 rf">应付总金额：</div>
                    </div>
                </div>
                <div class="qing rf"><a href="/balanceAccounts.action"><input type="button" value="确认并支付" class="jie2"></a>
                </div>
            </div>

        </div>
    </div>
</form>
<!--会员内容 -->

</div>
<link>
</body>
</html>
