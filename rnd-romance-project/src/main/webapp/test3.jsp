<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<button type="button" class="btn" onClick="openImageModal()">사진 보기</button>
    <button type="button" class="btn" onClick="openVideoModal()">동영상 보기</button>

    <!-- 모달창 -->
    <div id="fileModal" class="modal fade" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header modal-header-sm">
            <h6 class="modal-title">사진/동영상 보기</h6>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
          </div>
          <div class="modal-body text-center">
            <div id="file-viewer"></div>
          </div>
        </div>
      </div>
    </div>
    <script>
 // 이미지 출력 모달창 오픈
    function openImageModal() {
      $('#file-viewer').empty()

      let img = document.createElement('img');as
      img.setAttribute('src', 'img/about.jpg');
      img.setAttribute('class', 'img-fluid');

      $('#file-viewer').append(img);
      $('#fileModal').modal();
    }

    // 동영상 출력 모달창 오픈
    function openVideoModal() {
      $('#file-viewer').empty();

      var div = document.createElement('div');
      div.setAttribute('class', 'embed-responsive embed-responsive-16by9');

      // video 태그 사용
      var video = document.createElement('video');
      video.setAttribute('class', 'embed-responsive-item');
      video.setAttribute('controls', 'controls');
      ideo.setAttribute('src', 'img/test.mp4');
      div.append(video);

      $('#file-viewer').append(div);
      $('#fileModal').modal();
    }
    </script>
    
    
</body>
</html>