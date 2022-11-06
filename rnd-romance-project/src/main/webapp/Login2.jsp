<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<h1> test Login Page </h1>

	<!-- action 보낼때 꼭 .do 해줘야 매핑이 된다!!1 -->
	<form action="JoinService.do" method="post">
		member_id <input type="text" name="member_id"><br>
		member_pw <input type="text" name="member_pw"><br>
		member_name <input type="text" name="member_name"><br>
		member_age <input type="text" name="member_age"><br>
		member_type <input type="text" name="member_type"><br>
		member_profile <input type="text" name="member_profile"><br>
		member_auth <input type="text" name="member_auth"><br>
		<input type="submit" value="Login_button">
	</form>
	
</body>
</html>