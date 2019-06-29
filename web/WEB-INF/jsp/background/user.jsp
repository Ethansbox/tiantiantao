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
        会员管理
        <div style = "width:650px;display:inline-block"></div>
    </h1>

    <table class="table table-hover">
        <thead>
        <tr>
            <th>用户名</th>
            <th>状态</th>
            <th>性别</th>
            <th>地址</th>
            <th class="text-center" width="140">操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${userList }" var="item">
            <tr>
                <td>${item.username }</td>
                <td>${item.isFreezing }</td>
                <td>${item.sex }</td>
                <td>${item.address }</td>
                <td class="text-center">
                    <c:if test="${item.isFreezing==0 }"><a class="btn btn-danger btn-sm" href="${pageContext.request.contextPath }/user/setIsFreezing.action?userId=${item.userId }">冻结</a></c:if>
                    <c:if test="${item.isFreezing==1 }"><a class="btn btn-info btn-sm" href="${pageContext.request.contextPath }/user/setIsFreezing.action?userId=${item.userId }">解冻</a></c:if>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</main>
</body>
</html>
