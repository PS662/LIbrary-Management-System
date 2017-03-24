<!DOCTYPE html>
<html>
<title>LMS MUJ</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type = "text/css" href="w4.css">
<link rel="stylesheet" type= "text/css" href="w5.css">
<style>

body, html {
    height: 100%;
    font-family: "Inconsolata", sans-serif;
}
.bgimg {
    background-position: center;
    background-size: cover;
    background-image: url("original.jpg");
    min-height: 75%;
}
.menu {
    display: none;
}
</style>
<body>

<!-- Links (sit on top) -->
<div class="w3-top">
  <div class="w3-row w3-padding w3-black">
    <div class="w3-col s3">
      <a href="#" class="w3-btn-block w3-hover-white">HOME</a>
    </div>

 <div class="w3-col s3">
      <a href="index_mem.jsp" class="w3-btn-block w3-hover-white">STUDENT LOGIN</a>
    </div>
 <div class="w3-col s3">
      <a href="index_fac.jsp" class="w3-btn-block w3-hover-white">ADMIN LOGIN</a>
    </div>
    <div class="w3-col s3">
      <a href="#where" class="w3-btn-block w3-hover-white">CONTACT US</a>
    </div>
  </div>
</div>

<!-- Header with image -->
<header class="bgimg w3-display-container w3-grayscale-min" id="home">
  <div class="w3-display-bottomleft w3-center w3-padding-xlarge w3-hide-small">
  </div>
  <div class="w3-display-middle w3-center">
    <span class="w3-text-white" style="font-size:50px">Library Mangement System<br>MUJ</span>
  </div>
</header>

<!-- Add a background color and large text to the whole page -->
<div class="w3-sand w3-grayscale w3-large">

<!-- About Container -->
<div class="w3-container" id="about">
  <div class="w3-content" style="max-width:700px">
    <h5 class="w3-center w3-padding-48"> 
<span class="w3-tag w3-wide w3-padding-left w3-padding-right">ABOUT THE Library</span></h5>
    <p>OFFERS MORRE THAN 1000 BOOKS.</p>
    <p>In addition to the coursebooks and reference books it also has a huge collection of magazines and novels.</p>
    <div class="w3-panel w3-leftbar w3-light-grey">
      <p><i>"A book is a dream that you hold in your hand."</i></p>
    </div>
    <img src="lib2.jpg" style="float:center;width:125%;max-width:1000px" class="w3-margin-top">
    <p><strong>Opening hours:</strong> Monday to Saturday from 9am to 5pm.</p>
  </div>
</div>



<!-- Contact/Area Container -->
<div class="w3-container" id="where" style="padding-bottom:32px;">
  <div class="w3-content" style="max-width:700px">
    <h5 class="w3-center w3-padding-48">
<span class="w3-tag w3-wide w3-padding-left w3-padding-right">CONTACT US</span></h5>
    <p>This is where we are</p>
    <div id="googleMap" class="w3-sepia" style="width:100%;height:400px;"></div>
    <p><span class="w3-tag">Prateek</span>  .</p>
    <p><strong></strong></p>
  </div>
</div>

<!-- End page content -->
</div>



<!-- Add Google Maps -->
<script src="https://maps.googleapis.com/maps/api/js"></script>

<script>
// Google Map Location
var myCenter = new google.maps.LatLng(26.8416,75.5660);

function initialize() {
var mapProp = {
  center: myCenter,
  zoom: 12,
  scrollwheel: false,
  draggable: false,
  mapTypeId: google.maps.MapTypeId.ROADMAP
  };

var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker = new google.maps.Marker({ position: myCenter,});

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);

</script>

</body>
</html>

