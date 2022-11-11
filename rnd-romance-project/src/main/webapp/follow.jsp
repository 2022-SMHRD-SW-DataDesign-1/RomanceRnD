<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="/unfollow" name="form" method="post">
		<!-- 언팔로우 버튼 -->
		<input type="hidden" value='${member_id}' name="member_id">
		<!-- 현재로그인id -->
		<input type="hidden" value='${hs_id}' name="hs_id">
		<!-- 현재페이지id -->
		<button class="btn btn-default" type="submit">언팔로잉</button>
	</form>


	<form action="handshakeService.do" method="post">
		<input type="hidden" name="member_id" value="<$member_id>"> 
		<input type="hidden" name="hs_id" value="<$hs_id">
		<input type="submit" value="팔로우">
	</form>


	<!-- <script type="text/javascript">
	//여기서 부터 ajax사용 야함. 팔로우, 언팔로우 버튼을 눌렀을 때 
	</script> -->

</body>
</html>