<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<title>商城注册页面</title>
<link href="${pageContext.request.contextPath}/css/header.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/footer.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/animate.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/login.css"
	rel="stylesheet" />
</head>
<body>
	<!-- 页面顶部-->
	<header id="top">
		<div class="top">
			<span>江苏如皋  欢迎您</span>
		</div>
	</header>
	<div class="parent">
		<!--<video src="audio/snow.mp4" width="100%" autoplay loop muted></video>-->
		<div class="container">
			<div class="panel rt">
				<form id="form-register" method="post" action="">
					<div class="txt">
						<p>
							新用户注册 <span> <a href="showLogin.do">直接登录</a>
							</span>
						</p>
					</div>
					<div class="form-group">
						<label for="uname">用户名：</label> <input autocomplete required
							minlength="6" maxlength="9" type="text" placeholder="请输入用户名"
							autofocus name="uname" id="uname" /> <span class="msg-default"
							id="usernamespan">用户名长度在6到9位之间</span>
					</div>
					<div class="form-group">
						<label for="upwd">登录密码：</label> <input required type="password"
							minlength="6" maxlength="12" placeholder="请输入密码" name="upwd"
							autofocus id="upwd" /> <span class="msg-default hidden">密码长度在6到12位之间</span>
					</div>
					<div class="form-group">
						<label for="upwdconfirm">确认密码：</label> <input required
							type="password" minlength="6" maxlength="12" placeholder="请确认密码"
							name="upwdconfirm" autofocus id="upwdconfirm" /> <span
							class="msg-default hidden">密码长度在6到12位之间</span>
					</div>
					<div class="form-group">
						<label for="email">邮箱：</label> <input autocomplete required
							type="email" placeholder="请输入邮箱地址" name="email" id="email" /> <span
							class="msg-default hidden" id="emailspan">请输入合法的邮箱地址</span>
					</div>
					<div class="form-group">
						<label for="phone">手机号：</label> <input id="phone" name="phone"
							placeholder="请输入您的手机号"
							pattern="(\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$"
							required type="text" /> <span class="msg-default hidden"
							id="phonespan">请输入合法的手机号</span>
					</div>
					<div class="form-group">
						<label></label> <input type="button" value="提交注册信息"
							id="bt-register" />
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- 品质保障，私人定制等-->
	<div id="foot_box">
		<div class="icon1 lf">
			<img src="${pageContext.request.contextPath}/images/footer/icon1.png"
				alt="" />

			<h3>品质保障</h3>
		</div>
		<div class="icon2 lf">
			<img src="${pageContext.request.contextPath}/images/footer/icon2.png"
				alt="" />

			<h3>私人定制</h3>
		</div>
		<div class="icon3 lf">
			<img src="${pageContext.request.contextPath}/images/footer/icon3.png"
				alt="" />

			<h3>特殊产品</h3>
		</div>
		<div class="icon4 lf">
			<img src="${pageContext.request.contextPath}/images/footer/icon4.png"
				alt="" />

			<h3>专属特权</h3>
		</div>
	</div>
	<!-- 页面底部-->
	<div class="foot_bj">
		<div id="foot">
			<div class="lf">
				<p class="footer2">
					<img
						src="${pageContext.request.contextPath}/images/footer/footerFont.png"
						alt="" />
				</p>

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
					<li><img
						src="${pageContext.request.contextPath}/images/footer/wechat.png"
						alt="" /> <img
						src="${pageContext.request.contextPath}/images/footer/sinablog.png"
						alt="" /></li>
				</ul>
			</div>
			<div class="service">
				<img src="${pageContext.request.contextPath}/images/footer/ios.png"
					class="lf"> <img
					src="${pageContext.request.contextPath}/images/footer/android.png"
					alt="" class="lf" />
			</div>
			<!-- 页面底部-备案号 #footer -->
			<div class="record">&copy;2018 版权所有 川ICP证xxxxxxxxxxx</div>
		</div>
	</div>
	<!--弹出的小广告-->
	<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
	<script>
		$('#bt-register').click(function() {
			var lengths = 0;
			$('.form-group').each(function() {
				if ($(this).find('span').hasClass('msg-success')) {
					lengths++;
				}

			});
			if (lengths == 5) {
				
				$.ajax({
					"url" : "${pageContext.request.contextPath}/user/register.do",
					"data" : $("#form-register").serialize(),
					"type" : "POST",
					"dataType" : "json",
					"success" : function(obj) {
						alert(obj.message);
						if (obj.state == 1) {
							location.href = "${pageContext.request.contextPath}/user/showLogin.do";
						}
					}
				});
			}
		})
	</script>
	<script>
		/*1.对用户名进行验证*/
		uname.onblur = function() {
			if (this.validity.valueMissing) {
				this.nextElementSibling.innerHTML = '用户名不能为空';
				this.nextElementSibling.className = 'msg-error';
				this.setCustomValidity('用户名不能为空');
			} else if (this.validity.tooShort) {
				this.nextElementSibling.innerHTML = '用户名不能少于6位';
				this.nextElementSibling.className = 'msg-error';
				this.setCustomValidity('用户名不能少于6位');
			} else {
				this.nextElementSibling.innerHTML = '用户名格式正确';
				this.nextElementSibling.className = 'msg-success';
				this.setCustomValidity('');
				var data = document.getElementById("uname").value;
				if (!data) { //用户没有输入任何内容
					return;
				}
				
				/**发起异步GET请求，询问服务器用户名是否已经存在**/
				$.ajax({
					"url" : "${pageContext.request.contextPath}/user/checkUsername.do",
					"type" : "GET",
					"data" : "username=" + $("#uname").val(),
					"dataType" : "json",
					"success" : function(obj) {
						$("#usernamespan").html(obj.message);
						if (obj.state == 0) {
							$("#usernamespan").attr("class","msg-error");
						} else {
							$("#usernamespan").attr("class","msg-success");
						}
					}
				});
			}
		}

		uname.onfocus = function() {
			this.nextElementSibling.innerHTML = '用户名长度在6到9位之间';
			this.nextElementSibling.className = 'msg-default';
		}
		upwd.onfocus = function() {
			this.nextElementSibling.innerHTML = '密码长度在6到12位之间';
			this.nextElementSibling.className = 'msg-default';
		}
		upwd.onblur = function() {
			if (this.validity.valueMissing) {
				this.nextElementSibling.innerHTML = '密码不能为空';
				this.nextElementSibling.className = 'msg-error';
				this.setCustomValidity('密码不能为空');
			} else if (this.validity.tooShort) {
				this.nextElementSibling.innerHTML = '密码长度在尽量别少于6位';
				this.nextElementSibling.className = 'msg-error';
				this.setCustomValidity('密码长度在尽量别少于6位');
			} else {
				this.nextElementSibling.innerHTML = '密码格式正确';
				this.nextElementSibling.className = 'msg-success';
				this.setCustomValidity('');
			}
		}

		upwdconfirm.onfocus = function() {
			this.nextElementSibling.innerHTML = '密码长度在6到12位之间';
			this.nextElementSibling.className = 'msg-default';
		}
		upwdconfirm.onblur = function() {
			 if(!($("#upwdconfirm").val()===$("#upwd").val())){
		    	 this.nextElementSibling.innerHTML = '两次输入密码不一致';
		         this.nextElementSibling.className = 'msg-error';
		         this.setCustomValidity('两次输入密码不一致');
		    }else{
		      this.nextElementSibling.innerHTML = '密码一致';
		      this.nextElementSibling.className = 'msg-success';
		      this.setCustomValidity('');
		    }
		}
		 
		/*3.对邮箱地址进行验证*/
		email.onblur = function() {
			if (this.validity.valueMissing) {
				this.nextElementSibling.innerHTML = '邮箱不能为空';
				this.nextElementSibling.className = 'msg-error';
				this.setCustomValidity('邮箱不能为空');
			} else if (this.validity.typeMismatch) {
				this.nextElementSibling.innerHTML = '邮箱格式不正确';
				this.nextElementSibling.className = 'msg-error';
				this.setCustomValidity('邮箱格式不正确');
			} else {
				this.nextElementSibling.innerHTML = '邮箱格式正确';
				this.nextElementSibling.className = 'msg-success';
				this.setCustomValidity('');

				var data = document.getElementById("email").value;
				if (!data) { //用户没有输入任何内容
					return;
				}
				/**发起异步GET请求，询问服务器邮箱是否已经存在**/
				$.ajax({
					"url" : "${pageContext.request.contextPath}/user/checkEmail.do",
					"type" : "GET",
					"data" : "email=" + $("#email").val(),
					"dataType" : "json",
					"success" : function(obj) {
						$("#emailspan").html(obj.message);
						if (obj.state == 0) {
							$("#emailspan").attr("class", "msg-error");
						} else {
							$("#emailspan").attr("class", "msg-success");
						}
					}
				});
			}
		}
		email.onfocus = function() {
			this.nextElementSibling.innerHTML = '请输入合法的邮箱地址';
			this.nextElementSibling.className = 'msg-default';
		}
		/*3.对手机号进行验证*/
		phone.onblur = function() {
			if (this.validity.valueMissing) {
				this.nextElementSibling.innerHTML = '手机号不能为空';
				this.nextElementSibling.className = 'msg-error';
				this.setCustomValidity('手机号不能为空');
			} else if (this.validity.patternMismatch) {
				this.nextElementSibling.innerHTML = '手机号格式不正确';
				this.nextElementSibling.className = 'msg-error';
				this.setCustomValidity('手机号格式不正确');
			} else {
				this.nextElementSibling.innerHTML = '手机号格式正确';
				this.nextElementSibling.className = 'msg-success';
				this.setCustomValidity('');

				var data = document.getElementById("phone").value;
				if (!data) { //用户没有输入任何内容
					return;
				}
				/**发起异步GET请求，验证电话号码是否已经存在**/
				$.ajax({
					"url" : "${pageContext.request.contextPath}/user/checkPhone.do",
					"type" : "GET",
					"data" : "phone=" + $("#phone").val(),
					"dataType" : "json",
					"success" : function(obj) {
						console.log("$(#phone).val()::::::::::::::::::::::::::::::::"+$("#phone").val());
						$("#phonespan").html(obj.message);
						if (obj.state == 0) {
							$("#phonespan").attr("class", "msg-error");
						} else {
							$("#phonespan").attr("class", "msg-success");
						}
					}
				});
			}
		}
		phone.onfocus = function() {
			this.nextElementSibling.innerHTML = '请输入合法的手机号';
			this.nextElementSibling.className = 'msg-default';
		}
	</script>
</body>
</html>