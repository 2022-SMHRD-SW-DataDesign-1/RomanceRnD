<%@page import="java.util.function.Function"%>
<%@page import="com.smhrd.model.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>MENTORVATION</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600;700&family=Open+Sans:wght@400;500&display=swap" rel="stylesheet">  

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
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
	  font-family: 'Noto Sans KR', 'NanumGothic', '나눔고딕';
	  color: #505260;
	  background-color: #fff;
  	  place-content: center;
	}
	
	a {
	  color: #2f889a;
	  text-decoration: none;
	}
	
	img {
	  max-width: 100%;
	}
	
	input, textarea {
	  font-family:  'Noto Sans KR', 'NanumGothic', '나눔고딕';
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
	  background: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/148866/cd-icon-menu.svg") no-repeat center center;
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
	  background-image: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/148866/cd-icon-username.svg");
	}
	.cd-form label.cd-email {
	  background-image: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/148866/cd-icon-email.svg");
	}
	.cd-form label.cd-password {
	  background-image: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/148866/cd-icon-password.svg");
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
	.no-touch .cd-form input[type=submit]:hover, .no-touch .cd-form input[type=submit]:focus {
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
	  background: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/148866/cd-icon-close.svg") no-repeat center center;
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
	
	#cd-login.is-selected, #cd-signup.is-selected, #cd-reset-password.is-selected {
	  display: block;
	}
	/* 염건웅_추가 */
	#display-1 text-white mb-5 animated slideInDown_2 {
		font-color: green !important;
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

/* html, body {
  height: 100%;
}

body {
  display: grid;
  place-content: center;
}
 */
.btn {
  background: hsl(var(--hue), 98%, 80%);
  border: none;
  border-radius: 7px;
  cursor: pointer;
  color: black;
  font: 600 1.05rem/1 "Nunito", sans-serif;
  letter-spacing: 0.05em;
  overflow: hidden;
  padding: 1.15em 3.5em;
  min-height: 3.3em;
  position: relative;
  text-transform: lowercase;
}
.btn--yellow {
  --hue: 46;
}
.btn--green {
  --hue: 163;
}
.btn--purple {
  --hue: 244;
}
.btn--red {
  --hue: 0;
}
.btn--blue {
  --hue: 210;
}
.btn:active, .btn:focus {
  outline: 3px solid hsl(calc(var(--hue) + 90), 98%, 80%);
}
.btn + .btn {
  margin-top: 2.5em;
}
.btn__txt {
  position: relative;
  z-index: 2;
}
.btn__bg {
  background: hsl(var(--hueBg), 98%, 80%);
  border-radius: 50%;
  display: block;
  height: 0;
  left: 50%;
  margin: -50% 0 0 -50%;
  padding-top: 100%;
  position: absolute;
  top: 50%;
  width: 100%;
  transform: scale(0);
  transform-origin: 50% 50%;
  transition: transform 0.175s cubic-bezier(0.5, 1, 0.89, 1);
  z-index: 1;
}
.btn__bg:nth-of-type(1) {
  --hueBg: calc(var(--hue) - 90);
  transition-delay: 0.1725s;
}
.btn__bg:nth-of-type(2) {
  --hueBg: calc(var(--hue) - 180);
  transition-delay: 0.115s;
}
.btn__bg:nth-of-type(3) {
  --hueBg: calc(var(--hue) - 270);
  transition-delay: 0.0575s;
}
.btn__bg:nth-of-type(4) {
  --hueBg: calc(var(--hue) - 360);
  transition-delay: 0s;
}
.btn:hover .btn__bg, .btn:focus .btn__bg, .btn:active .btn__bg {
  transform: scale(1.5);
  transition: transform 0.35s cubic-bezier(0.11, 0, 0.5, 0);
}
.btn:hover .btn__bg:nth-of-type(1), .btn:focus .btn__bg:nth-of-type(1), .btn:active .btn__bg:nth-of-type(1) {
  transition-delay: 0.115s;
}
.btn:hover .btn__bg:nth-of-type(2), .btn:focus .btn__bg:nth-of-type(2), .btn:active .btn__bg:nth-of-type(2) {
  transition-delay: 0.23s;
}
.btn:hover .btn__bg:nth-of-type(3), .btn:focus .btn__bg:nth-of-type(3), .btn:active .btn__bg:nth-of-type(3) {
  transition-delay: 0.345s;
}
.btn:hover .btn__bg:nth-of-type(4), .btn:focus .btn__bg:nth-of-type(4), .btn:active .btn__bg:nth-of-type(4) {
  transition-delay: 0.46s;
}
</style>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>

</head>

<body>
   <!-- Navbar Start -->
	<nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0" style="height: 6em;">
        <a href="index.jsp" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <h1 class="m-0">Mentorvation</h1>
        </a>
		<div class="search_box" style="margin-left: 180px;margin-bottom: 0;">
			<form action="SearchService.do" method="get">
				<div>
					<input name="profile_id" class="search_text" type="text" placeholder="search">
				</div>
			</form>
		</div>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
			<span class="navbar-toggler-icon"></span>
		</button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="index.jsp" class="nav-item nav-link active">Home</a>
                <a href="watchvideo.jsp" class="nav-item nav-link">Recommendation</a>
                <a href="calendar.jsp" class="nav-item nav-link">My Calendar</a>
                <a href="myprofile.jsp" class="nav-item nav-link">My Profile</a>
             
            </div>
         	<nav class="main-nav">
				<ul style="padding-left: 0px;">
					<!-- inser more links here -->
						<li><a class="cd-signin" href="UpdateMember.jsp">Edit Profile</a></li>
						<li><a class="cd-signin" href="LogoutService.do">Logout</a></li>
				</ul>
			</nav>
        </div>
    	</nav>
    <!-- Navbar End -->
   
    <!-- 카테고리 버튼 -->

	<form action="">
		<button type="button" class="btn btn--purple" style="margin-top: 2.5em;">
		  <span class="btn__txt">SPORTS</span>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		</button>
			
		<button type="button" class="btn btn--green">
		  <span class="btn__txt">DRAWING</span>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		</button>
		
		<button type="button" class="btn btn--red">
		  <span class="btn__txt">ANIMALS</span>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		</button>
		
		<button type="button" class="btn btn--blue">
		  <span class="btn__txt">MARKETING</span>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		</button>
		
		<button type="button" class="btn btn--yellow">
		  <span class="btn__txt">COOKING</span>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		</button>
	 	<button type="button" class="btn btn--purple">
		  <span class="btn__txt">BAKING</span>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		</button>
		
		<button type="button" class="btn btn--green">
		  <span class="btn__txt">PROGRAMMING</span>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		</button>
		
		<button type="button" class="btn btn--red">
		  <span class="btn__txt">CAMPING</span>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		</button>
		
		<button type="button" class="btn btn--blue">
		  <span class="btn__txt">DESIGN</span>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		</button>
		
		
		<button type="button" class="btn btn--yellow">
		  <span class="btn__txt">VIDEO PRODUCTION</span>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		</button>   
	
		<button type="button" class="btn btn--purple">
		  <span class="btn__txt">MENTAL MANAGEMENT</span>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		</button>
		
		<button type="button" class="btn btn--green">
		  <span class="btn__txt">LANGUAGE</span>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		</button>
		
		<button type="button" class="btn btn--red">
		  <span class="btn__txt">EDUCATION</span>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		</button>
		
		<button type="button" class="btn btn--blue">
		  <span class="btn__txt">INVESTMENT</span>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		</button>
		
		
		<button type="button" class="btn btn--yellow">
		  <span class="btn__txt">MOTIVATION</span>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		</button>
	 	<button type="button" class="btn btn--purple">
		  <span class="btn__txt">MENTALITY</span>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		</button>
		
		<button type="button" class="btn btn--green">
		  <span class="btn__txt">SELF INTRODUCTION</span>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		</button>
		
		<button type="button" class="btn btn--red">
		  <span class="btn__txt">PERFOMANCE</span>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		</button>
		
		<button type="button" class="btn btn--blue">
		  <span class="btn__txt">ACCOUNTING</span>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		</button>
		
		
		<button type="button" class="btn btn--yellow">
		  <span class="btn__txt">MUSIC</span>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		  <i class="btn__bg" aria-hidden="true"></i>
		</button>  

		<input type="submit" value="제출하기">
	</form>	
</body>    