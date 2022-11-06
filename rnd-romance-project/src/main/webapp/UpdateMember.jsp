<%@page import="com.smhrd.model.memberDTO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
	</head>
	<style>
	
	</style>
	<body style="text-align: center;">
	<%
		memberDTO info = (memberDTO)session.getAttribute("info");
	
	%>

		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Menu -->
					<nav id="Update">	
						<ul class="actions vertical">
							<li><h5>회원정보수정</h5></li>
								<form action="UpdateService.do" method="post">
									<li>접속한 Email : <%= info.getMember_id() %></li>
									<li><input name ="member_pw" type="password" placeholder="PW를 입력하세요" style="width: 500px; margin: 0 auto;"></li>
									<li><input name ="member_name" type="text" value="<%= info.getMember_name() %>" placeholder="이름을 입력하세요" style="width: 500px; margin: 0 auto;"></li>
									<li><input name ="member_age" type="text" value="<%= info.getMember_age() %>" placeholder="나이를 입력하세요" style="width: 500px; margin: 0 auto;"></li>
									<li><input name ="member_type" type="text" value="<%= info.getMember_type() %>" placeholder="타입을 입력하세요" style="width: 500px; margin: 0 auto;"></li>
									<li><input name ="member_profile" type="text" value="<%= info.getMember_profile() %>" placeholder="프로필을 입력하세요" style="width: 500px; margin: 0 auto;"></li>
									<li><input name ="member_auth" type="text" value="<%= info.getMember_auth() %>" placeholder="권한을 입력하세요" style="width: 500px; margin: 0 auto;"></li>
									<li><input type="submit" value="JoinUs" class="button fit" style="width: 500px; margin: 0 auto;"></li>
								</form>
						</ul>
					</nav>			
			</div>
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

