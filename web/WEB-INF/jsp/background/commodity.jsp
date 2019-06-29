<%--
  Created by IntelliJ IDEA.
  User: Ethan
  Date: 2019/4/17
  Time: 20:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh">
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
    商品管理
    <a class="btn btn-link btn-sm" href="${pageContext.request.contextPath }/commodity/toAddCommodity.action">添加商品</a>
    <div style = "width:650px;display:inline-block"></div>
  </h1>

  <table class="table table-hover">
    <thead>
    <tr>
      <th>商品条码</th>
      <th>商品名称</th>
      <th>商品类别</th>
      <th>商品价格</th>
      <th class="text-center" width="140">操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${commodityList }" var="item">
    <tr>
      <td>${item.code }</td>
      <td>${item.name }</td>
      <td>${item.type }</td>
      <td>${item.price }</td>
      <td class="text-center">
        <a class="btn btn-info btn-sm" href="${pageContext.request.contextPath }/commodity/toEditCommodity.action?commodityId=${item.commodityId }">编辑</a>
        <a class="btn btn-danger btn-sm" href="${pageContext.request.contextPath }/commodity/deleteCommodityById.action?commodityId=${item.commodityId  }">删除</a>
      </td>
    </tr>
    </c:forEach>
    </tbody>
  </table>
</main>
</body>
</html>