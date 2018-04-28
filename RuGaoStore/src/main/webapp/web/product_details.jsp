<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>详情页</title>
    <link rel="stylesheet" href="${basePath}/css/header.css"/>
    <link href="${basePath}/css/pro_details.css" rel="Stylesheet"/>
    <link href="${basePath}/css/animate.css" rel="Stylesheet"/>
    <link rel="stylesheet" href="${basePath}/css/footer.css"/>
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
<!-- 内容-->
<!--细节导航-->
<div id="nav_detail">
    <h5>首页 > 学习用品 > 笔记本电脑 ><span id="Gname"></span></h5>
</div>
<!--产品预览-->
<div id="shop_detail">
    <!-- 左侧-->
    <div id="preview" class="lf">
        <div id="mediumDiv">
            <img id="mImg" 
            width="460px"
            height="360px" 
            src=""/>
        </div>
        <div id="icon_all">
            <ul id="icon_list">
            </ul>
        </div>
    </div>
    <!-- 右侧-->
    <div class="right_detail lf">
        <!-- 商品名称-->
        <h1><span id="Gname"></span></h1>
        <!-- 商品全称-->
        <h3><span id="Tname"></span></h3>
        <!-- 价格部分-->
        <div class="price">
            <div id="pro_price"><b>售价：</b><span id="Pr"></span></div>
            <div class="promise">
                <b>服务承诺：</b>
                <span>*退货补运费</span>
                <span>*30天无忧退货</span>
                <span>*48小时快速退款</span>
                <span>*72小时发货</span>
            </div>
        </div>
        <!-- 参数部分 客服-->
        <p class="parameter">
            <b>客服：</b>
            <span class="connect">联系客服</span><img class="gif" src="${basePath}/images/product_detail/kefuf.gif">
        </p>
        <!-- 颜色-->
        <p class="style" id="choose_color">
            <s class="color">颜色：</s>
            <input type="button" class="i1" value="黑色" title="黑色"/>
            <input type="button" class="i2" value="灰色" title="灰色"/>
            <input type="button" class="i3" value="金色" title="金色"/>
            <input type="button" class="i4" value="白色" title="白色"/>
        </p>
        <!-- 规格-->
        <p>
             <s>套餐：</s>
            <span class="avenge">标配</span>
        </p>
        <!-- 未选择规格，颜色时状态-->
        <div class="message"></div>
        <!-- 数量-->
        <p class="accountChose">
            <s>数量：</s>
            <button class="numberMinus">-</button>
            <input type="text"  value="1" class="number" id="buy-num">
            <button class="numberAdd">+</button>
        </p>
        <!-- 购买部分-->
        <div class="shops">
            <a href="javascript:void(0)" class="buy lf" id="buy_now">立即购买</a>
            <a href="javascript:void(0)" class="shop lf" id="add_cart">
            	<img src="${basePath}/images/product_detail/product_detail_img7.png" alt=""/>
            	加入购物车
            </a>
        </div>
    </div>
</div>
<!--为你推荐-->
<div ></div>
<!--商品详情-->
<div id="iteminfo">
            <div id="sale_protection">
                <p>
                    售后保障
                    <img src="${basePath}/images/product_detail/product_detail_icon_3.png" alt="" class="ys5"/>
                </p>

                <div class="sale_content">
                    <p class="paper" id="sale_protect">
                        <img src="${basePath}/images/product_detail/product_detail_img16.png" alt=""/>
                        正品保障
                    </p>

                    <p class="content">
                        商城向您保证所售商品均为正品行货，自营商品开具机打发票或电子发票。
                    </p>

                    <p class="paper">
                        <img src="${basePath}/images/product_detail/product_detail_img16.png" alt=""/>
                        全国联保
                    </p>

                    <p class="content">
                        凭质保证书及商城发票，可享受全国联保服务，与您亲临商场选购的商品享受相同的质量保证。商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！
                        注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="right rt">
        <div class="aside_nav">
            <p><i><img src="${basePath}/images/product_detail/product_detail_icon_d_1.png" alt=""/></i><a href="#sale_protection">售后保障</a></p>
            <p><i><img src="${basePath}/images/product_detail/product_detail_icon_up_1.png" alt=""/></i><a href="#">回到顶部</a></p>
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
<div class="modal" style="display:none">
    <div class="modal_dialog">
        <div class="modal_header">
              操作提醒
        </div>
        <div class="modal_information">
            <img src="../images/model/model_img2.png" alt=""/>
            <span>是否将您的宝贝加入收藏夹</span>

        </div>
        <div class="yes"><span>确定</span></div>
        <div class="no"><span>取消</span></div>
    </div>
</div>
<script src="${basePath}/js/jquery-3.1.1.min.js"></script>
<script src="${basePath}/js/index.js"></script>

<!--添加到购物车 立即购买 -->
<script type="text/javascript">
    //加入购物车操作
    var color;
    var norms;
    var buyAccount;
    function getPro(){
    	//颜色取值
        $("#choose_color input").each(function (i, item) {
            if ($(this).hasClass("borderChange")) {
                color = $(this).val();
            }
        })
        console.log(color)
        //规格取值
        $(".avenge").each(function () {
            if ($(this).hasClass("borderChange")) {
                norms = $(this).html();
            }
        })
        console.log(norms)
        //数量取值
        buyAccount = $("#buy-num").val();
        console.log(buyAccount);
    }
    $("#add_cart").click(function () {
    	var loc = location.href;
    	var n1 = loc.length;//地址的总长度
    	var n2 = loc.indexOf("=");//取得=号的位置
    	var id = decodeURI(loc.substr(n2+1, n1-n2));//从=号后面的内容
		//异步提交
		$.ajax({
			"url":"../cart/addCart.do",
			"data":"goodsId="+id+"&count="+$("#buy-num").val(),
			"type":"GET",
			"dataType":"json",
			"success":function(obj){
				if(obj.state==1){
					alert(obj.message);
					location.replace(location.href);
				}
			},
			"error":function(obj){
				location="../user/showLogin.do";
			}
		});
    })
   function addCart(){
    	
    }
    
