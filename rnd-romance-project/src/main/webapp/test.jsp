<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" rel="stylesheet">
 
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.min.js"></script>
</head>
<body>
	<div class="row justify-content-center">
    <div class="col-md-8">
        <div class="row">
            	<!-- <video src="img/test.mp4" controls muted loop poster="img/about.jpg"data-toggle="lightbox" class="col-sm-4" data-title="모달 제목" data-footer="모달 푸터내용">
            	</video> -->
            <a href="https://unsplash.it/1200/768.jpg?image=252" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-4">
                <img src="https://unsplash.it/600.jpg?image=252" class="img-fluid rounded">
            </a>
            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-4">
                <img src="https://unsplash.it/600.jpg?image=253" class="img-fluid rounded">
            </a>
            <!-- <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" data-toggle="lightbox">Justin Bieber - Love Yourself</a> -->
            <a href="http://localhost:8080/rnd-romance-project/test4.jsp" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-4">test</a>
            
            <!-- <video src="test4.jsp"  autoplay controls loop width="300" height="250" data-toggle="lightbox"> aa</video> -->
        </div>
    </div>
</div>
	
<script>
$(document).on('click', '[data-toggle="lightbox"]', function(event) {
    event.preventDefault();
    $(this).ekkoLightbox();
});
</script>

</body>
</html>