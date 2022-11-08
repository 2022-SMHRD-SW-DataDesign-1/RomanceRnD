<%@page import="com.smhrd.model.memberDTO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
   <meta charset="utf-8">
    <title>Mentorvation - Gardening Website Template</title>
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
   html {font-size:20px}

body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4,h5, form, fieldset, p, button, input {
	margin:0;
	padding:0;
	font-family: 'Noto Sans KR', 'NanumGothic', '나눔고딕';
	line-height:1.5;
	letter-spacing:-0.5px
}

input, select {
	vertical-align:middle;
	color:#666;
   outline:none;
}

a {text-decoration:none}

img, fieldset {border:none}
ul li {	list-style:none outside none}
ol li {	list-style:none outside none}

caption, legend {
	overflow:hidden;
	position:absolute;
	top:0;
	left:-999em;
	width:0;
	height:0;
	font-size:0;
	line-height:0;
	text-align:left;
}

strong {font-weight:500}

table {table-layout:fixed;word-break:break-all}

textarea { line-height:24px;
		   letter-spacing:1px;
		    border:1px solid #ddd;
			overflow-y:scroll;
			resize:none;}
			
			
html {height:100%}
body {height:100%;overflow:hidden}



#wrapper{display:flex; align-items:center; justify-content:center; height:100%; background: url(img/Update_bg03.jpg) no-repeat center ,#ebf7ff; background-size:cover; 
	margin-top:-3rem;}

input::placeholder{color: #999; font-size: .65rem; padding: .2rem 0}

.user_modify{width: 100%; max-width: 35rem; background: #fff; border-radius: 15px; padding: 2.5rem 0; margin: 0 auto; box-shadow: 6px 6px 6px rgb(0 0 0 / 30%);}
.modify_wrap{width:fit-content; margin:0 auto;}
.user_modify h4{font-size: 1.5rem; color:#333; font-weight: bold; padding-bottom: 2.5rem;}
.user_modify p{font-size: .85rem; color:#777; padding-bottom: 1.5rem;}

.user_modify .modify_content ul {width: fit-content; margin: 0 auto;}
.user_modify .modify_content ul > li {display: block; color: #555; padding-bottom: .2rem;}
.user_modify .modify_content ul > li > input{font-size: .75rem; border: 1px solid #dedede; border-radius: 5px; padding: .5rem 1.5rem .5rem .5rem;}
.user_modify .modify_content ul > li:last-child{padding-bottom: 0; padding-top: .5rem;}
.user_modify .modify_content .join_btn button{width: 100%; background: #8c9eff; font-size: .6rem; font-weight: 500; color: #fff; border-radius: 5px; border: none; padding: .35rem 0;}
   </style>
   </head>
   <body style="text-align: center;">
   
   <%
      memberDTO info = (memberDTO)session.getAttribute("info");
   
   %>
   
     <!-- Navbar Start -->
    	<!-- 염건웅_수정: 상단 navbar 높이 수정 -->
		<nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0" style="height: 6em;">
        <a href="index.jsp" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <h1 class="m-0">Mentorvation</h1>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
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

        </div>
    </nav>
    <!-- Navbar End -->

     <!-- Wrapper -->
         <div id="wrapper">
            <!-- Menu -->
               <div class="user_modify">
	               <div class="modify_wrap">
	                  <img src="img/Update.png"/>
	                  <h4>회원 정보 수정</h4>
	                  <p>접속한 Email : <%=info.getMember_id() %></p>
	                  <div class="modify_content">
	                     <ul>
	                        <li class="name"><input placeholder="이름을 작성하세요"></li>
	                        <li class="password"><input placeholder="비밀번호를 작성하세요"></li>
	                        <li class="join_btn"><button>OK</button></li>
	                     </ul>
	                  </div>
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
