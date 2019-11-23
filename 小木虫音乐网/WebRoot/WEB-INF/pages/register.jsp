<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Home</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />
  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="${pageContext.request.contextPath}/resources/https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet">
	
	<!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- Animate.css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

	<!-- Modernizr JS -->
	<script src="${pageContext.request.contextPath}/resources/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
	<div class="gtco-loader"></div>
	
	<div id="page">

	
	<div class="page-inner">
	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			
			<div class="row">
				<div class="col-sm-4 col-xs-12">
					<div id="gtco-logo"><a href="index.html">Splash <em>.</em></a></div>
				</div>
				<div class="col-xs-8 text-right menu-1">
					<ul>
						<li><a href="features.html">Features</a></li>
						<li><a href="tour.html">Tour</a></li>
						<li class="has-dropdown">
							<a href="#">Dropdown</a>
							<ul class="dropdown">
								<li><a href="#">Web Design</a></li>
								<li><a href="#">eCommerce</a></li>
								<li><a href="#">Branding</a></li>
								<li><a href="#">API</a></li>
							</ul>
						</li>
						<li><a href="pricing.html">Pricing</a></li>
						<li><a href="contact.html">Contact</a></li>
						<li class="btn-cta"><a href="#"><span>Get started</span></a></li>
					</ul>
				</div>
			</div>
			
		</div>
	</nav>
	
	<header id="gtco-header" class="gtco-cover" role="banner" style="background-image: url(images/img_4.jpg)">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-left">
					

					<div class="row row-mt-15em">
						<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
							<span class="intro-text-small">Welcome to Millet worm</span>
							<h1>欢 迎 来 到 小 木 虫 音 乐 网 !</h1>	
						</div>
						<div class="col-md-4 col-md-push-1 animate-box" data-animate-effect="fadeInRight">
							<div class="form-wrap">
								<div class="tab">
									<div class="tab-content">
										<div class="tab-content-inner active" data-content="signup">
											<form action="register" method="post" id="register_form">
												<div class="row form-group">
													<div class="col-md-12">
														<label for="username"><p id="username_info" class="text-warning text-left" style="font-size: 16px; padding-top: 4px;"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;请输入您的账号</p></label>
														<input type="text" class="form-control" id="username" name="username">
														</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<label for="password"><p id="password_info" class="text-warning text-left" style="font-size: 16px; padding-top: 4px;"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;请输入您的密码</p></label>
														<input type="password" class="form-control" id="password" name="password">
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<label for="password2"><p id="repassword_info" class="text-warning text-left" style="font-size: 16px; padding-top: 4px;"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;请重复您的密码以确认正确</p></label>
														<input type="password" class="form-control" id="repassword">
													</div>
												</div>

												<div class="row form-group">
													<div class="col-md-12">
														<input type="submit" class="btn btn-primary" value="Sign up">
													</div>
												</div>
											</form>	
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
							
					
				</div>
			</div>
		</div>
		
	</header>

	
	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>


	<script type="text/javascript">
    $(this).ready(function(){
    	var isUsername = false, isPassword = false, isRePassword = false;
    	
    	$("#username").blur(function(){
    		var value = $(this).val();
    		if(isBlank(value)){
    			//错误
    			//在oldpassword_info中显示错误信息
    			validateInfo("username_info", false, "用户名不可为空!");
    			isUsername = false;
    		}else{
    			//正确
    			//在oldpassword_info中显示正确的信息
    			validateInfo("username_info", true, "");
    			isUsername = true;
    		}
    	});
    	
    	$("#password").blur(function(){
    		var value = $(this).val();
    		if(isBlank(value)){
    			//错误
    			//在oldpassword_info中显示错误信息
    			validateInfo("password_info", false, "密码不可为空!");
    			isPassword = false;
    		}else{
    			//正确
    			//在oldpassword_info中显示正确的信息
    			validateInfo("password_info", true, "");
    			isPassword = true;
    		}
    	});
    	

    	$("#repassword").blur(function(){
    		var value = $(this).val();
    		var newpassword = $("#password").val();
    		if(isBlank(value)){
    			//错误
    			//在oldpassword_info中显示错误信息
    			validateInfo("repassword_info", false, "重复密码不可为空!");
    			isRePassword = false;
    		}else if(value != newpassword){
    			validateInfo("repassword_info", false, "重复密码必须与新密码一致!");
    			isRePassword = false;
    		}else{
    			//正确
    			//在oldpassword_info中显示正确的信息
    			validateInfo("repassword_info", true, "");
    			isRePassword = true;
    		}
    	});
    	
    	$("#register_form").submit(function(){
    		if(isUsername && isPassword && isRePassword){
    			$(this).submit();
    		}else{
    			alert("请先正确填写表单！");
    			return false;
    		}
    	});
    });
    
    function isBlank(value){
    	if(value == null || value == ""){
    		return true;
    	}else{
    		return false;
    	}
    }
    
    function validateInfo(boxid, isSuccess, message){
    	var p = $("#" + boxid);
		p.removeClass("text-warning");
		p.removeClass("text-danger");
		p.removeClass("text-success");
		p.empty();
		var icon;
		if(isSuccess){
			p.addClass("text-success");
			icon = $("<span class='glyphicon glyphicon-ok-circle'></span>");
		}else{
			p.addClass("text-danger");
			icon = $("<span class='glyphicon glyphicon-remove-circle'></span>");
		}
		var msg = $("<span>&nbsp;" + message + "</span>");
		p.append(icon);
		p.append(msg);
    }
    </script>
	</body>
	
</html>

