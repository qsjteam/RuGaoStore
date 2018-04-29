<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head lang="cn">
    <meta charset="UTF-8">
    <title>首页</title>
    <link href="${pageContext.request.contextPath}/css/header.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/footer.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/slide.css" rel="stylesheet"/>
    </head>
<body>
<!-- 页面顶部-->
	<jsp:include page="header.jsp"></jsp:include>
<!-- nav主导航-->
<nav id="nav">
    <ul>
        <li><a href="#" class="acti">首页</a></li>
        <li><a href="#computer" >特产礼品</a></li>   
        <li><a href="#stationery" >风味美食</a></li>
    </ul>
</nav>
<!-- banner部分-->
<div class="ck-slide">
    <ul class="ck-slide-wrapper">
        <li><!-- TODO//TODO  -->
            <img src="${pageContext.request.contextPath}/images/itemCat/itemCat_banner1.png" id="10000038" >
        </li>
        <li style="display:none">
            <img src="${pageContext.request.contextPath}/images/itemCat/itemCat_banner2.png" id="10000000">
        </li>
        <li style="display:none">
            <img src="${pageContext.request.contextPath}/images/itemCat/itemCat_banner3.png" id="10000014">
        </li>
        <li style="display:none">
            <img src="${pageContext.request.contextPath}/images/itemCat/itemCat_banner4.png" id="10000003">
        </li>
        <li style="display:none">
            <img src="${pageContext.request.contextPath}/images/itemCat/itemCat_banner5.png" id="10000022">
        </li>
    </ul>
    <a href="javascript:;" class="ctrl-slide ck-prev">上一张</a> <a href="javascript:;" class="ctrl-slide ck-next">下一张</a>
    <div class="ck-slidebox">
        <div class="slideWrap">
            <ul class="dot-wrap">
                <li class="current"><em>1</em></li>
                <li><em>2</em></li>
                <li><em>3</em></li>
                <li><em>4</em></li>
                <li><em>5</em></li>
            </ul>
        </div>
    </div>
</div>

<!--/*楼梯1f*/-->
<h2 id="computer" class="stair"><span></span>特产礼品 /1F</h2>

<div class="lf1">
    <div class="lf1_top">
        <!-- 上面部分左侧区域-->
        <div class="left lf">
            <div class="left_pro lf">
                <p class="top_ys1">如皋甜酱姜丁</p>
                <p class="top_ys2">
                   	洋姜如皋特产甜酱姜丁片
                    </br>
                 	爽口开胃下饭菜酱菜咸菜
                </p>

                <p class="top_ys3">￥2.00</p>

                <p class="top_ys4 color_2">
                <a href="${pageContext.request.contextPath}/main/product_details.do?id=10000007">
                	查看详情
                </a></p>
            </div>
            <span><img src="${pageContext.request.contextPath}/images/itemCat/study_computer_img1.png" alt=""/></span>
        </div>
        <!-- 上面部分右侧区域-->
        <div class="right lf">
            <div class="right_pro lf" style="z-index:1">
                <p class="top_ys1">如皋特产董糖</p>
                <p class="top_ys2">
					正宗如皋特产景福斋董糖320克
                    </br>
                 	  纯手工制作3盒起全国包邮	
                </p>
                <p class="top_ys3">￥32.00</p>
                <p class="top_ys4 color_2"><a href="${pageContext.request.contextPath}/main/product_details.do?id=100000422">查看详情</a></p><!-- TODO//TODO  -->
            </div>
            <span style="height:116px; width:292px;margin-bottom: 0px;"><a href="${pageContext.request.contextPath}/main/product_details.do?id=100000422"><img src="${pageContext.request.contextPath}/images/itemCat/study_computer_img2.png" alt="" style="height:116px; width:292px;"/></a></span>
        </div>
    </div>
   <div class="lf1_bottom">
        <div class="item_cat lf">
            <div class="cat_header color_2">
                <span>
                    <img src="${pageContext.request.contextPath}/images/itemCat/stationery_icon1.png" alt=""/>
                    	特产礼品/1F
                </span>
            </div>
            <div class="item_cat_all ">
                <p>海鲜鱼类</p>
                <ul>
                    <li><a href="#">鲍鱼</a></li>
                    <li><a href="#">大闸蟹</a></li>
                    <li><a href="#">鱼翅</a></li>
                    <li><a href="#">海参</a></li>
                    <li><a href="#">红虾</a></li>
                    <li><a href="#">鲸鱼</a></li>
                </ul>
                <p>精美礼盒</p>
                <ul>
                    <li><a href="#">冬虫夏草</a></li>
                    <li><a href="#">百年人寿</a></li>
                    <li><a href="#">燕窝</a></li>
                    <li><a href="#">蛹虫草</a></li>
                    <li><a href="#">干品海参</a></li>
                    <li><a href="#">芡实</a></li>
                </ul>
                <p>中外名酒</p>
                <ul>
                    <li><a href="#">樱桃酒</a></li>
                    <li><a href="#">如皋黄酒</a></li>
                    <li><a href="#">女儿红</a></li>
                    <li><a href="#">花雕酒</a></li>
                    <li><a href="#">二锅头</a></li>
                    <li><a href="#">洋酒</a></li>
                </ul>
            </div>
        </div>
        <div class="item_msg lf">
            <img src="${pageContext.request.contextPath}/images/itemCat/study_computer_img3.png" alt=""/>

            <p class="bottom_ys2">如皋组合火腿礼盒</p>

            <p class="bottom_ys3 ">￥186.00</p>

            <p class="bottom_ys4 color_2"><a href="${pageContext.request.contextPath}/main/product_details.do?id=1000001">查看详情</a></p><!-- TODO//TODO  -->
        </div>
        <div class="item_msg lf">
            <img src="${pageContext.request.contextPath}/images/itemCat/study_computer_img4.png" alt=""/>

            <p class="bottom_ys2">如皋特产黄酒 </p>

            <p class="bottom_ys3 ">￥109.00</p>

            <p class="bottom_ys4 color_2"><a href="${pageContext.request.contextPath}/main/product_details.do?id=1000008">查看详情</a></p><!-- TODO//TODO  -->
        </div>

        <div class="item_msg lf">
            
            <img src="${pageContext.request.contextPath}/images/itemCat/study_computer_img5.png" alt=""/>
            <p class="bottom_ys2">寿都仙叶桑茶</p>
            <p class="bottom_ys3 ">￥199.00</p>
            <p class="bottom_ys4 color_2"><a href="${pageContext.request.contextPath}/main/product_details.do?id=1000009" id="iii">查看详情</a></p><!-- TODO//TODO  -->
            
        </div>

    </div>
