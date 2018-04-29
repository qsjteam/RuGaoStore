<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header id="top" class="fixed_nav">
    <div id="logo" class="lf">
    </div>
    <div id="top_input" class="lf">
    	<h1 style="color: #0aa1ed;">江苏如皋特产特色网站</h1>
        <%-- <input id="input" type="text" placeholder="请输入您要搜索的内容" style="width:360px" value="${title}"/>
        <a  class="rt"  onclick="search1()">
        	<img id="search" src="${pageContext.request.contextPath}/images/header/search.png" alt="搜索"/>
        </a> --%>
    </div>
    <div class="rt">
        <ul class="lf">
        		<li><a href="${pageContext.request.contextPath}/user/showPassword.do">${user.username}</a></li>
            <li><a href="${pageContext.request.contextPath}/order/showOrder.do" title="我的订单"><img class="order" src="${pageContext.request.contextPath}/images/header/order.png" alt=""/></a><b>|</b></li>
            <li><a href="${pageContext.request.contextPath}/cart/showCart.do" title="我的购物车"><img class="shopcar" src="${pageContext.request.contextPath}/images/header/shop_car.png" alt=""/></a><b>|</b></li>
            <li><a href="help.jsp">帮助</a><b>|</b></li>
            <c:if test="${user==null}">
            	<li><a href="${pageContext.request.contextPath}/user/showLogin.do">登录</a></li>
        		</c:if>
        		<c:if test="${user!=null}">
            	<li><a href="${pageContext.request.contextPath}/user/exit.do">退出</a></li>
        		</c:if>
        </ul>
    </div>
</header>
<script>
	function search1(){
		location="${pageContext.request.contextPath}/goods/showSearch.do?title="+$("#input").val();//showGoodsByTitle.do
	}
</script>











