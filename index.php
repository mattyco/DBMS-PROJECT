
<!DOCTYPE html>
<html>
<title>DSS - NITC</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="css/w3.css">
<link rel="stylesheet" href="css/lat.css">
<link rel="stylesheet" href="css/font.css">
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />

<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif;}
body, html {
    height: 100%;
    color: #777;
    line-height: 1.8;
}

/* Create a Parallax Effect */
.bgimg-1, .bgimg-2, .bgimg-3 {
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}

/* First image (Logo. Full height) */
.bgimg-1 {
    background-image: url('img/bgd.jpg');
    min-height: 400px;
}

/* Second image (Portfolio) */
.bgimg-2 {
    background-image: url("img/bgd.jpg");
    min-height: 200px;
}

/* Third image (Contact) */
.bgimg-3 {
    background-image: url("img/bgd.jpg");
    min-height: 200px;
}

.w3-wide {letter-spacing: 10px;}
.w3-hover-opacity {cursor: pointer;}

/* Turn off parallax scrolling for tablets and phones */
@media only screen and (max-device-width: 1024px) {
    .bgimg-1, .bgimg-2, .bgimg-3 {
        background-attachment: scroll;
    }
}
</style>
<body>

<?php
// remove all session variables
session_unset();

// destroy the session
if(isset($_SESSION))
{session_destroy();}
 ?>

<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-text-black" id="myNavbar">
    <a class="w3-bar-item w3-button w3-hover-black w3-hide-medium w3-hide-large w3-right" href="javascript:void(0);" onclick="toggleFunction()" title="Toggle Navigation Menu">
      <i class="fa fa-bars"></i>
    </a>
    <a href="index.php" class="w3-bar-item w3-button w3-blue">HOME</a>
    <a href="php/teacher.php" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user"></i> TEACHER</a>
    <a href="php/student.php" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-th"></i> STUDENT</a>
  </div>

  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-bar-block w3-black w3-hide w3-hide-large w3-text-black w3-hide-medium">
    <a href="index.php" class="w3-bar-item w3-button w3-blue" onclick="toggleFunction()">HOME</a>
    <a href="php/teacher.php" class="w3-bar-item w3-button" onclick="toggleFunction()">TEACHER</a>
    <a href="php/student.php" class="w3-bar-item w3-button" onclick="toggleFunction()">STUDENT</a>
  </div>
</div>

<!-- First Parallax Image with Logo Text -->
<div class="bgimg-1 w3-display-container w3-opacity-min" id="home">
  <div class="w3-image w3-display-topright" id="nitc_logo">
    <a href="http://www.nitc.ac.in">
      <img src="img/logo.jpg" class="w3-round w3-image" width="100" height="100" alt="logo">
    </a>

  </div>
  <div class="w3-display-middle w3-hide-small" style="white-space:nowrap;">
      <span class="w3-center w3-white w3-padding-large w3-xlarge w3-wide w3-animate-opacity">DECISION <span class="w3-hide-small w3-mobile">SUPPORT</span> SYSTEM - NITC</span>
  </div>
  <div class="w3-display-middle w3-hide-large" style="white-space:nowrap;">
      <span class="w3-center w3-white w3-mobile w3-animate-opacity">DECISION <span class="w3-hide-small w3-mobile">SUPPORT</span> SYSTEM - NITC</span>
  </div>

</div>

<!-- Container (About Section) -->
<div class="w3-content w3-container w3-padding-64" id="about">
  <h3 class="w3-center">ABOUT NITC</h3>
  <p class="w3-center"><em>National Institute of Technology Calicut</em></p>
  <p>Set in a picturesque landscape at the foothills of the Western Ghats, National Institute of Technology Calicut (NITC) is located about 22 kilometers north-east of Calicut City. National Institute of Technology Calicut is a Technical Institution of national importance set up by an Act of parliament(Act 29 of 2007) namely, the National Institute of technology Act 2007, which received the assent of the President of India on 5th June,2007.</p>
  <div class="w3-row">
    <div class="w3-col m6 w3-center w3-padding-large">
      <img src="img/nitc2.jpg" class="w3-round w3-image w3-hover-opacity-off" alt="Photo of Me" width="500" height="333">
    </div>

    <!-- Hide this text on small devices -->
    <div class="w3-col m6 w3-hide-small w3-padding-large">
      <p>National Institute of Technology, Calicut was set up in 1961 as Regional Engineering College Calicut (CREC), the ninth of its kind and the first one to be established during the Third Five-Year Plan period. Until the formation of Calicut University in 1963, the institute was affiliated with Kerala University. It was largely due to the efforts of Pattom Thanu Pillai, then Chief Minister of Kerala, that the institute came into being.</p>
    </div>
  </div>