</script>
<script>
    $(function () {
        var nav = $("#tab"); //得到导航对象
        var aside = $(".aside_nav");//右侧导航
        var win = $(window); //得到窗口对象
        var sc = $(document);//得到document文档对象。
        win.scroll(function () {
            if (sc.scrollTop() >= 1000) {
                nav.addClass("fixed_tab");
                aside.addClass("fixed_aside");
            }
            else {
                nav.removeClass("fixed_tab");
                aside.removeClass("fixed_aside");
            }
        })


        //介绍区域右侧导航
        $("#iteminfo .right p").click(function () {
            //$(this).addClass("clic").siblings().removeClass("clic");
            $(this).css("background-color", "#0AA1ED").siblings().css("background-color", "#e8e8e8");
            $(this).find("a").css("color", "#fff").parent().siblings().find("a").css("color", "#828282")
        })
        /**选择商品进行添加 悬停效果**/
        $(".avenge").mouseover(function () {
            $(this).css({"border": "1px solid #0AA1ED", "color": "#0AA1ED"});
        }).mouseout(function () {
            $(this).css({"border": "1px solid #666", "color": "#666"})
        })
        /**数量添加**/
        var n = $("#buy-num").val() * 1;
        $(".numberMinus").click(function () {
            if (n >= 1) {
                $("#buy-num").val(n -= 1);
            }
        })
        $(".numberAdd").click(function () {
            $("#buy-num").val(n += 1);
        })

        /**ajax提交**/
        $(".avenge").each(function (i, item) {
            $(this).click(function (norms) {
                $(this).addClass("borderChange")
                if ($(this).siblings().addClass("borderChange")) {
                    $(this).siblings().removeClass("borderChange")
                }
                //规格选择
                var norms = $(this).html();
                console.log(norms)
            })
        })
        //颜色选择
        $("#choose_color input").each(function (i, item) {
            $(this).click(function () {
                $(this).addClass("borderChange")
                if ($(this).siblings().addClass("borderChange")) {
                    $(this).siblings().removeClass("borderChange")
                }
                var color = $(this).val();
                console.log(color)
            })
        })
        //数量选择
        $(".accountChose").click(function () {
            var buyAccount = $("#buy-num").val();
            console.log(buyAccount);
        })

        /*立即购买*/
        $("#buy_now").click(function (e) {
        	var color = $("#choose_color input.borderChange").val();
            var model = $("#choose_model span.borderChange").html();
            var num = $("#buy-num").val();
            //如果未选择，请选择商品信息
            if (color == undefined && norms == undefined) {
//            $("#add_cart").text("加入购物车").css({"background":"#f5f5f5","color":"#000"})
                alert("请选择商品信息");
            }else{
            	var loc = location.href;
            	var n1 = loc.length;//地址的总长度
            	var n2 = loc.indexOf("=");//取得=号的位置
            	var id = decodeURI(loc.substr(n2+1, n1-n2));//从=号后面的内容
        		//异步提交
        		$.ajax({
        			"url":"../cart/addCart.do",
        			"data":"goodsId="+id+"&count="+$("#buy-num").val(),
        			"type":"GET",
        			"dataType":"json",
        			"success":function(obj){
        				if(obj.state==1){
        					location.href="${basePath}/cart/showCart.do";
        				}
        			},
        			"error":function(obj){
        				location="../user/showLogin.do";
        			}
        		});
                
            }
            e.preventDefault();
        })
    })
</script>
<!--图片效果-->
<script>
    $("#mImg").hover(function (){
        $(this).addClass("animated pulse");
    }, function (){
        $(this).removeClass("animated pulse");
    });
</script>
<script>
    $('#icon_list>li').click(function(){
        $(this).children('img').css('border','1px solid #CECFCE');
        var address=$(this).children().attr('src');
        console.log(address);
        var newaddress=address.slice(0,-4);
        var bigaddress=newaddress+'big.png';
        $('#mImg').attr('src',bigaddress);
        $(this).siblings().children('img').css('border','');
    })
</script>
<script type="text/javascript">
	var loc = location.href;
	var n1 = loc.length;//地址的总长度
	var n2 = loc.indexOf("=");//取得=号的位置
	var id = decodeURI(loc.substr(n2+1, n1-n2));//从=号后面的内容
	$(function () {
		selectItem(id);
	})
	function selectItem(id){
		$.ajax({
			type : "post",
			url : "selectItem.do",//发送的后台地址
			data : {'id' : id},
			dataType:"json",
			success : function(obj) {
				var data=obj.data;
				console.log(data.itemType);
				 $('#Gname').html(data.itemType);
				 $('#mImg').attr('src',eval("'.."+data.image+"'"));
				 $('#Tname').html(data.title);
				 $('#Pr').html("￥"+data.price);
			}
		})
	}
</script>

</body>
</html>