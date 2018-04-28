<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>确认订单</title>
    <link href="${basePath}/css/orderConfirm.css" rel="Stylesheet"/>
    <link href="${basePath}/css/header.css" rel="Stylesheet"/>
    <link href="${basePath}/css/footer.css" rel="Stylesheet"/>
    <link href="${basePath}/css/personage.css" rel="Stylesheet"/>
    </head>
<body>
<!-- 页面顶部-->
<jsp:include page="header.jsp"></jsp:include>
<!-- nav主导航-->
<nav id="nav">
    <ul>
        <li><a href="index.jsp" class="acti">首页</a></li>
        <li><a href="index.jsp#computer" >电脑办公</a></li>
        <li><a href="index.jsp#stationery" >办公文具</a></li>
    </ul>
</nav>

<div id="navlist">
    <ul>
        <li class="navlist_blue_left"></li>
        <li class="navlist_blue">确认订单信息</li>
        <li class="navlist_blue_arro"><canvas id="canvas_blue" width="20" height="38"></canvas>
        </li>
        <li class="navlist_gray">支付订单<b></b></li>
        <li class="navlist_gray_arro"><canvas id="canvas_gray" width="20" height="38"></canvas>
        </li>
        <li class="navlist_gray">支付完成<b></b></li>
        <li class="navlist_gray_right"></li>
    </ul>
</div>
<!--订单确认-->
<div id="container" class="clear">
    <!--收货地址-->
    <div class="adress_choice">
        <p>收货人信息<span class="rt" id="choose">新增收货地址</span></p>
        <c:forEach items="${listAddress}" var="address">
        <c:if test="${address.isDefault==1}">
        <div id="addresId1" class="base_select">
        </c:if>
        <c:if test="${address.isDefault!=1}">
        <div id="addresId1" class="base">
        </c:if>
            <i class="address_name">
                ${address.recvName}
            </i>
            <i class="user_address">
                ${address.recvDistrict}
                ${address.recvAddress}
                ${address.recvPhone}
            </i>
            <i class="user_site rt">
                设为默认地址
            </i>
        </div>
        </c:forEach>
        
        <a id="more" href="javascript:void(0);">
            更多地址 &gt;&gt;
        </a>
    </div>
    <!-- 商品信息-->
    <form name="" method="post" action="#">
        <div class="product_confirm">
            <p>确认商品信息</p>
            <ul class="item_title">
                <li class="p_info">商品信息</li>
                <li class="p_price">单价(元)</li>
                <li class="p_count">数量</li>
                <li class="p_tPrice">金额</li>
            </ul>
            <c:forEach items="${listVo}" var="cartVo">
            <ul class="item_detail">
                <li class="p_info" >
                    <b><img  width="84px" height="84px" src="..${cartVo.image}" /></b>
                    <b class="product_name lf" name="${cartVo.id}" id="product_name lf"> ${cartVo.title} </b>
                    <br/>
                	<span class="product_color "> 颜色：深空灰 </span>
                </li>
                <li class="p_price">
                    <i>专属价</i>
                    <br/>
                    <span class="pro_price">￥
                    <span class="ppp_price">${cartVo.price}</span></span>
                </li>
                <li class="p_count">X<span>${cartVo.count}</span></li>
                <li class="p_tPrice">￥<span></span></li>
            </ul>
            </c:forEach>
        </div>
    </form>
    <!-- 结算条-->
    <div id="count_bar">
        <span class="go_cart"><a href="#" >&lt;&lt;返回购物车</a></span>
        <span class="count_bar_info">已选<b  id="count"> 0 </b>件商品&nbsp;&nbsp;合计(不含运费):<b class="zj"></b> <input type="hidden" name="Payment" value=""/>元</span>
        <span class="go_pay" id="go_pay"> 确认并付款 </span>
    </div>
</div>
<!--标题栏-->
<div class="modal" style="display:none">
        <!--收货人信息填写栏-->     
        <div class="rs_content rs_content_1">
        	<p class="cha">×</p>
        	<form method="post" action="" id="form-add-address">
	            <!--收货人姓名-->
	            <div class="recipients">
	                <span class="red">*</span><span class="kuan">收货人：</span><input type="text" name="receiverName" id="receiverName"/>
	            </div>
	            <!--收货人所在城市等信息-->
	            <div data-toggle="distpicker" class="address_content">
					 <span class="red">*</span><span class="kuan">省&nbsp;&nbsp;份：</span><select data-province="---- 选择省 ----" id="receiverState"></select>
					  城市：<select data-city="---- 选择市 ----" id="receiverCity"></select>
					  区/县：<select data-district="---- 选择区 ----" id="receiverDistrict"></select>
				</div> 
	            <!--收货人详细地址-->
	            <div class="address_particular">
	                <span class="red">*</span><span class="kuan">详细地址：</span><textarea name="receiverAddress" id="receiverAddress" cols="60" rows="3" placeholder="建议您如实填写详细收货地址"></textarea>
	            </div>
	            <!--收货人地址-->
	            <div class="address_tel">
	                <span class="red">*</span><span class="kuan">手机号码：</span><input type="tel" id="receiverMobile" name="receiverMobile"/>固定电话：<input type="text" name="receiverPhone" id="receiverPhone"/>
	            </div>
	            <!--邮政编码-->
	            <div class="address_postcode">
	                <span class="red">&nbsp;</span class="kuan"><span>邮政编码：</span>&nbsp;<input type="text" name="receiverZip" id="receiverZip"/>
	            </div>
	            <!--地址名称-->
	            <div class="address_name">
	                <span class="red">&nbsp;</span class="kuan"><span>地址名称：</span>&nbsp;<input type="text" id="addressName" name="addressName"/>如：<span class="sp">家</span><span class="sp">公司</span><span class="sp">宿舍</span>
	            </div>
	            <!--保存收货人信息-->
	            <div class="save_recipient">
	            	保存收货人信息
	            </div>
	
    		</form>
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
        <div class="download">
            <img src="${basePath}/images/footer/erweima.png">
        </div>
		<!-- 页面底部-备案号 #footer -->
        <div class="record">
            &copy;2018 版权所有 川ICP证xxxxxxxxxxx
        </div>
    </div>