</div>

<!-- Second Parallax Image with Portfolio Text -->
<div class="bgimg-2 w3-display-container w3-opacity-min">
  <div class="w3-display-middle">
    <span class="w3-xxlarge w3-text-black w3-wide">ABOUT DSS</span>
  </div>
</div>

<!-- Responsive Grid. Four columns on tablets, laptops and desktops. Will stack on mobile devices/small screens (100% width) -->
<div class="w3-content w3-container w3-padding-64" id="about_dss">
  <h3 class="w3-center">ABOUT DSS</h3>
    <p>This project is a prototype for the Decision Support System for Course Registration at NIT Calicut and it is restricted to within the college premises. This project will be implemented under the guidance of course faculty, and will be of great use to the students, faculty and administration by efficiently automating the currently cumbersome registration process.</p>
</div>

<!-- Items -->
<div id="wrapper">
  <section class="main items">
    <article class="item">
      <header>
        <a href="php/teacher.php"><img src="img/nitc1.jpg" class="w3-round w3-image w3-hover-opacity-off" alt="" /></a>
        <h3>Teacher Portal</h3>
      </header>
          <p>This portal helps teachers update grades of a student and attendence. Teachers can also manage their courses through this page.</p>
          <ul class="actions">
          <li><a href="php/teacher.php" class="button">More</a></li>
          </ul>
    </article>
    <article class="item">
      <header>
        <a href="php/student.php"><img src="img/nitc4.jpg" alt="" /></a>
        <h3>Student Portal</h3>
      </header>
        <p>This is the portal for students to view their pre-registration, courses, attendance and grades.</p>
        <ul class="actions">
        <li><a href="php/student.php" class="button">More</a></li>
        </ul>
      </article>
  </section>
</div>

<!-- Third Parallax Image with Portfolio Text -->
<div class="bgimg-3 w3-display-container w3-opacity-min">
  <div class="w3-display-middle">
     <span class="w3-xxlarge w3-text-black w3-wide">CONTACT</span>
  </div>
</div>

<!-- Container (Contact Section) -->


<!-- Footer -->
<footer class="w3-center w3-white w3-padding-64 w3-opacity w3-hover-opacity-off">
  <p><i class="fa fa-envelope w3-hover-opacity"></i> vineetjc@yahoo.com | <i class="fa fa-github w3-hover-opacity"></i> github.com/vineetjc<br>
    <i class="fa fa-envelope w3-hover-opacity"></i> pranavasishmenon@gmail.com | <i class="fa fa-github w3-hover-opacity"></i> github.com/PranavAM<br>
    <i class="fa fa-envelope w3-hover-opacity"></i> mathewg98@gmail.com | <i class="fa fa-github w3-hover-opacity"></i> github.com/Mattyco<br>
  </p>
  <a href="php/admin.php" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>Admin</a>
  <div class="w3-xlarge w3-section">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>

</footer>

<!-- Add Google Maps -->
<script>
function myMap()
{
  myCenter=new google.maps.LatLng(41.878114, -87.629798);
  var mapOptions= {
    center:myCenter,
    zoom:12, scrollwheel: false, draggable: false,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapOptions);

  var marker = new google.maps.Marker({
    position: myCenter,
  });
  marker.setMap(map);
}

// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}

// Change style of navbar on scroll
window.onscroll = function() {myFunction()};
function myFunction() {
    var navbar = document.getElementById("myNavbar");
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        navbar.className = "w3-bar" + " w3-card" + " w3-animate-top" + " w3-black";
    } else {
        navbar.className = "w3-bar" + " w3-animate-top" + "w3-text-black";
    }
}

// Used to toggle the menu on small screens when clicking on the menu button
function toggleFunction() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}
</script>
<script src="scripts/google.js"></script>
<script src="assets/js/jquery.min.js"></script>
      <script src="assets/js/skel.min.js"></script>
      <script src="assets/js/util.js"></script>
      <script src="assets/js/main.js"></script>

</body>
</html>
