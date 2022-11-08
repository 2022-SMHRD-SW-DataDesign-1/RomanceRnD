<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.memberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
/* -------------------------------- 
	
	Primary style
	
	-------------------------------- */
html * {
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}

*, *:after, *:before {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

body {
	font-size: 100%;
	font-family: "PT Sans", sans-serif;
	color: #505260;
	background-color: #fff;
}

a {
	color: #2f889a;
	text-decoration: none;
}

img {
	max-width: 100%;
}

input, textarea {
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

/* -------------------------------- 
	
	xsigin/signup popup 
	
	-------------------------------- */
.cd-user-modal {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(52, 54, 66, 0.9);
	z-index: 3;
	overflow-y: auto;
	cursor: pointer;
	visibility: hidden;
	opacity: 0;
	-webkit-transition: opacity 0.3s 0, visibility 0 0.3s;
	-moz-transition: opacity 0.3s 0, visibility 0 0.3s;
	transition: opacity 0.3s 0, visibility 0 0.3s;
}

.cd-user-modal.is-visible {
	visibility: visible;
	opacity: 1;
	-webkit-transition: opacity 0.3s 0, visibility 0 0;
	-moz-transition: opacity 0.3s 0, visibility 0 0;
	transition: opacity 0.3s 0, visibility 0 0;
}

.cd-user-modal.is-visible .cd-user-modal-container {
	-webkit-transform: translateY(0);
	-moz-transform: translateY(0);
	-ms-transform: translateY(0);
	-o-transform: translateY(0);
	transform: translateY(0);
}

.cd-user-modal-container {
	position: relative;
	width: 90%;
	max-width: 600px;
	background: #FFF;
	margin: 3em auto 4em;
	cursor: auto;
	border-radius: 0.25em;
	-webkit-transform: translateY(-30px);
	-moz-transform: translateY(-30px);
	-ms-transform: translateY(-30px);
	-o-transform: translateY(-30px);
	transform: translateY(-30px);
	-webkit-transition-property: -webkit-transform;
	-moz-transition-property: -moz-transform;
	transition-property: transform;
	-webkit-transition-duration: 0.3s;
	-moz-transition-duration: 0.3s;
	transition-duration: 0.3s;
}

.cd-user-modal-container .cd-switcher::after {
	clear: both;
	content: "";
	display: table;
}

.cd-user-modal-container .cd-switcher li {
	width: 50%;
	float: left;
	text-align: center;
}

.cd-user-modal-container .cd-switcher li:first-child a {
	border-radius: 0.25em 0 0 0;
}

.cd-user-modal-container .cd-switcher li:last-child a {
	border-radius: 0 0.25em 0 0;
}

.cd-user-modal-container .cd-switcher a {
	display: block;
	width: 100%;
	height: 50px;
	line-height: 50px;
	background: #d2d8d8;
	color: #809191;
}

.cd-user-modal-container .cd-switcher a.selected {
	background: #FFF;
	color: #505260;
}

@media only screen and (min-width: 600px) {
	.cd-user-modal-container {
		margin: 11em auto;
	}
	.cd-user-modal-container .cd-switcher a {
		height: 70px;
		line-height: 70px;
	}
}

.cd-form {
	padding: 1.4em;
}

.cd-form .fieldset {
	position: relative;
	margin: 1.4em 0;
}

.cd-form .fieldset:first-child {
	margin-top: 0;
}

.cd-form .fieldset:last-child {
	margin-bottom: 0;
}

.cd-form label {
	font-size: 14px;
	font-size: 0.875rem;
}

.cd-form label.image-replace {
	/* replace text with an icon */
	display: inline-block;
	position: absolute;
	left: 15px;
	top: 50%;
	bottom: auto;
	-webkit-transform: translateY(-50%);
	-moz-transform: translateY(-50%);
	-ms-transform: translateY(-50%);
	-o-transform: translateY(-50%);
	transform: translateY(-50%);
	height: 20px;
	width: 20px;
	/* overflow: hidden; */
	text-indent: 100%;
	white-space: nowrap;
	color: transparent;
	text-shadow: none;
	background-repeat: no-repeat;
	background-position: 50% 0;
}

.cd-form label.cd-username {
	background-image:
		url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/148866/cd-icon-username.svg");
}

.cd-form label.cd-email {
	background-image:
		url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/148866/cd-icon-email.svg");
}

.cd-form label.cd-password {
	background-image:
		url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/148866/cd-icon-password.svg");
}

.cd-form input {
	margin: 0;
	padding: 0;
	border-radius: 0.25em;
}

.cd-form input.full-width {
	width: 100%;
}

.cd-form input.has-padding {
	padding: 12px 20px 12px 50px;
}

.cd-form input.has-border {
	border: 1px solid #d2d8d8;
	-webkit-appearance: none;
	-moz-appearance: none;
	-ms-appearance: none;
	-o-appearance: none;
	appearance: none;
}

.cd-form input.has-border:focus {
	border-color: #343642;
	box-shadow: 0 0 5px rgba(52, 54, 66, 0.1);
	outline: none;
}

.cd-form input.has-error {
	border: 1px solid #d76666;
}

.cd-form input[type=password] {
	/* space left for the HIDE button */
	padding-right: 65px;
}

.cd-form input[type=submit] {
	padding: 16px 0;
	cursor: pointer;
	background: #2f889a;
	color: #FFF;
	font-weight: bold;
	border: none;
	-webkit-appearance: none;
	-moz-appearance: none;
	-ms-appearance: none;
	-o-appearance: none;
	appearance: none;
}

.no-touch .cd-form input[type=submit]:hover, .no-touch .cd-form input[type=submit]:focus
	{
	background: #3599ae;
	outline: none;
}

.cd-form .hide-password {
	display: inline-block;
	position: absolute;
	right: 0;
	top: 0;
	padding: 6px 15px;
	border-left: 1px solid #d2d8d8;
	top: 50%;
	bottom: auto;
	-webkit-transform: translateY(-50%);
	-moz-transform: translateY(-50%);
	-ms-transform: translateY(-50%);
	-o-transform: translateY(-50%);
	transform: translateY(-50%);
	font-size: 14px;
	font-size: 0.875rem;
	color: #343642;
}

.cd-form .cd-error-message {
	display: inline-block;
	position: absolute;
	left: -5px;
	bottom: -35px;
	background: rgba(215, 102, 102, 0.9);
	padding: 0.8em;
	z-index: 2;
	color: #FFF;
	font-size: 13px;
	font-size: 0.8125rem;
	border-radius: 0.25em;
	/* prevent click and touch events */
	pointer-events: none;
	visibility: hidden;
	opacity: 0;
	-webkit-transition: opacity 0.2s 0, visibility 0 0.2s;
	-moz-transition: opacity 0.2s 0, visibility 0 0.2s;
	transition: opacity 0.2s 0, visibility 0 0.2s;
}

.cd-form .cd-error-message::after {
	/* triangle */
	content: "";
	position: absolute;
	left: 22px;
	bottom: 100%;
	height: 0;
	width: 0;
	border-bottom: 8px solid rgba(215, 102, 102, 0.9);
	border-left: 8px solid transparent;
	border-right: 8px solid transparent;
}

.cd-form .cd-error-message.is-visible {
	opacity: 1;
	visibility: visible;
	-webkit-transition: opacity 0.2s 0, visibility 0 0;
	-moz-transition: opacity 0.2s 0, visibility 0 0;
	transition: opacity 0.2s 0, visibility 0 0;
}

@media only screen and (min-width: 600px) {
	.cd-form {
		padding: 2em;
	}
	.cd-form .fieldset {
		margin: 2em 0;
	}
	.cd-form .fieldset:first-child {
		margin-top: 0;
	}
	.cd-form .fieldset:last-child {
		margin-bottom: 0;
	}
	.cd-form input.has-padding {
		padding: 16px 20px 16px 50px;
	}
	.cd-form input[type=submit] {
		padding: 16px 0;
	}
}

.cd-form-message {
	padding: 1.4em 1.4em 0;
	font-size: 14px;
	font-size: 0.875rem;
	line-height: 1.4;
	text-align: center;
}

@media only screen and (min-width: 600px) {
	.cd-form-message {
		padding: 2em 2em 0;
	}
}

.cd-form-bottom-message {
	position: absolute;
	width: 100%;
	left: 0;
	bottom: -30px;
	text-align: center;
	font-size: 14px;
	font-size: 0.875rem;
}

.cd-form-bottom-message a {
	color: #FFF;
	text-decoration: underline;
}

.cd-close-form {
	/* form X button on top right */
	display: block;
	position: absolute;
	width: 40px;
	height: 40px;
	right: 0;
	top: -40px;
	background:
		url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/148866/cd-icon-close.svg")
		no-repeat center center;
	text-indent: 100%;
	white-space: nowrap;
	/* overflow: hidden; */
}

@media only screen and (min-width: 1170px) {
	.cd-close-form {
		display: none;
	}
}

#cd-login, #cd-signup, #cd-reset-password {
	display: none;
}

#cd-login.is-selected, #cd-signup.is-selected, #cd-reset-password.is-selected
	{
	display: block;
}
/* 염건웅_추가 */
#display-1 text-white mb-5 animated slideInDown_2 {
	font-color: green !important;
}

