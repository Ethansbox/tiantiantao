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
        类别管理
        <a class="btn btn-link btn-sm" href="/type">查看所有类别</a>
        <a class="btn btn-link btn-sm" href="addType.jsp">添加类别</a>
        <div style = "width:650px;display:inline-block"></div>
    </h1>

    <table class="table table-hover">
        <thead>
        <tr>
            <th>类别ID</th>
            <th>类别名称</th>
            <th class="text-center" width="140">操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${typeList }" var="item">
            <tr>
                <td>${item.id }</td>
                <td>${item.typename }</td>
                <td class="text-center">
                    <a class="btn btn-info btn-sm" href=#>编辑</a>
                    <a class="btn btn-danger btn-sm" href=#>删除</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</main>
</body>
</html>
