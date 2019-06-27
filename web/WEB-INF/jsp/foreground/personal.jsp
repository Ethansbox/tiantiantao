<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: Ethan
  Date: 2019/6/6
  Time: 23:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8"/>
    <title>天天淘网上商城</title>
    <meta name="Keywords" content="天天淘网上商城"/>
    <meta name="Description" content="天天淘网上商城"/>
    <link href="../css/style.css" type="text/css" rel="stylesheet">
    <link href="../css/nav2.css" type="text/css" rel="stylesheet"><!--藏品分类 -->


</head>
<body>

<%@ include file="forehead.jsp" %>

<div style="width:1200px; margin:0 auto;">
    <div style="width:900px; float:right;">
        <!--页面标题 -->
        <div class="qing cenk"><div class="juzhong" style="width:900px;"><div class="qing zilk"><div class="lf"><div class="lf"></div></div></div></div></div>
        <!--会员内容 -->
        <div class="qing juzhong" style="width:900px;">
            <div style="width:900px; line-height:40px; background:#e01222; color:#FFF; font-size:16px; padding-left:15px;">
                个人资料
            </div>
            <div class="cenbg" style="    margin-bottom: 40px;">
                <form id="infoform" action="${pageContext.request.contextPath }/updateUser.action" method="post">
                    <div class="xinxi">
                        <input type="hidden" value="${user.userId }"name="userId" id="userId">
                        <div class="qing">
                            <div class="lf">用&nbsp;&nbsp;户&nbsp;名：</div>
                            <input type="text" value="${user.username }" class="xie" name="username" id="username">
                        </div>
                        <div class="qing">
                            <div class="lf">手&nbsp;&nbsp;机&nbsp;号：</div>
                            <input type="text" value="${user.tel }" class="xie" name="tel" id="tel">
                        </div>
                        <div class="qing">
                            <div class="lf">姓　　名：</div>
                            <input type="text" value="${user.realname }" class="xie" name="realname" id="realname">
                        </div>
                        <div class="qing">
                            <div class="lf">性　　别：</div>
                            <div class="sex">
                                <c:if test="${user.sex eq 0}">
                                    <input type="radio" name="sex" id="nan" value="0" class="xuz" checked><label
                                        for="nan">男</label>
                                    <input type="radio" name="sex" id="nv" value="1" class="xuz"><label
                                        for="nv">女</label>
                                </c:if>
                                <c:if test="${user.sex eq 1}">
                                    <input type="radio" name="sex" id="nan" value="0" class="xuz"><label
                                        for="nan">男</label>
                                    <input type="radio" name="sex" id="nv" value="1" class="xuz" checked><label
                                        for="nv">女</label>
                                </c:if>
                            </div>
                        </div>
                        <div class="qing">
                            <div class="lf">地　　址：</div>
                            <input type="text" value="${user.address }" class="xie" name="address" id="address">
                        </div>
                        <c:if test="${isUpdate eq true}">
                            <div class="toubg" >
                                <span class="name-pass">保存成功</span>
                            </div>
                        </c:if>
                        <div class="qing aniu">
                            <input type="submit" value="保存" class="bao1">
                            <a href="/logout.action" class="bao2">退出当前账户</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="grzx_l">
        <div class="photo">
            <img src="../images/moren_touxiang.jpg" width="100%">
            <p>个人中心</p>
        </div>
        <ul style="padding-bottom:20px;">
            <li style="height:50px;"><a><img src="../images/wdxx.png" width="25">
                <p style="padding:0; color:#000; font-size:16px; line-height:50px;">我的交易</p></a></li>
            <li><a href="wodedingdan.html"><p>我的订单</p></a></li>
            <li style="height:50px;"><a><img src="../images/xfjl.png" width="25">
                <p style="padding:0; color:#000; font-size:16px; line-height:50px;">会员资料</p></a></li>
            <li><a href="gerenziliao.html"><p>个人资料</p></a></li>
            <li><a href="shouhuodizhi.html"><p>收货地址</p></a></li>
            <li><a href="bangdingshoujihao.html"><p>绑定手机号</p></a></li>
            <li><a href="wodetuijian.html"><p>我的推荐</p></a></li>
            <li><a href="liuyan.html"><p>留言</p></a></li>
        </ul>
    </div>
</div>


</div>


<!--会员内容 -->

</div>
<link>
</body>
</html>
