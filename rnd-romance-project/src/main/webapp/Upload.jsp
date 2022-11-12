<%@page import="com.smhrd.model.memberDTO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>Mentorvation</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600;700&family=Open+Sans:wght@400;500&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">
<style>
html {
	font-size: 20px
}

body, div, dl, dt, dd, ul, ol, li, h2, h3, h4, h5, form, fieldset, p,
	button, input {
	margin: 0;
	padding: 0;
	font-family: 'Noto Sans KR', 'NanumGothic', '나눔고딕';
	line-height: 1.5;
	letter-spacing: -0.5px
}

input, select {
	vertical-align: middle;
	color: #666;
	outline: none;
}

img, fieldset {
	border: none
}

ul li {
	list-style: none outside none
}

ol li {
	list-style: none outside none
}

caption, legend {
	overflow: hidden;
	position: absolute;
	top: 0;
	left: -999em;
	width: 0;
	height: 0;
	font-size: 0;
	line-height: 0;
	text-align: left;
}

strong {
	font-weight: 500
}

table {
	table-layout: fixed;
	word-break: break-all
}

textarea {
	line-height: 24px;
	letter-spacing: 1px;
	border: 1px solid #ddd;
	overflow-y: scroll;
	resize: none;
}


html {
	height: 100%
}

body {
	height: 100%;
	overflow: hidden
}
 
	
*, *:after, *:before {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}


a {
	color: #2f889a;
	text-decoration: none;
}

img {
	max-width: 100%;
}

textarea {
	font-family: "PT Sans", sans-serif;
	font-size: 16px;
	font-size: 1rem;
}

input::-ms-clear, textarea::-ms-clear {
	display: none;
}

/* -------------------------------- 
	
	Main components 
	
	-------------------------------- */
header[role=banner] {
	position: relative;
	height: 50px;
	background: #343642;
}

header[role=banner] #cd-logo {
	float: left;
	margin: 4px 0 0 5%;
	/* reduce logo size on mobile and make sure it is left aligned with the transform-origin property */
	-webkit-transform-origin: 0 50%;
	-moz-transform-origin: 0 50%;
	-ms-transform-origin: 0 50%;
	-o-transform-origin: 0 50%;
	transform-origin: 0 50%;
	-webkit-transform: scale(0.8);
	-moz-transform: scale(0.8);
	-ms-transform: scale(0.8);
	-o-transform: scale(0.8);
	transform: scale(0.8);
}

header[role=banner] #cd-logo img {
	display: block;
}

header[role=banner]::after {
	/* clearfix */
	content: "";
	display: table;
	clear: both;
}

@media only screen and (min-width: 768px) {
	header[role=banner] {
		height: 80px;
	}
	header[role=banner] #cd-logo {
		margin: 20px 0 0 5%;
		-webkit-transform: scale(1);
		-moz-transform: scale(1);
		-ms-transform: scale(1);
		-o-transform: scale(1);
		transform: scale(1);
	}
}

.main-nav {
	float: right;
	margin-right: 2%;
	margin-top: 1%;
	width: 44px;
	height: 100%;
	background:
		url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/148866/cd-icon-menu.svg")
		no-repeat center center;
	cursor: pointer;
}

.main-nav ul {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	-webkit-transform: translateY(-100%);
	-moz-transform: translateY(-100%);
	-ms-transform: translateY(-100%);
	-o-transform: translateY(-100%);
	transform: translateY(-100%);
}

.main-nav ul.is-visible {
	-webkit-transform: translateY(50px);
	-moz-transform: translateY(50px);
	-ms-transform: translateY(50px);
	-o-transform: translateY(50px);
	transform: translateY(50px);
}

.main-nav a {
	display: block;
	height: 50px;
	line-height: 50px;
	padding-left: 5%;
	background: #292a34;
	border-top: 1px solid #3b3d4b;
	color: #FFF;
}

@media only screen and (min-width: 768px) {
	.main-nav {
		width: auto;
		height: auto;
		background: none;
		cursor: auto;
	}
	.main-nav ul {
		position: static;
		width: auto;
		-webkit-transform: translateY(0);
		-moz-transform: translateY(0);
		-ms-transform: translateY(0);
		-o-transform: translateY(0);
		transform: translateY(0);
		line-height: 80px;
	}
	.main-nav ul.is-visible {
		-webkit-transform: translateY(0);
		-moz-transform: translateY(0);
		-ms-transform: translateY(0);
		-o-transform: translateY(0);
		transform: translateY(0);
	}
	.main-nav li {
		display: inline-block;
		margin-left: 1em;
	}
	.main-nav li:nth-last-child(2) {
		margin-left: 2em;
	}
	.main-nav a {
		display: inline-block;
		height: auto;
		line-height: normal;
		background: transparent;
	}
	.main-nav a.cd-signin, .main-nav a.cd-signup {
		padding: 0.6em 1em;
		border: 1px solid rgba(255, 255, 255, 0.6);
		border-radius: 50em;
	}
	.main-nav a.cd-signup {
		background: #2f889a;
		border: none;
	}
	.main-nav a.cd-signin {
		background: #4a69bd;
		border: none;
	}
}

