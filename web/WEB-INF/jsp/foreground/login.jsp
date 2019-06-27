<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Ethan
  Date: 2019/6/6
  Time: 20:27
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

<body style="height:100%; overflow:hidden;background: #f1f1f1;">

<div class="qing juzhong lobg" style="position: absolute;top: 50%;margin-top: -290px; left:50%; margin-left:-600px;">
    <div class="log-rf">
        <div class="logk">
            <form id="loginform" action="${pageContext.request.contextPath }/login.action" method="post">
                <div class="loto"><img src="../images/login-t.png" width="145" height="145" class="login-t"><img src="../images/login-bg.png" width="221" height="247" class="login-bg"></div>
                <c:if test="${isRegister eq true}">
                    <div class="toubg" >
                        <span class="name-pass">注册成功！请登陆</span>
                    </div>
                </c:if>
                <div class="lo-dl">
                    <div class="lf">账号：</div>
                    <input type="text" placeholder="请输入账号" name="username" id="username">
                </div>
                <div class="lo-dl">
                    <div class="lf">密码：</div>
                    <input type="password" placeholder="请输入密码" name="password" id="password">
                </div>
                <c:if test="${isLogin eq false}">
                <div class="toubg" >
                    <span class="name-pass">用户名或密码错误</span>
                </div>
                </c:if>
                <div>
                    <a href="#"><input type="submit" value="立即登录" class="dlan"></a>
                </div>
                <div class="lo-zc">
                    还没有帐号？　　<a href="${pageContext.request.contextPath }/toRegister.action" class="lo-zc1">免费注册</a>　　|　　<a href="#" class="lo-zc2">忘记密码？</a>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>