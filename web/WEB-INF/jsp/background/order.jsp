<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Ethan
  Date: 2019/5/31
  Time: 15:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
    <title>天天淘后台系统</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/style.css">
</head>
<body>
<%@ include file="head.jsp" %>

<main class="container">
    <h1 class="heading">
        订单管理
        <div style = "width:650px;display:inline-block"></div>
    </h1>

    <table class="table table-hover">
        <thead>
        <tr>
            <th>订单编号</th>
            <th>订单价格</th>
            <th>订单状态</th>
            <th>订单地址</th>
            <th>收货人</th>
            <th class="text-center" width="140">操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${ordersList }" var="item">
            <tr>
                <td>${item.orderId }</td>
                <td>${item.total }</td>
                <c:if test="${item.state eq 0}">
                    <td>已撤销</td>
                </c:if>
                <c:if test="${item.state eq 1}">
                    <td>未执行</td>
                </c:if>
                <c:if test="${item.state eq 2}">
                    <td>已执行</td>
                </c:if>
                <td>${item.address }</td>
                <td>${item.name }</td>
                <td class="text-center">
                    <c:if test="${item.state eq 0}">
                        已撤销
                    </c:if>
                    <c:if test="${item.state eq 1}">
                        <a class="btn btn-info btn-sm" href="#">执行</a>
                    </c:if>
                    <c:if test="${item.state eq 2}">
                        已执行
                    </c:if>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</main>
</body>
</html>