</div>
<!--楼梯2f-->
<h2 id="stationery" class="stair"><span></span>风味美食/2F</h2>

<div class="lf1">
    <div class="lf1_top">
        <!-- 上面部分左侧区域-->
        <div class="left lf">
            <div class="left_ys1 lf"><img src="${pageContext.request.contextPath}/images/itemCat/study_stationery_img1.png" alt=""/></div>
            <div class="left_pro lf">
                <p class="top_ys1">寿都特产香肚</p>
                <p class="top_ys2">
                  	 正宗长寿南京香肚寿之源腊肠腊味238g年货无淀粉色素包邮
                </p>
                <p class="top_ys3 price_ys3">仅售 ￥23.00</p>

                <p class="top_ys4 color_1"><a href="${pageContext.request.contextPath}/main/product_details.do?id=10000002">查看详情</a></p><!-- TODO//TODO  -->
            </div>
        </div>
        <!-- 上面部分右侧区域-->
        <div class="right lf">
            <div class="left_ys2 lf"><img src="${pageContext.request.contextPath}/images/itemCat/study_stationery_img2.png" alt=""/></div>
            <div class="right_ys rt">
                <p class="top_ys1">如式手工香肠</p>
                <p class="top_ys2">
                    	寿之源如皋如式手工香肠500g克
                </p>
                <p class="top_ys3 price_ys3">仅售 ￥46.00</p>
                <p class="top_ys4 color_1"><a href="${pageContext.request.contextPath}/main/product_details.do?id=10000006">查看详情</a></p><!-- TODO//TODO  -->
            </div>
        </div>
    </div>
    <div class="lf1_bottom">
        <div class="item_cat lf">
            <div class="cat_header color_1">
                <span>
                  	  风味美食/2F
                </span>
            </div>
            <div class="item_cat_all item_color">
                <p>休闲零食</p>
                <ul>
                    <li><a href="#">鱿鱼丝</a></li>
                    <li><a href="#">海苔</a></li>
                    <li><a href="#">小鱼干</a></li>
                    <li><a href="#">章鱼足</a></li>
                    <li><a href="#">鱼豆腐</a></li>
                    <li><a href="#">裙带菜</a></li>
                </ul>
                <p>传统糕点</p>
                <ul>
                    <li><a href="#">麻薯</a></li>
                    <li><a href="#">绿豆糕</a></li>
                    <li><a href="#">鲜花饼</a></li>
                    <li><a href="#">凤梨酥</a></li>
                    <li><a href="#">黄山烧饼</a></li>
                    <li><a href="#">麻花</a></li>
                </ul>
                <p>肉类即食</p>
                <ul>
                    <li><a href="#">牛肉干</a></li>
                    <li><a href="#">牛板筋</a></li>
                    <li><a href="#">猪肉脯</a></li>
                    <li><a href="#">鸭脖</a></li>
                    <li><a href="#">鸡胸肉</a></li>
                    <li><a href="#">鹅掌</a></li>
                </ul>
            </div>
        </div>
        <div class="item_msg lf">
            <img src="${pageContext.request.contextPath}/images/itemCat/study_stationery_img4.png" alt=""/>
            <p class="bottom_ys2">如皋爽脆干条</p>
            <p class="bottom_ys3 price_ys3">￥40.00</p>
            <p class="bottom_ys4 color_1"><a href="${pageContext.request.contextPath}/main/product_details.do?id=10000004">查看详情</a></p><!-- TODO//TODO  -->
        </div>
        <div class="item_msg lf">
            <img src="${pageContext.request.contextPath}/images/itemCat/study_stationery_img5.png" alt=""/>
            <p class="bottom_ys2">手工桂花糯米糕 </p>
            <p class="bottom_ys3 price_ys3">￥19.00</p>
            <p class="bottom_ys4 color_1"><a href="${pageContext.request.contextPath}/main/product_details.do?id=10000005">查看详情</a></p><!-- TODO//TODO  -->
        </div>

        <div class="item_msg lf">
            <img src="${pageContext.request.contextPath}/images/itemCat/study_stationery_img3.png" alt=""/>
            <p class="bottom_ys2">寿都美食烧饼</p>
            <p class="bottom_ys3 price_ys3">￥12.00</p>
            <p class="bottom_ys4 color_1"><a href="${pageContext.request.contextPath}/main/product_details.do?id=10000013" id="iii">查看详情</a></p><!-- TODO//TODO  -->
        </div>

    </div>
