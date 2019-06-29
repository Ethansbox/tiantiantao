<%--
  Created by IntelliJ IDEA.
  User: Ethan
  Date: 2019/5/31
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
    <title>Title</title>
</head>
<body>
<div class="navbar navbar-expand navbar-dark bg-dark fixed-top">
    <a class="navbar-brand" href="#">天天淘后台系统</a>
    <ul class="navbar-nav mr-auto">
        <li class="navbar-nav">
            <a class="nav-link" href="${pageContext.request.contextPath }/commodity/findAllCommodity.action">商品管理</a>
        </li>        <li class="navbar-nav">
            <a class="nav-link" href="${pageContext.request.contextPath }/user/findAllUsers.action">会员管理</a>
        </li>        <li class="navbar-nav">
            <a class="nav-link" href="${pageContext.request.contextPath }/type/findAllType.action">类别管理</a>
        </li>        <li class="navbar-nav">
            <a class="nav-link" href="${pageContext.request.contextPath }/orders/findAllOrders.action">订单管理</a>
        </li>
    </ul>
</div>
</body>
</html>