.profile-user-img-img {
	width: 161px;
	height: 161px;
	border-radius: 70%;
	overflow: hidden;
	/* 한가연 검색창 추가 */
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
	margin: 1rem 0.5rem;
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
	padding: 0 1rem;
	height: 100%;
	width: 100%;
	justify-content: space-evenly;
	align-items: baseline;
	align-content: stretch;
}

.search_icon {
	display: inline-block;
}
</style>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
</head>

<body>
	<!-- Scriptlet -->
	<%
		/* dwyane */
		String profile_id = request.getParameter("profile_id");
		System.out.println(profile_id);
		
		/* memberDTO info = (memberDTO)session.getAttribute("info"); */
	%>
	
	<!-- Spinner Start -->
	<div id="spinner"
		class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner-border text-primary" role="status"
			style="width: 3rem; height: 3rem;"></div>
	</div>
	<!-- Spinner End -->


	<!-- Topbar Start -->
	<!-- <div class="container-fluid bg-dark text-light px-0 py-2">
        <div class="row gx-0 d-none d-lg-flex">
            <div class="col-lg-7 px-5 text-start">
                <div class="h-100 d-inline-flex align-items-center me-4">
                    <span class="fa fa-phone-alt me-2"></span>
                    <span>010-3615-0272</span>
                </div>
                <div class="h-100 d-inline-flex align-items-center">
                    <span class="far fa-envelope me-2"></span>
                    <span>keonungs@gmail.com</span>
                </div>
            </div>
            <div class="col-lg-5 px-5 text-end">
                <div class="h-100 d-inline-flex align-items-center mx-n2">
                    <span>Follow Us:</span>
                    <a class="btn btn-link text-light" href=""><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-link text-light" href=""><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-link text-light" href=""><i class="fab fa-linkedin-in"></i></a>
                    <a class="btn btn-link text-light" href=""><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
    </div> -->
	<!-- Topbar End -->

	<%
	memberDTO info = (memberDTO) session.getAttribute("info");
	%>
	<!-- Navbar Start -->
	<!-- 염건웅_수정: 상단 navbar 높이 수정 -->
	<nav
		class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0"
		style="height: 6em;">
		<a href="index.jsp"
			class="navbar-brand d-flex align-items-center px-4 px-lg-5">
			<h1 class="m-0">Mentorvation</h1>
		</a>

		<!-- 한가연 검색창 만들기 -->
		<div class="search_box" style="margin-left: 200px">
			<div>
				<input class="search_text" type="text" placeholder="search">
			</div>
		</div>
        
        <button type="button" class="navbar-toggler me-4"
			data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="index.jsp" class="nav-item nav-link active">Home</a>
                <a href="recommendation.jsp" class="nav-item nav-link">Recommendation</a>
                <a href="calendar.jsp" class="nav-item nav-link">Calendar</a>
                <a href="profile.jsp" class="nav-item nav-link">Profile</a>
                <!-- <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                    <div class="dropdown-menu bg-light m-0">
                        <a href="feature.jsp" class="dropdown-item">Features</a>
                        <a href="quote.jsp" class="dropdown-item">Free Quote</a>
                        <a href="team.jsp" class="dropdown-item">Our Team</a>
                        <a href="testimonial.jsp" class="dropdown-item">Testimonial</a>
                        <a href="404.jsp" class="dropdown-item">404 Page</a>
                    </div>
                </div>
                <a href="contact.jsp" class="nav-item nav-link">Contact</a> -->
            </div>
            <!-- <a href="" class="btn btn-primary py-4 px-lg-4 rounded-0 d-none d-lg-block">LOGIN<i class="fa fa-arrow-right ms-3"></i></a> -->
         	<nav class="main-nav">
				<ul>
					<!-- inser more links here -->
					<%
					if (info == null) {
					%>
						<li><a class="cd-signin" href="#0">Sign in</a></li>
					<%
					} else {
					%>
						<li><a class="cd-signin" href="UpdateMember.jsp">회원정보수정</a></li>
						<li><a class="cd-signin" href="LogoutService.do">Logout</a></li>
					<%
					}
					%>
				</ul>
			</nav>
            
        </div>
    </nav>


    <!-- Page Header Start -->
    <!-- <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container text-center py-5">
            <h1 class="display-3 text-white mb-4 animated slideInDown">Projects</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb justify-content-center mb-0">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Pages</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Projects</li>
                </ol>
            </nav>
        </div>
    </div> -->
    <!-- Page Header End -->


    <!-- Projects Start -->
    <div class="container-xxl py-5">
        <div class="container" style="text-align: center">
           	<div style="text-align: right;">
           		<!-- <input type="text">
           		<input type="button" value="Search"> -->
           		<!-- <button>검색</button> -->
           	</div>
           	
           	<div style="text-align: right">
	           	<!-- <a href="Upload.jsp"><input type="button" value="Upload"></a> -->
	           	<!-- Button trigger modal -->
				<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
					Upload
				</button>
				
				<!-- Modal -->
				<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-fullscreen">
						<div class="modal-content">
							<div class="modal-header">
								<h1 class="modal-title fs-5" id="exampleModalLabel">Upload</h1>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
								<div class="modal-body">
									<form action="UploadService.do" method="post" enctype="multipart/form-data">
										<!-- 비디오시퀀스<input type="number" name="video_seq"><br>
										멤버아이디<input type="text" name="member_id"><br> -->
										비디오파일<input type="file" name="video_file"><br>
										비디오가격<input type="number" name="video_price"><br>
										비디오설명<input type="text" name="video_desc"><br>
										<!-- 비디오업로드날짜<input type="date" name="upload_dt"><br>
										허용권한<input type="text" name="permissions"><br> -->
										<input type="submit">
									</form>
								</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary">Save changes</button>
							</div>
						</div>
					</div>
				</div>
           	</div>
            <div class="text-center mx-auto wow fadeInUp"
				data-wow-delay="0.1s" style="display:inline-flex;">
                <!-- <p class="fs-5 fw-bold text-primary">Profile</p> -->
     			<img src="img/profile_image.png" alt="profile-user-img"
					class="profile-user-img-img"
					style="border-style: solid; border-color: black;">
                <div
					style="padding-left: 6em; text-align: left;padding-top: 3rem;">
					
					<!-- <div style="text-align: center">
						<div style="text-align: center">
						a
						</div>
						
						<div style="text-align: center">
						b
						</div>
					</div> -->
					<div style="width: 16em;text-align: center;">
						<table style="border: 1px">
							<tr style="text-align: center; width:16em;">
								<td style="text-align: center;width: 8em;">
								10
								</td>
								<td style="text-align: center;width: 8em;">
								10
								</td>
							</tr>
							<tr style="text-align: center; width: 16em;">
								<td style="text-align: center;width: 8em;">
								Mentor
								</td>
								<td style="text-align: center;width: 8em;">
								Mentee
								</td>
							</tr>
						</table>
					</div>
					<div style="margin: 1rem auto;">
						
						<!--  -->
						<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
							Handshake
						</button>
				
						<!-- Modal -->
						<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h1 class="modal-title fs-5" id="staticBackdropLabel">Handshake</h1>
						        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						      </div>
						      <div class="modal-body">
						      	Would you like to send Handshake to <%=profile_id%>
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
						        <button type="button" class="btn btn-primary">Ok</button>
						      </div>
						    </div>
						  </div>
						</div>
						
						<!-- dwyane -->
				<!-- Button trigger modal -->
				<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
					Tea-Time
				</button>
				
				<!-- Modal -->
				<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-fullscreen">
						<div class="modal-content">
							<div class="modal-header">
								<h1 class="modal-title fs-5" id="exampleModalLabel">Tea-Time</h1>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
								<div class="modal-body">
								</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary">Save changes</button>
							</div>
						</div>
					</div>
				</div>

				<!-- dwyane -->
				<!-- Button trigger modal -->
				<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
					Schedule
				</button>
				
				<!-- Modal -->
				<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-fullscreen">
						<div class="modal-content">
							<div class="modal-header">
								<h1 class="modal-title fs-5" id="exampleModalLabel">Tea-Time</h1>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
								<div class="modal-body">
								</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary">Save changes</button>
							</div>
						</div>
					</div>
				</div>
						
						
					</div>
                </div>
            </div>
            <div style="text-align: center; padding-right: 22em; ">
            <!-- dwyane -->
            	<%-- <%
					memberDTO dto = new memberDTO();
            		memberDAO dao = new memberDAO();
					
					memberDTO selected_member = dao.selectAll(profile_id);
					String selected_member_name = selected_member.getMember_name();
					System.out.println("info: "+ selected_member);
				%> --%>
	            <%-- <h1 class="display-5 mb-5" style="padding: 0em; color: black;margin-bottom: 0rem !important;"><%=selected_member_name%></h1> --%>
	            <h1 class="display-5 mb-5"
					style="padding: 0em; color: black;margin-bottom: 0rem !important;">test</h1>
				<textarea rows="" cols=""></textarea>
            </div>
    		<br><br>
            <!-- <div class="row wow fadeInUp" data-wow-delay="0.3s">
                <div class="col-12 text-center">
                    <ul class="list-inline rounded mb-5" id="portfolio-flters">
                        <li class="mx-2 active" data-filter="*">전체</li>
                        <li class="mx-2" data-filter=".first">이미지</li>
                        <li class="mx-2" data-filter=".second">영상</li>
                    </ul>
                </div>
            </div> -->
            <div class="row g-4 portfolio-container">
                <div
					class="col-lg-4 col-md-6 portfolio-item first wow fadeInUp"
					data-wow-delay="0.1s">
                    <div class="portfolio-inner rounded">
                        <img class="img-fluid" src="img/service-1.jpg"
							alt="">
                        <div class="portfolio-text">
                            <h4 class="text-white mb-4">Landscaping</h4>
                            <div class="d-flex">
                                <a
									class="btn btn-lg-square rounded-circle mx-2"
									href="img/service-1.jpg" data-lightbox="portfolio"><i
									class="fa fa-eye"></i></a>
                                <a
									class="btn btn-lg-square rounded-circle mx-2" href=""><i
									class="fa fa-link"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div
					class="col-lg-4 col-md-6 portfolio-item second wow fadeInUp"
					data-wow-delay="0.3s">
                    <div class="portfolio-inner rounded">
                        <img class="img-fluid" src="img/service-2.jpg"
							alt="">
                        <div class="portfolio-text">
                            <h4 class="text-white mb-4">Pruning plants</h4>
                            <div class="d-flex">
                                <a
									class="btn btn-lg-square rounded-circle mx-2"
									href="img/service-2.jpg" data-lightbox="portfolio"><i
									class="fa fa-eye"></i></a>
                                <a
									class="btn btn-lg-square rounded-circle mx-2" href=""><i
									class="fa fa-link"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div
					class="col-lg-4 col-md-6 portfolio-item first wow fadeInUp"
					data-wow-delay="0.5s">
                    <div class="portfolio-inner rounded">
                        <img class="img-fluid" src="img/service-3.jpg"
							alt="">
                        <div class="portfolio-text">
                            <h4 class="text-white mb-4">Irrigation & Drainage</h4>
                            <div class="d-flex">
                                <a
									class="btn btn-lg-square rounded-circle mx-2"
									href="img/service-3.jpg" data-lightbox="portfolio"><i
									class="fa fa-eye"></i></a>
                                <a
									class="btn btn-lg-square rounded-circle mx-2" href=""><i
									class="fa fa-link"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div
					class="col-lg-4 col-md-6 portfolio-item second wow fadeInUp"
					data-wow-delay="0.1s">
                    <div class="portfolio-inner rounded">
                        <img class="img-fluid" src="img/service-4.jpg"
							alt="">
                        <div class="portfolio-text">
                            <h4 class="text-white mb-4">Garden Maintenance</h4>
                            <div class="d-flex">
                                <a
									class="btn btn-lg-square rounded-circle mx-2"
									href="img/service-4.jpg" data-lightbox="portfolio"><i
									class="fa fa-eye"></i></a>
                                <a
									class="btn btn-lg-square rounded-circle mx-2" href=""><i
									class="fa fa-link"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div
					class="col-lg-4 col-md-6 portfolio-item first wow fadeInUp"
					data-wow-delay="0.3s">
                    <div class="portfolio-inner rounded">
                        <img class="img-fluid" src="img/service-5.jpg"
							alt="">
                        <div class="portfolio-text">
                            <h4 class="text-white mb-4">Green Technology</h4>
                            <div class="d-flex">
                                <a
									class="btn btn-lg-square rounded-circle mx-2"
									href="img/service-5.jpg" data-lightbox="portfolio"><i
									class="fa fa-eye"></i></a>
                                <a
									class="btn btn-lg-square rounded-circle mx-2" href=""><i
									class="fa fa-link"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div
					class="col-lg-4 col-md-6 portfolio-item second wow fadeInUp"
					data-wow-delay="0.5s">
                    <div class="portfolio-inner rounded">
                        <img class="img-fluid" src="img/service-6.jpg"
							alt="">
                        <div class="portfolio-text">
                            <h4 class="text-white mb-4">Urban Gardening</h4>
                            <div class="d-flex">
                                <a
									class="btn btn-lg-square rounded-circle mx-2"
									href="img/service-6.jpg" data-lightbox="portfolio"><i
									class="fa fa-eye"></i></a>
                                <a
									class="btn btn-lg-square rounded-circle mx-2" href=""><i
									class="fa fa-link"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Projects End -->


    <!-- Footer Start -->
    <!-- <div class="container-fluid bg-dark text-light footer mt-5 py-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-4">Our Office</h4>
                    <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>123 Street, New York, USA</p>
                    <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+012 345 67890</p>
                    <p class="mb-2"><i class="fa fa-envelope me-3"></i>info@example.com</p>
                    <div class="d-flex pt-2">
                        <a class="btn btn-square btn-outline-light rounded-circle me-2" href=""><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-square btn-outline-light rounded-circle me-2" href=""><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-square btn-outline-light rounded-circle me-2" href=""><i class="fab fa-youtube"></i></a>
                        <a class="btn btn-square btn-outline-light rounded-circle me-2" href=""><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-4">Services</h4>
                    <a class="btn btn-link" href="">Landscaping</a>
                    <a class="btn btn-link" href="">Pruning plants</a>
                    <a class="btn btn-link" href="">Urban Gardening</a>
                    <a class="btn btn-link" href="">Garden Maintenance</a>
                    <a class="btn btn-link" href="">Green Technology</a>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-4">Quick Links</h4>
                    <a class="btn btn-link" href="">About Us</a>
                    <a class="btn btn-link" href="">Contact Us</a>
                    <a class="btn btn-link" href="">Our Services</a>
                    <a class="btn btn-link" href="">Terms & Condition</a>
                    <a class="btn btn-link" href="">Support</a>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-4">Newsletter</h4>
                    <p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
                    <div class="position-relative w-100">
                        <input class="form-control bg-light border-light w-100 py-3 ps-4 pe-5" type="text" placeholder="Your email">
                        <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
                    </div>
                </div>
            </div>
        </div>
    </div> -->
    <!-- Footer End -->


    <!-- Copyright Start -->
    <!-- <div class="container-fluid copyright py-4">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                    &copy; <a class="border-bottom" href="#">Your Site Name</a>, All Right Reserved.
                </div>
                <div class="col-md-6 text-center text-md-end">
                    /*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/
                    Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a> Distributed By <a href="https://themewagon.com">ThemeWagon</a>
                </div>
            </div>
        </div>
    </div> -->
    <!-- Copyright End -->

	
	
    <!-- Back to Top -->
    <a href="#"
		class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i
		class="bi bi-arrow-up"></i></a>
	
	<!-- cd-user-modal Start -->
    <div class="cd-user-modal">
		<!-- this is the entire modal form, including the background -->
		<div class="cd-user-modal-container">
			<!-- this is the container wrapper -->
			<ul class="cd-switcher">
				<li><a href="#0">Sign in</a></li>
				<li><a href="#0">New account</a></li>
			</ul>

			<div id="cd-login">
				<!-- log in form -->
				<form action="LoginService.do" class="cd-form" method="post">
					<p class="fieldset">
						<label class="image-replace cd-email" for="signin-email">Username</label>
						<input class="full-width has-padding has-border" id="signin-email"
							type="text" name="member_name" placeholder="Username"> <span
							class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-password" for="signin-password">Password</label>
						<input class="full-width has-padding has-border"
							id="signin-password" type="text" name="member_pw" placeholder="Password">
						<a href="#0" class="hide-password">Hide</a> <span
							class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<input type="checkbox" id="remember-me" checked> <label
							for="remember-me">Remember me</label>
					</p>

					<p class="fieldset">
						<input class="full-width" type="submit" value="Login">
					</p>
				</form>

				<p class="cd-form-bottom-message">
					<a href="#0">Forgot your password?</a>
				</p>
				<!-- <a href="#0" class="cd-close-form">Close</a> -->
			</div>
			<!-- cd-login -->

			<div id="cd-signup">
				<!-- sign up form -->
				<form action="JoinService.do" class="cd-form" method="post">
					<p class="fieldset">
						<label class="image-replace cd-username" for="signup-username">Username</label>
						<input class="full-width has-padding has-border" name="member_name"
							id="signup-username" type="text" placeholder="Username">
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-email" for="signup-email">E-mail</label>
						<input class="full-width has-padding has-border" name="member_id" id="signup-email"
							type="email" placeholder="E-mail"> <span
							class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-password" for="signup-password">Password</label>
						<input class="full-width has-padding has-border"
							id="signup-password" type="text" name="member_pw" placeholder="Password">
						<a href="#0" class="hide-password">Hide</a> <span
							class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<input type="checkbox" id="accept-terms"> <label
							for="accept-terms">I agree to the <a href="#0">Terms</a></label>
					</p>

					<p class="fieldset">
						<input class="full-width has-padding" type="submit"
							value="Create account">
					</p>
				</form>

				<!-- <a href="#0" class="cd-close-form">Close</a> -->
			</div>

			<!-- cd-signup -->
			<div id="cd-reset-password">
				<!-- reset password form -->
				<p class="cd-form-message">Lost your password? Please enter your
					email address. You will receive a link to create a new password.</p>

				<form class="cd-form">
					<p class="fieldset">
						<label class="image-replace cd-email" for="reset-email">E-mail</label>
						<input class="full-width has-padding has-border" id="reset-email"
							type="email" placeholder="E-mail"> <span
							class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<input class="full-width has-padding" type="submit"
							value="Reset password">
					</p>
				</form>

				<p class="cd-form-bottom-message">
					<a href="#0">Back to log-in</a>
				</p>
			</div>
			<!-- cd-reset-password -->
			<a href="#0" class="cd-close-form">Close</a>
		</div>
		<!-- cd-user-modal-container -->
	</div>
	<!-- cd-user-modal -->
	
	<!-- JavaScript -->
	<script>
		jQuery(document).ready(function($){
		  var $form_modal = $('.cd-user-modal'),
		    $form_login = $form_modal.find('#cd-login'),
		    $form_signup = $form_modal.find('#cd-signup'),
		    $form_forgot_password = $form_modal.find('#cd-reset-password'),
		    $form_modal_tab = $('.cd-switcher'),
		    $tab_login = $form_modal_tab.children('li').eq(0).children('a'),
		    $tab_signup = $form_modal_tab.children('li').eq(1).children('a'),
		    $forgot_password_link = $form_login.find('.cd-form-bottom-message a'),
		    $back_to_login_link = $form_forgot_password.find('.cd-form-bottom-message a'),
		    $main_nav = $('.main-nav');

		  //open modal
		  $main_nav.on('click', function(event){

		    if( $(event.target).is($main_nav) ) {
		      // on mobile open the submenu
		      $(this).children('ul').toggleClass('is-visible');
		    } else {
		      // on mobile close submenu
		      $main_nav.children('ul').removeClass('is-visible');
		      //show modal layer
		      $form_modal.addClass('is-visible'); 
		      //show the selected form
		      ( $(event.target).is('.cd-signup') ) ? signup_selected() : login_selected();
		    }

		  });

		  //close modal
		  $('.cd-user-modal').on('click', function(event){
		    if( $(event.target).is($form_modal) || $(event.target).is('.cd-close-form') ) {
		      $form_modal.removeClass('is-visible');
		    } 
		  });
		  //close modal when clicking the esc keyboard button
		  $(document).keyup(function(event){
		      if(event.which=='27'){
		        $form_modal.removeClass('is-visible');
		      }
		    });

		  //switch from a tab to another
		  $form_modal_tab.on('click', function(event) {
		    event.preventDefault();
		    ( $(event.target).is( $tab_login ) ) ? login_selected() : signup_selected();
		  });

		  //hide or show password
		  $('.hide-password').on('click', function(){
		    var $this= $(this),
		      $password_field = $this.prev('input');
		    
		    ( 'password' == $password_field.attr('type') ) ? $password_field.attr('type', 'text') : $password_field.attr('type', 'password');
		    ( 'Hide' == $this.text() ) ? $this.text('Show') : $this.text('Hide');
		    //focus and move cursor to the end of input field
		    $password_field.putCursorAtEnd();
		  });

		  //show forgot-password form 
		  $forgot_password_link.on('click', function(event){
		    event.preventDefault();
		    forgot_password_selected();
		  });

		  //back to login from the forgot-password form
		  $back_to_login_link.on('click', function(event){
		    event.preventDefault();
		    login_selected();
		  });

		  function login_selected(){
		    $form_login.addClass('is-selected');
		    $form_signup.removeClass('is-selected');
		    $form_forgot_password.removeClass('is-selected');
		    $tab_login.addClass('selected');
		    $tab_signup.removeClass('selected');
		  }

		  function signup_selected(){
		    $form_login.removeClass('is-selected');
		    $form_signup.addClass('is-selected');
		    
		    $form_forgot_password.removeClass('is-selected');
		    $tab_login.removeClass('selected');
		    $tab_signup.addClass('selected');
		  }

		  function forgot_password_selected(){
		    $form_login.removeClass('is-selected');
		    $form_signup.removeClass('is-selected');
		    $form_forgot_password.addClass('is-selected');
		  }

		  //REMOVE THIS - it's just to show error messages 
		  /* $form_login.find('input[type="submit"]').on('click', function(event){
		    event.preventDefault();
		    $form_login.find('input[type="email"]').toggleClass('has-error').next('span').toggleClass('is-visible');
		  });
		  $form_signup.find('input[type="submit"]').on('click', function(event){
		    event.preventDefault();
		    $form_signup.find('input[type="email"]').toggleClass('has-error').next('span').toggleClass('is-visible');
		  }); */


		  //IE9 placeholder fallback
		  //credits http://www.hagenburger.net/BLOG/HTML5-Input-Placeholder-Fix-With-jQuery.html
		  if(!Modernizr.input.placeholder){
		    $('[placeholder]').focus(function() {
		      var input = $(this);
		      if (input.val() == input.attr('placeholder')) {
		        input.val('');
		        }
		    }).blur(function() {
		      var input = $(this);
		        if (input.val() == '' || input.val() == input.attr('placeholder')) {
		        input.val(input.attr('placeholder'));
		        }
		    }).blur();
		    $('[placeholder]').parents('form').submit(function() {
		        $(this).find('[placeholder]').each(function() {
		        var input = $(this);
		        if (input.val() == input.attr('placeholder')) {
		          input.val('');
		        }
		        })
		    });
		  }

		});


		//credits https://css-tricks.com/snippets/jquery/move-cursor-to-end-of-textarea-or-input/
		jQuery.fn.putCursorAtEnd = function() {
		  return this.each(function() {
		      // If this function exists...
		      if (this.setSelectionRange) {
		          // ... then use it (Doesn't work in IE)
		          // Double the length because Opera is inconsistent about whether a carriage return is one character or two. Sigh.
		          var len = $(this).val().length * 2;
		          this.setSelectionRange(len, len);
		      } else {
		        // ... otherwise replace the contents with itself
		        // (Doesn't work in Google Chrome)
		          $(this).val($(this).val());
		      }
		  });
		  
		};
	</script>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/parallax/parallax.min.js"></script>
    <script src="lib/isotope/isotope.pkgd.min.js"></script>
    <script src="lib/lightbox/js/lightbox.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>


</html>