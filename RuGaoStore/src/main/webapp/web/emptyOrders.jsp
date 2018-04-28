<%@ page pageEncoding="utf-8"  contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>我的订单</title>
    <link href="${basePath}/css/orders.css" rel="Stylesheet" />
    <link href="${basePath}/css/header.css" rel="Stylesheet" />
    <link href="${basePath}/css/footer.css" rel="Stylesheet" />
</head>
<body>
<!-- 页面顶部-->
<jsp:include page="header.jsp"></jsp:include>
<!-- nav主导航-->
<nav id="nav">
    <ul>
        <li><a href="${basePath}/main/showIndex.do" class="acti">首页</a></li>
        <li><a href="${basePath}/main/showIndex.do#computer" >电脑办公</a></li>
        <li><a href="${basePath}/main/showIndex.do#stationery" >办公文具</a></li>
    </ul>
</nav>
<!-- 我的订单导航栏-->
<div id="nav_order">
    <ul>
        <li><a href="index.jsp">首页<span>&gt;</span>订单管理</a></li>
    </ul>
</div>
<!--我的订单内容区域 #container-->
<div id="container" class="clearfix">
    <!-- 左边栏-->
    <div id="leftsidebar_box" class="lf">
        <div class="line"></div>
        <dl class="my_order">
            <dt >我的订单
                <img src="${basePath}/images/myOrder/myOrder2.png">
            </dt>
            <dd class="first_dd"><a href="#">全部订单</a></dd>
            <dd>
                <a href="#">
                    待付款
                    <span><!--待付款数量--></span>
                </a>
            </dd>
            <dd>
                <a href="#">
                    待收货
                    <span><!--待收货数量-->1</span>
                </a>
            </dd>
            <dd>
                <a href="#">
                    待评价<span><!--待评价数量--></span>
                </a>
            </dd>
            <dd>
                <a href="#">退货退款</a>
            </dd>
        </dl>

        <dl class="footMark">
            <dt >我的优惠卷<img src="${basePath}/images/myOrder/myOrder1.png"></dt>
        </dl>

        <dl class="address">
            <dt>收货地址<img src="${basePath}/images/myOrder/myOrder1.png"></dt>
        </dl>

        <dl class="count_managment">
            <dt >帐号管理<img src="${basePath}/images/myOrder/myOrder1.png"></dt>
            <dd class="first_dd"><a href="#">我的信息</a></dd>
            <dd><a href="#">安全管理</a></dd>
        </dl>
    </div>
    <!-- 右边栏-->
    <div class="rightsidebar_box rt" >
        <div class="order_empty">
            <img src="${basePath}/images/myOrder/myOrder3.png" alt=""/>
            <p>你可能还没有订单(⊙o⊙)</p>
            <span>赶紧去下单吧 <b>去购物</b></span>
        </div>
    </div>
</div>

<!-- 品质保障，私人定制等-->
<div id="foot_box">
    <div class="icon1 lf">
        <img src="${basePath}/images/footer/icon1.png" alt=""/>

        <h3>品质保障</h3>
    </div>
    <div class="icon2 lf">
        <img src="${basePath}/images/footer/icon2.png" alt=""/>

        <h3>私人定制</h3>
    </div>
    <div class="icon3 lf">
        <img src="${basePath}/images/footer/icon3.png" alt=""/>

        <h3>特殊产品</h3>
    </div>
    <div class="icon4 lf">
        <img src="${basePath}/images/footer/icon4.png" alt=""/>

        <h3>专属特权</h3>
    </div>
</div>
<!-- 页面底部-->
<div class="foot_bj">
    <div id="foot">
        <div class="lf">
             <p class="footer2"><img src="${basePath}/images/footer/footerFont.png" alt=""/></p>
        </div>
        <div class="foot_left lf">
            <ul>
                <li><a href="#"><h3>买家帮助</h3></a></li>
                <li><a href="#">新手指南</a></li>
                <li><a href="#">服务保障</a></li>
                <li><a href="#">常见问题</a></li>
            </ul>
            <ul>
                <li><a href="#"><h3>商家帮助</h3></a></li>
                <li><a href="#">商家入驻</a></li>
                <li><a href="#">商家后台</a></li>
            </ul>
            <ul>
                <li><a href="#"><h3>关于我们</h3></a></li>
                <li><a href="#">联系我们</a></li>
                <li>
                    <img src="${basePath}/images/footer/wechat.png" alt=""/>
                    <img src="${basePath}/images/footer/sinablog.png" alt=""/>
                </li>
            </ul>
        </div>
        <div class="service">
            <img src="${basePath}/images/footer/ios.png" class="lf">
            <img src="${basePath}/images/footer/android.png" alt="" class="lf"/>
        </div>
		<!-- 页面底部-备案号 #footer -->
        <div class="record">
            &copy;2018  版权所有 川ICP证xxxxxxxxxxx
        </div>
    </div>
</div>
</body>
<script src="${basePath}/js/jquery-3.1.1.min.js"></script>
<script src="${basePath}/js/index.js"></script>
<script src="${basePath}/js/jquery.page.js"></script>
<script type="text/javascript" src="${basePath}/js/orders.js"></script>

</html>