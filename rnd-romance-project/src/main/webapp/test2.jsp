<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

html, body {
  height: 100%;
}

body {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  width: 100%;
  background: #5E35B1;
  color: white;
}

header {
  font-family: "Alegreya Sans", sans-serif;
  text-align: center;
}

.gd-show-modal {
  box-shadow: 0 3px 6px rgba(0, 0, 0, 0.05), 0 3px 6px rgba(0, 0, 0, 0.15);
  display: inline-block;
  padding: 0.75rem 0;
  width: 100%;
  font-weight: 500;
  text-decoration: none;
  background: #29B6F6;
  color: white;
}

body {
  position: relative;
}

iframe,
embed,
object {
  max-width: 100%;
}

video {
  max-width: 100%;
  height: auto;
}

.gd-modal {
  position: fixed;
  left: 0;
  bottom: 100%;
  min-height: 100%;
  width: 100%;
  z-index: 50000000000;
  text-align: center;
  background: rgba(74, 20, 140, 0.95);
}

.csstransforms #gd-modal-overlay {
  transition: transform 200ms cubic-bezier(0.48, 0.01, 0.48, 0.99);
}
.no-csstransforms #gd-modal-overlay {
  transition: 200ms all cubic-bezier(0.48, 0.01, 0.48, 0.99);
}
.csstransforms #gd-modal-overlay.opened {
  transform: translateY(100%) translateZ(0);
}
.csstransforms #gd-modal-overlay.closed {
  transform: translateY(0) translateZ(0);
}
.no-csstransforms #gd-modal-overlay.opened {
  bottom: 0;
}

.gd-video-wrapper {
  padding: 1.25rem;
  position: relative;
}

.gd-close.gd-hide-modal {
  text-align: right;
  width: 100%;
  display: block;
  position: absolute;
  top: -10px;
  right: 32px;
}

#gd-close-anchor {
  text-decoration: none;
  color: #29B6F6;
}
#gd-close-anchor:hover {
  color: #ab6ec4;
}

.gd-inner {
  display: none;
  margin: 0 auto;
  max-width: 880px;
  padding: 20px;
  position: absolute;
  top: 50%;
  width: 100%;
}
.no-csstransforms .gd-inner {
  height: 281px;
  margin-top: -140px;
  margin-left: 250px;
}
.csstransforms .gd-inner {
  left: 50%;
  width: 100%;
  transform: translate(-50%, -50%);
}

</style>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>

</head>
<body>
	<header>
    <h1>Garage Door Video Modal</h1>
    <!-- Modal Button -->
    <a href="#gd-modal-overlay" class="gd-show-modal">Click to Watch our Video</a>
</header>

<!-- Video Modal -->
<div id="gd-modal-overlay" class="gd-modal">
    <div class="gd-inner">
        <div class="gd-video-wrapper">
            <a href="#" class="gd-close gd-hide-modal" id="gd-close-anchor"></a>
            <iframe src="" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen id="gd-video"></iframe>
        </div>
    </div>
</div>
<script>
import 'jquery'
import 'fluidvids.js'
</script>


<script>


//===================================
//Video Modal Variables
//===================================

var gdVideo = $('#gd-video');


//===================================
//Froogaloop
//===================================

function playGDModalVid(playerID) {
var player = $f(playerID.get(0));

player.addEvent('ready', function(progress) {
   player.api('play');
});
}

function pauseGDModalVid(playerID) {
var player = $f(playerID.get(0));

player.addEvent('ready', function() {
   player.api('pause');
});
}


//===================================
//Video Modal Events
//===================================

function openVideoModal(event) {
event.preventDefault();

var duration = 200,
   modalId = $(this).attr('href'),
   modal = $(modalId),
   inner = modal.find(".gd-inner");

$('#gd-close-anchor').text('✕');

$('#gd-video').attr(
 'src',
 'https://player.vimeo.com/video/214092083'
);

$(".gd-inner").fitVids({
 customSelector: "iframe[src^='https://player.vimeo.com']"
});

modal.removeClass('closed').addClass('opened');

setTimeout(function() {
 inner.fadeIn(duration, function() {
   playGDModalVid(gdVideo);
 });
}, duration);
}


function closeVideoModal(event) {
event.preventDefault();

var duration = 200,
   modal = $(this).closest(".gd-modal"),
   inner = modal.find(".gd-inner");

inner.fadeOut(duration, function() {
 pauseGDModalVid(gdVideo);
 modal.removeClass('opened').addClass('closed');
});
}


//===================================
//Video Modal Triggers
//===================================

$('.gd-show-modal').on('click', openVideoModal);
$('.gd-show-modal').on('touchstart', openVideoModal);

$('#gd-modal-overlay').on('click', closeVideoModal);
$('#gd-modal-overlay').on('touchstart', closeVideoModal);

</script>
</body>
</html>