</div>
<script src="${basePath}/js/jquery-3.1.1.min.js"></script>
<script src="${basePath}/js/index.js"></script>
<script>
    var html=0;
    var total=0;
    $(function(){
        $(".item_detail").each(function() {
            html+=1;
            var p=parseFloat($(this).children('.p_price').children('.pro_price').children('.ppp_price').html());
            console.log(p);
            var sl=parseFloat($(this).children('.p_count').children('span').html());
            var xj=parseFloat(p*sl).toFixed(2);
            console.log("xiaoji"+xj);
            $(this).children('.p_tPrice').children('span').html(xj);
            total+=xj-0;
        })
        console.log("zongji"+total);
        $("#count").html(html)-0;
        $('.zj').html(total.toFixed(2))-0;
        var input_zj=parseFloat($('.zj').html()).toFixed(2);
        $('#payment').val(input_zj);
    });
    
    //提交模态框地址信息
    $(".save_recipient").click(function(){
    	var data = {'receiverName':$('#receiverName').val(),
    			'receiverState':$('#receiverState').val(),'receiverCity':$('#receiverCity').val(),'receiverDistrict':$('#receiverDistrict').val(),
    	'receiverAddress':$('#receiverAddress').val(),'receiverMobile':$('#receiverMobile').val(),
    	'receiverZip':$('#receiverZip').val(),'addressName':$('#addressName').val()};
    	console.log(data);
    	$.ajax({
			"url" : "${pageContext.request.contextPath}/address/addAddress.do",
			"data" : data,
			"type" : "POST",
			"dataType" : "json",
			"success" : function(obj) {
				alert(obj.message);
				if (obj.state == 1) {
					location.replace(location.href);
				}
			}
		});
    })

    $("#go_pay").click(function () {
    	var pa = total.toFixed(2);
    	var id = document.getElementById("product_name lf").attributes["name"].nodeValue;//$('#product_name lf').attr('name');
   		$.ajax({
   			type : "GET",
   			url : "${pageContext.request.contextPath}/cart/deleteBatchById.do",
   			data : "ids=" + id,
   			success : function(obj) {
   				console.log(obj.message);
   			}
   		});
        location.href = "../order/payment.do?price="+pa;
    })

    var canvas=document.getElementById("canvas_gray");
    var cxt=canvas.getContext("2d");
    var gray = cxt.createLinearGradient (10, 0, 10, 38);
    gray.addColorStop(0, '#f5f4f5');
    gray.addColorStop(1, '#e6e6e5');
    cxt.beginPath();
    cxt.fillStyle = gray;
    cxt.moveTo(20,19);
    cxt.lineTo(0,38);
    cxt.lineTo(0,0);
    cxt.fill();
    cxt.closePath();

    var canvas=document.getElementById("canvas_blue");
    var cxt=canvas.getContext("2d");
    var blue = cxt.createLinearGradient (10, 0, 10, 38);
    blue.addColorStop(0, '#27b0f6');
    blue.addColorStop(1, '#0aa1ed');
    cxt.beginPath();
    cxt.fillStyle = blue;
    cxt.moveTo(20,19);
    cxt.lineTo(0,38);
    cxt.lineTo(0,0);
    cxt.fill();
    cxt.closePath();
</script>
<script src="${basePath}/js/distpicker.data.js"></script>
<script src="${basePath}/js/distpicker.js"></script>
<script>
	$("#choose").click(function(){
		$(".modal").show();
	})
	$(".cha").click(function(){
		$(".modal").hide();
	})
	
	$("#more").click(function(){
		if($(this).hasClass("upup")){
			$("#addresId2").hide();
			$("#addresId3").hide();
			$("#more").html("更多地址>>");
			$(this).removeClass("upup");
		}else{
			$("#addresId2").show();
			$("#addresId3").show();
			$("#more").html("收起地址>>");
			$("#more").addClass("upup");
		}
	})

	$(document).on("mouseover",".base",function(){
		$(this).find("i:eq(2)").show();
	})
	$(document).on("mouseout",".base",function(){
		$(this).find("i:eq(2)").hide();
	})
	$(".user_site").click(function(){
		$(this).parent().attr("class","base_select");
		$(this).parent().siblings().attr("class","base");
		$(this).hide();
	})
</script>
</body>
</html>
