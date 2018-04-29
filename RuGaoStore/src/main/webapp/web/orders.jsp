<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>我的订单</title>
    <link href="${basePath}/css/orders.css" rel="stylesheet"/>
    <link href="${basePath}/css/header.css" rel="stylesheet"/>
    <link href="${basePath}/css/footer.css" rel="stylesheet"/>
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
<!-- 我的订单导航栏-->
<div id="nav_order">
    <ul>
        <li><a href="">首页<span>&gt;</span>订单管理</a></li>
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
				<dd><a href="${basePath}/address/showAddress.do">地址管理</a></dd>
            </dl>
            <dl class="count_managment">
                <dt >帐号管理<img src="${basePath}/images/myOrder/myOrder1.png"></dt>
                <dd class="first_dd"><a href="${basePath}/user/showPerson.do">我的信息</a></dd>
                <dd><a href="${basePath}/user/showPassword.do">安全管理</a></dd>
            </dl>
         </div>-->
         <!-- 右边栏-->
        <div class="rightsidebar_box rt">
            <!-- 商品信息标题-->
            <table id="order_list_title"  cellpadding="0" cellspacing="0" >
                <tr>
                    <th width="345">商品</th>
                    <th width="82">单价（元）</th>
                    <th width="50">数量</th>
                    <th width="82">售后</th>
                    <th width="100">实付款（元）</th>
                    <th width="90">交易状态</th>
                    <th width="92">操作</th>
                </tr>
            </table>
            <!-- 订单列表项 -->
            <c:forEach items="${listItems}" var="orderItem">
            <div id="orderItem">
              <p class="orderItem_title">
                 <span id="order_id">
                     &nbsp;&nbsp;订单编号:<a href="#">${orderItem.orderid }</a>
                 </span>
                  &nbsp;&nbsp;成交时间：${orderItem.showTime}&nbsp;&nbsp;
                 <span>
                     <a href="#" class="servie">
                        联系客服<img src="${basePath}/images/myOrder/kefuf.gif"/>
                      </a>
                 </span>
              </p>
            </div>
              <div id="orderItem_detail">
                  <ul>
                      <li class="product">
                          <b><a href="#">
                          <img src="${basePath}${orderItem.image }" width="84px" height="84px" /></a></b>
                          <b class="product_name lf" >
                              <a href="">${orderItem.title }</a>
                              <br/>
                          </b>
                          <b class="product_color ">
                              颜色：深空灰
                          </b>
                      </li>
                      <li class="unit_price">
                          专属价
                          <br/>
                          ￥${orderItem.price }
                      </li>
                      <li class="count">
                          ${orderItem.count }件
                      </li>
                      <li class="sale_support">
                          退款/退货
                          <br/>
                          我要维权
                      </li>
                      <li class=" payments_received">
                          ￥${orderItem.count*orderItem.price }
                      </li>
                      <li class="trading_status">
                          <img src="${basePath}/images/myOrder/car.png" alt=""/>已发货
                          <br/>
                          <a href="orderInfo.html">订单详情</a>
                          <br/>
                          <a href="#" class="view_logistics">查看物流</a>
                      </li>
                      <li class="operate">
                          <a href="#">确认收货</a>
                      </li>
                  </ul>
              </div>

				</c:forEach>
<!--分页器-->
            <div class="tcdPageCode"></div>

        </div>
    </div>

        <!--<iframe src="order_status.html" width="1000" height=500""></iframe>-->
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
</html>