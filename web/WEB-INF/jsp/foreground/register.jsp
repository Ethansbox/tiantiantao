<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Ethan
  Date: 2019/6/6
  Time: 20:53
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
    <link href="../css/amazeui.min.css" rel="stylesheet" />

</head>

<body style="height:100%; background: #f1f1f1;">

<div class="qing juzhong lobg" style="position: absolute;top: 50%;margin-top: -290px; left:50%; margin-left:-600px;">
    <div class="log-rf"  style="height:auto;">
        <div class="logk">
            <form id="loginform" action="${pageContext.request.contextPath }/register.action" method="post">
                <div class="loto"><img src="../images/login-t.png" width="145" height="145" class="login-t"><img src="../images/login-bg.png" width="221" height="247" class="login-bg"></div>
                <div class="lo-dl">
                    <div class="lf">账号：</div>
                    <input type="text" placeholder="请输入账号" name="username" id="username">
                </div>
                <div class="lo-dl">
                    <div class="lf">密码：</div>
                    <input type="password" placeholder="请输入密码" name="password" id="password">
                </div>
                <div class="lo-dl">
                    <div class="lf">性别：</div>
                    <%--<input type="text" placeholder="请输入性别" name="sex" id="sex">--%>
                    <select name="sex" id="sex">
                        <option value="0">男</option>
                        <option value="1">女</option>
                    </select>
                </div>
                <div class="lo-dl">
                    <div class="lf">地址：</div>
                    <input type="text" placeholder="请输入地址" name="address" id="address">
                </div>
                <div class="lo-dl">
                    <div class="lf">电话：</div>
                    <input type="text" placeholder="请输入电话" name="tel" id="tel">
                </div>
                <div class="lo-dl">
                    <div class="lf">姓名：</div>
                    <input type="text" placeholder="请输入姓名" name="realname" id="realname">
                </div>
                <c:if test="${isRegister eq false}">
                    <div class="toubg" >
                        <span class="name-pass">该用户名已被注册！</span>
                    </div>
                </c:if>
                <div>
                    <a href="#"><input type="submit" value="立即注册" class="dlan"></a>
                </div>
                <div class="lo-zc">
                    已经注册账号？　　<a href="${pageContext.request.contextPath }/toLogin.action" class="lo-zc1">立即登录</a>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>