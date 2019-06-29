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


<form id="myform" action="" method="post">
    <div class="qing tibg">
        <div class="juzhong gwc-tk">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                    <td><img src="${pageContext.request.contextPath }/images/pa1.png" width="273" height="19"></td>
                    <td><img src="${pageContext.request.contextPath }/images/pa2.png" width="362" height="19"></td>
                    <td><img src="${pageContext.request.contextPath }/images/pa3.png" width="615" height="19"></td>
                </tr>
                </tbody></table>
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

            <div class="qing" style="width: 500px;margin: 50px auto;">
                <img src="${pageContext.request.contextPath }/images/zfcg.png" width="100" style=" float:left;">
                <div style="float:left; margin-left:30px;">
                    <h1 style="font-size:20px;">支付成功！</h1>
                    <p style="font-size:14px;">您的订单已经支付成功，请耐心等待卖家发货。</p>
                    <a href="${pageContext.request.contextPath }/findAllCommodity.action"><input type="button" value="继续购物" class="jie2" style="line-height:35px; margin-right:20px; border-radius:5px; height:35px; margin-top:10px; background:#666"></a>
                    <a href="${pageContext.request.contextPath }/toPersonal.action"><input type="button" value="个人中心" class="jie2"  style="line-height:35px; margin-right:20px; border-radius:5px; height:35px; margin-top:10px;"></a>
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