</div>
<!-- 品质保障，私人定制等-->
<div id="foot_box">
    <div class="icon1 lf">
        <img src="${pageContext.request.contextPath}/images/footer/icon1.png" alt=""/>

        <h3>品质保障</h3>
    </div>
    <div class="icon2 lf">
        <img src="${pageContext.request.contextPath}/images/footer/icon2.png" alt=""/>

        <h3>私人定制</h3>
    </div>
    <div class="icon3 lf">
        <img src="${pageContext.request.contextPath}/images/footer/icon3.png" alt=""/>

        <h3>特殊产品</h3>
    </div>
    <div class="icon4 lf">
        <img src="${pageContext.request.contextPath}/images/footer/icon4.png" alt=""/>

        <h3>专属特权</h3>
    </div>
</div>
<!-- 页面底部-->
<div class="foot_bj">
    <div id="foot">
        <div class="lf">
             <p class="footer2"><img src="${pageContext.request.contextPath}/images/footer/footerFont.png" alt=""/></p>
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
                    <img src="${pageContext.request.contextPath}/images/footer/wechat.png" alt=""/>
                    <img src="${pageContext.request.contextPath}/images/footer/sinablog.png" alt=""/>
                </li>
            </ul>
        </div>
        <div class="service">
            <img src="${pageContext.request.contextPath}/images/footer/ios.png" class="lf">
            <img src="${pageContext.request.contextPath}/images/footer/android.png" alt="" class="lf"/>
        </div>
		<!-- 页面底部-备案号 #footer -->
        <div class="record">
            &copy;2018  版权所有 川ICP证xxxxxxxxxxx
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/index.js"></script>
<script src="${pageContext.request.contextPath}/js/slide.js"></script>
<script>
//查看详情
function itemInfo(id,categoryId){
	
	location="${pageContext.request.contextPath}/goods/showGoodsInfo.do?id="+id+"&categoryId="+categoryId;
}

    $('.ck-slide').ckSlide({
        autoPlay: true,//默认为不自动播放，需要时请以此设置
        dir: 'x',//默认效果淡隐淡出，x为水平移动，y 为垂直滚动
        interval:3000//默认间隔2000毫秒
    });
</script>
<script>
    $("#iii").click(function(){
        location.href="product_details.html";
    })
</script>

</body>
</html>