.userWrap {
	display: flex;
	align-items: center;
	justify-content: center;
	height: 100%;
	background: url(img/Update_bg03.jpg) no-repeat center, #ebf7ff;
	background-size: cover;
}

input::placeholder {
	color: #999;
	font-size: .65rem;
	padding: .2rem 0
}

.user_modify {
	width: 100%;
	max-width: 35rem;
	background: #fff;
	border-radius: 15px;
	padding: 2.5rem 0;
	margin: 0 auto;
	box-shadow: 6px 6px 6px rgb(0 0 0/ 30%);
}

.modify_wrap {
	max-width:450px;
	margin: 0 auto;
}

.user_modify h4 {
	font-size: 1.5rem;
	color: #333;
	font-weight: bold;
	padding-bottom: 2.5rem;
}


.user_modify .modify_content ul {
	width: fit-content;
	margin: 0 auto;
}

.user_modify .modify_content ul>li {
	display: block;
	color: #555;
	padding-bottom: .2rem;
}

.user_modify .modify_content ul>li>input {
	font-size: .75rem;
	border: 1px solid #dedede;
	border-radius: 5px;
	padding: .5rem 1.5rem .5rem .5rem;
}

.user_modify .modify_content ul>li:last-child {
	padding-bottom: 0;
	padding-top: .5rem;
}

.user_modify .modify_content .join_btn button {
	width: 100%;
	background: #8c9eff;
	font-size: .6rem;
	font-weight: 500;
	color: #fff;
	border-radius: 5px;
	border: none;
	padding: .35rem 0;
}

@media screen and (max-width:981px) {
	.search_box {
		/* padding: 0.4rem; */
		margin-left: 150px;
	}
}

.search_box {
	background: #eee;
	padding: 0.4rem;
	margin: 1rem 0;
	width: 15%;
	border: 0;
	outline: none;
	border-radius: 0.9rem;
	/* box-shadow: inset 7px 2px 10px #d8dbd9, inset -5px -5px 12px #fff; */
}

.search_text {
	border: 0;
	outline: 0;
	background: #eee;
	display: flex;
	flex-direction: row;
	padding: 0 0.2rem;
	height: 100%;
	width: 100%;
	justify-content: space-evenly;
	align-items: baseline;
	align-content: stretch;
}
</style>
</head>

<body style="text-align: center;">

	<%
	memberDTO info = (memberDTO) session.getAttribute("info");
	%>

	<!-- Navbar Start -->
	<nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0" style="height: 6em;"> 
		<a href="index.jsp" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
			<h1 class="m-0">Mentorvation</h1>
		</a>
		<div class="search_box search_holder" style="margin-left: 180px; margin-bottom: 0;">
			<div>
				<input class="search_text" type="text" placeholder="search">
			</div>
		</div>
		<button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<div class="navbar-nav ms-auto p-4 p-lg-0">
				<a href="index.jsp" class="nav-item nav-link active">Home</a> <a
					href="watchvideo.jsp" class="nav-item nav-link">Recommendation</a>
				<a href="calendar.jsp" class="nav-item nav-link">My Calendar</a> <a
					href="myprofile.jsp" class="nav-item nav-link">My Profile</a>
	
			</div>
			<nav class="main-nav">
			<ul style="padding-left: 0px;">
				<!-- inser more links here -->
				<li><a class="cd-signin" href="LogoutService.do">Logout</a></li>
			</ul>
			</nav>
		</div>
	</nav>
	<!-- Navbar End -->

	<!-- Wrapper -->
		<!-- Menu -->
	<div class="userWrap">
		<div class="user_modify">
			<div class="modify_wrap">
				<h4 style="color: #444;">UPLOAD</h4>
				<form action="UploadService.do" method="post" enctype="multipart/form-data">
					<ul>
						<li><p class="modify_txt">비디오파일</p>
							<label for="file">파일찾기</label> 
							<input style="border:none; background:none;" type="file" id="file" name="video_file">
						</li>
						<li><p class="modify_txt">비디오가격</p><input class="mod_txt" type="number" name="video_price"></li>
						<li><p class="modify_txt">비디오설명</p><input class="mod_txt" type="text" name="video_desc"></li>
					</ul>
					<input class="modify_upload_btn" type="submit" value="Upload">
				</form>
			</div>
		</div>
	</div>
	<!-- Wrapper End-->
	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>
</body>
</html>
