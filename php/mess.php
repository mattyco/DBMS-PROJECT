
<!DOCTYPE html>
<html>
<title>Mess</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/w3.css">
<link rel="stylesheet" href="../css/lat.css">
<link rel="stylesheet" href="../css/font.css">
<link rel="stylesheet" href="../assets/css/main.css" />
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
    background-image: url('../img/nitc1.jpg');
    min-height: 100%;
}

/* Second image (Portfolio) */
.bgimg-2 {
    background-image: url("../img/nitc2.jpg");
    min-height: 400px;
}

/* Third image (Contact) */
.bgimg-3 {
    background-image: url("../img/nitc3.jpg");
    min-height: 400px;
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

<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar" id="myNavbar">
    <a class="w3-bar-item w3-button w3-hover-black w3-hide-medium w3-hide-large w3-right" href="javascript:void(0);" onclick="toggleFunction()" title="Toggle Navigation Menu">
      <i class="fa fa-bars"></i>
    </a>
    <a href="../index.php" class="w3-bar-item w3-button">HOME</a>
    <a href="teacher.php" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user"></i> TEACHER</a>
    <a href="student.php" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-th"></i> STUDENT</a>
    <a href="../login/logout.php" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-red">
      LOGOUT
    </a>
  </div>

  <!-- Navbar on small screens -->
 <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium">
    <a href="../index.php" class="w3-bar-item w3-button" onclick="toggleFunction()">HOME</a>
    <a href="teacher.php" class="w3-bar-item w3-button" onclick="toggleFunction()">TEACHER</a>
    <a href="student.php" class="w3-bar-item w3-button" onclick="toggleFunction()">STUDENT</a>
    <a href="../login/logout.php" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-red">
      LOGOUT
    </a>
  </div>
</div>

<!-- WORK HERE -->

<!-- Wrapper -->
  <div id="wrapper">


    <?php

    if(isset( $_GET['incorrect'] ))

    {

      echo '
      <div class="w3-container">
        <div class="w3-panel w3-card w3-red w3-display-container">
          <span onclick="this.parentElement.style.display='."'none'".'"
          class="w3-button w3-red w3-large w3-display-topright">&times;</span>
          <h3 style="color:white">Insert failed</h3>
          <p>Probable error 1: Entry for this month already exists</p>
          <p>Probable error 2: Duplicate Entry</p>
          </div>
      </div>';
    }



     ?>

    <!-- Banner -->
      <section id="intro" class="main">
        <span class="icon fa-diamond major"></span>
        <h2>MESS</h2>
        <p>This is a portal for all the students to enter their corresponding mess details</p>
  <form action="messfee.php"  method = "post"; >
    <p>Enter Roll No</p><input type="text" name="roll" id = "roll1" >
    <br>
    <p>Enter Mess Name</p><input type="text" name="messname" id = "messname1" >
    <br>
    <p>Enter Month</p><input type="text" name="month" id = "month1" >
    <br>
    <p>Enter Year</p><input type="text" name="year" id = "year1" >
    <br>
    <p>Enter Extra Amount</p><input type="text" name="extraamt" id = "extraamt11" >
    <br>






    <input type="submit" value="Enter Data" class="button big">

  </form>
      </section>

    <!-- Main -->
    <!--
      <section id="main" class="main">
        <header>
          <h2>Lorem ipsum dolor</h2>
        </header>
        <p>Fusce malesuada efficitur venenatis. Pellentesque tempor leo sed massa hendrerit hendrerit. In sed feugiat est, eu congue elit. Ut porta magna vel felis sodales vulputate. Donec faucibus dapibus lacus non ornare. Etiam eget neque id metus gravida tristique ac quis erat. Aenean quis aliquet sem. Ut ut elementum sem. Suspendisse eleifend ut est non dapibus. Nulla porta, neque quis pretium sagittis, tortor lacus elementum metus, in imperdiet ante lorem vitae ipsum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam eget neque id metus gravida tristique ac quis erat. Aenean quis aliquet sem. Ut ut elementum sem. Suspendisse eleifend ut est non dapibus. Nulla porta, neque quis pretium sagittis, tortor lacus elementum metus, in imperdiet ante lorem vitae ipsum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
      </section>
    -->

    <!-- Footer -->

  </div>

<!-- Scripts -->
  <script src="../assets/js/jquery.min.js"></script>
  <script src="../assets/js/skel.min.js"></script>
  <script src="../assets/js/util.js"></script>
  <script src="../assets/js/main.js"></script>







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
    if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
        navbar.className = "w3-bar" + " w3-card" + " w3-animate-top" + " w3-white";
    } else {
        navbar.className = navbar.className.replace(" w3-card w3-animate-top w3-white", "");
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
<script src="../scripts/google.js"></script>


</body>
</html>
