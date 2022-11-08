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
		비디오시퀀스<input type="text" name="video_seq"><br>
		업로드경로<input type="file" name="upload_path"><br>
		<input type="submit">
	</form>

</body>
</html>