<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
    <title>天天淘网上商城</title>
    <meta name="Keywords" content="天天淘网上商城" />
    <meta name="Description" content="天天淘网上商城" />
    <link href="../css/style.css" type="text/css" rel="stylesheet">
    <link href="../css/nav2.css" type="text/css" rel="stylesheet"><!--藏品分类 -->



</head>
<body>
<%@ include file="forehead.jsp" %>



    <div class="qing juzhong">

        <div class="rf" style="width:1200px;">
            <dl class="yplb">
                <c:forEach items="${commodityList }" var="item">
                    <dd> <a href="shangpinxiangqing.html" class="yptu"><img src="../images/tt4.jpg" width="230" height="230"></a>
                        <div class="ypmc"> <a href="shangpinxiangqing.html">${item.name }</a> </div>
                        <div>
                            <div class="jiag">${item.price }</div>
                            <a href="${pageContext.request.contextPath }/addCommodityToCart.action?commodityId=${item.commodityId }" class="mai"><span>加入购物车</span><span>加入购物车</span></a> </div>
                    </dd>
                </c:forEach>
            </dl>
            <!--页码 -->
            <div class="qing yema" style="margin-top:36px;">
                <table border="0" cellspacing="0" cellpadding="0">
                    <tbody><tr>
                        <td>
                            <a href="#" class="sye"></a>
                            <a href="#" class="yeen"><span>1</span><span>1</span></a>
                            <a href="#"><span>2</span><span>2</span></a>
                            <a href="#"><span>3</span><span>3</span></a>
                            <a href="#">...</a>
                            <a href="#"><span>18</span><span>18</span></a>
                            <a href="#" class="xye"></a>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!--会员内容 -->

</div>
<link>
</body>
</html>
