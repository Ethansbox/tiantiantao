<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Ethan
  Date: 2019/4/19
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
    <title>天天淘后台系统</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/style.css">
</head>
<body>
<nav class="navbar navbar-expand navbar-dark bg-dark fixed-top">
    <a class="navbar-brand" href="${pageContext.request.contextPath }/commodity/findAllCommodity.action">天天淘后台系统</a>
    <ul class="navbar-nav mr-auto">
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath }/commodity/findAllCommodity.action">商品管理</a>
        </li>
    </ul>
</nav>
<main class="container">
    <h1 class="heading">添加商品</h1>


    <form action="${pageContext.request.contextPath }/commodity/addCommodity.action" method="post">
        <c:if test="${isAddCommodity eq false}">
            <div class="form-toub" >
                <span class="name-pass">该商品条码已存在！</span>
            </div>
        </c:if>
        <c:if test="${isCodeEmpty eq true}">
            <div class="form-toub" >
                <span class="name-pass">商品条码不能为空！</span>
            </div>
        </c:if>
        <div class="form-group">
            <label for="code">商品条码</label>
            <input name="code" type="text" class="form-control" id="code" value="">
        </div>
        <div class="form-group">
            <label for="name">商品名称</label>
            <input name="name" type="text" class="form-control" id="name" value="">
        </div>
        <div class="form-group">
            <label for="type">商品类别</label>
            <select name="type" class="form-control" id="type">
                <option>FOODS</option>
                <option>CLOTHING</option>
                <option>FURNITURE</option>
                <option>STATIONERY</option>
            </select>
        </div>
        <div class="form-group">
            <label for="price">商品价格</label>
            <input name="price" type="text" class="form-control" id="price" value=0>
        </div>
        <input type="submit"  class="btn btn-primary" value="保存"/>
    </form>
</main>
</body>
</html>
