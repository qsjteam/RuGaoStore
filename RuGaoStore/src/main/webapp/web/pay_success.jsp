<%@ page pageEncoding="utf-8"  contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>支付页面</title>
    <link rel="stylesheet" href="${basePath}/css/header.css"/>
    <link rel="stylesheet" href="${basePath}/css/footer.css"/>
    <link href="${basePath}/css/payment.css" rel="Stylesheet"/>
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

<div id="navlist">
    <ul>
        <li class="navlist_gray_left"></li>
        <li class="navlist_gray">确认订单信息</li>
        <li class="navlist_gray_arrow"></li>
        <li class="navlist_gray">支付订单<b></b></li>
        <li class="navlist_gray_arrow"></li>
        <li class="navlist_blue">支付完成<b></b></li>
        <li class="navlist_blue_right"></li>
    </ul>
</div>
<div id="container">
    <div>
        <h1><i>支付结果</i><span class="rt">支付订单：123455666677 &nbsp;
            支付金额：<b class="price"></b></span></h1>
    </div>
    <div class="rightsidebar_box rt">
        <div class="pay_result">
            <img src="${basePath}/images/pay/pay_succ.png" alt=""/>
            <p>支付成功</p>
            <span><a href="#">查看订单状态？ </a><b><a href="#">查看订单&gt;&gt;</a></b></span>
            <br/>
            商城不会以系统异常、订单升级为由，要求你点击任何链接进行退款操作！
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
            &copy;2018 版权所有 川ICP证xxxxxxxxxxx
        </div>
    </div>
</div>
<script src="${basePath}/js/jquery-3.1.1.min.js"></script>
<script src="${basePath}/js/index.js"></script>
<script type="text/javascript">
	var loc=location.href;
	var n1=loc.length;
	var n2=loc.indexOf("=");
	var price=decodeURI(loc.substr(n2+1,n1-n2));
	console.log(price);
	$('.price').text(price+" 元");
</script>
</body>
</html>