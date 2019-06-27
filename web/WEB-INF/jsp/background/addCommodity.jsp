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
    <title>天天淘后台系统</title>
    <link rel="stylesheet" href="../assets/css/bootstrap.css">
    <link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>
<nav class="navbar navbar-expand navbar-dark bg-dark fixed-top">
    <a class="navbar-brand" href="/commodity/findAllCommodity.action">天天淘后台系统</a>
    <ul class="navbar-nav mr-auto">
        <li class="nav-item">
            <a class="nav-link" href="/commodity/findAllCommodity.action">商品管理</a>
        </li>
    </ul>
</nav>
<main class="container">
    <h1 class="heading">添加商品</h1>

    <form action="/commodity/addCommodity.action" method="post">
        <div class="form-group">
            <label for="code">商品条码</label>
            <input name="code" type="text" class="form-control" id="code">
        </div>
        <div class="form-group">
            <label for="name">商品名称</label>
            <input name="name" type="text" class="form-control" id="name">
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
            <input name="price" type="text" class="form-control" id="price">
        </div>
        <input type="submit"  class="btn btn-primary" value="保存"/>
    </form>
</main>
</body>
</html>
