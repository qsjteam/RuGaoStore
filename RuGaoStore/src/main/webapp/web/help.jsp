<%@ page pageEncoding="utf-8"  contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link href="${basePath}/css/header.css" rel="stylesheet"/>
    <link href="${basePath}/css/footer.css" rel="stylesheet"/>
    <link href="${basePath}/css/animate.css" rel="stylesheet"/>
    <style>
        #forward{
            width: 1000px;
            height: 500px;
            margin:0px auto;
            text-align: center;
            vertical-align: middle;
        }
        #forward img{
            position: relative;
            top: 193px;
        }
        #forward p {
            font-size: 20px;
            position: relative;
            top: 218px;
            font-weight: inherit;
            opacity: 0.3;
        }
    </style>
</head>
<body>
<!-- 页面顶部-->
<jsp:include page="header.jsp"></jsp:include>
<!-- nav主导航-->
<nav id="nav">
    <ul>
        <li><a href="${basePath}/main/showIndex.do" class="acti">首页</a></li>
        <li><a href="${basePath}/main/showIndex.do#computer" >特产礼品</a></li>
        <li><a href="${basePath}/main/showIndex.do#stationery" >风味美食</a></li>
    </ul>
</nav>
<!--敬请期待页面-->
<div id="forward">
    <img src="${basePath}/images/lookforward/lookforward_img1.png" alt="" class="animated bounce"/>
    <p class="animated slideInDown">服务暂未上线 敬请期待!!</p>
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
<script src="${basePath}/js/jquery-3.1.1.min.js"></script>
<script src="${basePath}/js/index.js"></script>
</body>
</html>