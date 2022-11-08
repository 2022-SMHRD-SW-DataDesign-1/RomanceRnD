<%@page import="com.smhrd.model.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%  
		memberDTO info = (memberDTO)session.getAttribute("info");
	%>

	<form action="UploadService.do" method="post" enctype="multipart/form-data">
		비디오시퀀스<input type="number" name="video_seq"><br>
		멤버아이디<input type="text" name="member_id"><br>
		비디오파일<input type="file" name="video_file"><br>
		비디오가격<input type="number" name="video_price"><br>
		비디오설명<input type="text" name="video_desc"><br>
		비디오업로드날짜<input type="date" name="upload_dt"><br>
		허용권한<input type="text" name="permissions"><br>
		<input type="submit">
	</form>

</body>
</html>