<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Ethan
  Date: 2019/6/7
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="qing tok">
    <div class="juzhong">
        <div class="lf" style="margin-left:0px;">欢迎来到天天淘网上商城！
        <a href="${pageContext.request.contextPath }/findAllCommodity.action" class="btn">首页</a></div>
        <div class="rf toa">
            <ul id="sddm">
                <c:if test="${not empty user}">
                    <a href="#">欢迎您，${user.username }</a>
                </c:if>
                <c:if test="${empty user}">
                    <a href="login.jsp">请先登录</a>
                    <a href="register.jsp" style="color:#ec2832; padding-left:0;">注册</a>
                </c:if>
                <li style="padding-left:10px; background:url(../images/gwc.png) no-repeat left center; background-size:16px;">
                    <a href="/toCart.action">购物车</a>
                    <span>|</span></a>
                </li>
                <c:if test="${not empty user}">
                    <a href="/toPersonal.action">我的个人中心</a>
                </c:if>
                <c:if test="${empty user}">
                    <a href="${pageContext.request.contextPath }/toLogin.action">我的个人中心</a>
                </c:if>
            </ul>
        </div>
    </div>
</div>
<!--logo -->
<div class="qing lok">
    <div class="juzhong">
        <div class="rf">
            <form name="search" action="${pageContext.request.contextPath }/findCommodityByName.action" method="post" style="display:inline; float:left; width:500px;">
                <div class="souk">
                    <input type="text" name="name" id="name" placeholder="请输入关键字" class="sous">
                    <div class="sout"><a href="#"></a><a href="#"></a></div>
                    <input type="submit" value="" class="souc">
                </div>
            </form>
        </div>
    </div>
</div>
<!--导航 -->
<div class="qing dabg" style=" overflow:visible; background:#e01222;">
    <div class="juzhong" style=" overflow:visible;">
        <div class="lf fenl">
            <div id="category-2015" onMouseOver="this.className='on'" onmouseleave="this.className=''">
                <div class="ld">
                    <img alt="所有产品分类" src="../images/flbg.png" width="21" height="15" class="lf">所有产品分类
                </div>
                <div id="allsort" style="background:#fff;">
                    <div class="item" onmouseover="this.className='item on'" onmouseleave="this.className='item'">
              <span>
                <a href="#" class="cpfltb1">日用家居</a>

              </span>
                        <div class="i-mc"></div>
                    </div>
                    <div class="item" onmouseover="this.className='item on'" onmouseleave="this.className='item'">
              <span>
                <a href="#" class="cpfltb2">美妆个护</a>
                <b></b>
              </span>
                        <div class="i-mc">
                        </div>
                    </div>
                    <div class="item" onmouseover="this.className='item on'" onmouseleave="this.className='item'">
              <span>
                <a href="#" class="cpfltb3">食品特产</a>
                <b></b>
              </span>
                        <div class="i-mc">
                        </div>
                    </div>
                    <div class="item" onmouseover="this.className='item on'" onmouseleave="this.className='item'">
              <span>
                <a href="#" class="cpfltb4">店铺展示</a>
                <b></b>
              </span>

                    </div>
                    <div class="item" onmouseover="this.className='item on'" onmouseleave="this.className='item'">
              <span>
                <a href="#" class="cpfltb5">珠宝首饰</a>
                <b></b>
              </span>
                        <div class="i-mc"></div>
                    </div>
                    <div class="item" onmouseover="this.className='item on'" onmouseleave="this.className='item'">
              <span>
                <a href="#" class="cpfltb6">数码办公</a>
                <b></b>
              </span>
                        <div class="i-mc"></div>
                    </div>
                    <div class="item" onmouseover="this.className='item on'" onmouseleave="this.className='item'">
              <span>
                <a href="#" class="cpfltb7">家用电器</a>
                <b></b>
              </span>
                        <div class="i-mc"></div>
                    </div>
                    <div class="item" onmouseover="this.className='item on'" onmouseleave="this.className='item'">
              <span>
                <a href="#" class="cpfltb8">生活服务</a>
                <b></b>
              </span>
                        <div class="i-mc"></div>
                    </div>
                </div>
            </div>
            <!--分类end -->
        </div>

    </div>

    <style>
        .yplb dd {
            display: block;
            float: left;
            width: 279px;
            border: 1px solid #f1f1f1;
            margin-top: -1px;
            margin-left: -1px;
            padding: 15px;
            margin: 10px;
        }

        [data-am-widget=tabs] {
            margin: 0px;
        }

        .am-tabs-bd .am-tab-panel {
            padding: 0;
        }

        .am-tabs-default .am-tabs-nav a {
            font-size: 18px;
        }
    </style>
</body>
</html>
