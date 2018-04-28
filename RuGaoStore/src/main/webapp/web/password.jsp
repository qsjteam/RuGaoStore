<%@ page pageEncoding="utf-8"  contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>我的订单</title>
    <link href="${basePath}/css/orders.css" rel="Stylesheet"/>
    <link href="${basePath}/css/header.css" rel="Stylesheet"/>
    <link href="${basePath}/css/footer.css" rel="Stylesheet"/>
    <link href="${basePath}/css/personage.css" rel="stylesheet" />
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
        <li><a href="">首页<span>&gt;</span>个人中心</a></li>
    </ul>
</div>
<!--我的订单内容区域 #container-->
<div id="container" class="clearfix">
    <!-- 左边栏-->
    <jsp:include page="left.jsp"></jsp:include>
    <!-- 右边栏-->
    <!--个人信息头部-->
    <div class="rightsidebar_box rt">
        <div class="rs_header">
            <span class="rs_header_active">
            <a href="${pageContext.request.contextPath}/user/showPerson.do">
            	我的信息
            </a></span>
            <span>
            <a href="${pageContext.request.contextPath}/user/showPassword.do"">
            	安全管理
            </a></span>
        </div>

        <!--安全管理 -->
        <div class="rs_content">
            <p class="change_password_title">更改密码</p>
            <div class="new_password">
                <span class="word">输入旧密码：</span>
                <input type="password" 
                name="oldPassword"
                id="oldPassword"/>
                <span class="change_hint"
                		id="oldPasswordSpan"></span>
            </div>
            <div class="new_password">
                <span class="word">输入新密码：</span>
                <input type="password"
                name="newPassword" 
                id="newPassword"/>
                <span class="change_hint"
                id="newPasswordSpan"></span>
            </div>
            <div class="confirm_password">
                <span class="word">确认新密码：</span>
                <input type="password"
                name="confirmPassword"
                id="confirmPassword"/>
                <span class="confirm_hint"
                id="confirmPasswordSpan"></span>
            </div>
            <div class="save_password">
             <a href="#" onClick="updatePwd()"
             style="color:#fff">保存更改</a>
            </div>
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
</body>
<script type="text/javascript" src="${basePath}/js/jquery-3.1.1.min.js"></script>
<script src="${basePath}/js/index.js"></script>
<script src="${basePath}/js/jquery.page.js"></script>
<script type="text/javascript" src="${basePath}/js/orders.js"></script>
<script type="text/javascript">
//调整左边栏,显示账号管理
	$(function(){
		 $("#leftsidebar_box dd").hide();
		 $("#leftsidebar_box .count_managment dd").show();
		 $("#leftsidebar_box dt img").attr("src","../images/myOrder/myOrder1.png");
		 $("#leftsidebar_box .count_managment").find('img').attr("src","../images/myOrder/myOrder2.png");
	});

//提交请求
	function updatePwd(){
		var oldPwd = $("#oldPassword").val();
		var newPwd = $("#newPassword").val();
		var confirmPwd = $("#confirmPassword").val();
		if(checkPasswordLength(oldPwd)&&
			checkPasswordLength(newPwd)&&
			checkPasswordLength(confirmPwd)&&
			checkPasswordEquals()){
			$.ajax({
				"url":"../user/password.do",
				"data":"oldPwd="+oldPwd+"&newPwd="+newPwd,
				"type":"POST",
				"dataType":"json",
				"success":function(obj){
					alert(obj.state+","+obj.message);
				
					if(obj.state==1){
						$("#oldPassword").val("");
						$("#newPassword").val("");
						$("#confirmPassword").val("");
						$("#oldPasswordSpan").html("");
						$("#newPasswordSpan").html("");
						$("#confirmPasswordSpan").html("");
					}
				}
			});
		}else{
			alert("信息不正确");
		}
	}

//验证密码长度
	function checkPasswordLength(pwd){
		return pwd.length>=6 && pwd.length<=9;
	}
//验证两次输入密码是否相同
	function checkPasswordEquals(){
		var value1 = $("#newPassword").val();
		var value2 = $("#confirmPassword").val();
		if(value1==value2){
			return true;
		}else{
			return false;
		}
	
	}
//让3个框发生失去焦点事件

$("#oldPassword").blur(function(){
	var value = $("#oldPassword").val();
	if(checkPasswordLength(value)){
		$("#oldPasswordSpan").html("密码长度正确");
		$("#oldPasswordSpan").css("color","#0f0");
	}else{
		$("#oldPasswordSpan").html("密码长度不正确");
		$("#oldPasswordSpan").css("color","#f00");
	}
});

$("#newPassword").blur(function(){
	var value = $("#newPassword").val();
	if(checkPasswordLength(value)){
		$("#newPasswordSpan").html("密码长度正确");
		$("#newPasswordSpan").css("color","#0f0");
	}else{
		$("#newPasswordSpan").html("密码长度不正确");
		$("#newPasswordSpan").css("color","#f00");
	}
});
$("#confirmPassword").blur(function(){
	var value = $("#confirmPassword").val();
	if(checkPasswordLength(value)){
		$("#confirmPasswordSpan").html("密码长度正确");
		$("#confirmPasswordSpan").css("color","#0f0");
		if(checkPasswordEquals()){
			$("#confirmPasswordSpan").html("密码长度一致");
			$("#confirmPasswordSpan").css("color","#0f0");
			
		}else{
			$("#confirmPasswordSpan").html("两次密码输入不一致");
			$("#confirmPasswordSpan").css("color","#f00");
			
		}
	}else{
		$("#confirmPasswordSpan").html("密码长度不正确");
		$("#confirmPasswordSpan").css("color","#f00");
	}
});

</script>

</html>










