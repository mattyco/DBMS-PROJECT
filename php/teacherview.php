<!DOCTYPE html>
<html>
<title>TEACHER - DSS</title>
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
#roll1{
text-align: right;
width: 300px;


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
    <a href="teacherview.php?mycourses" class="w3-bar-item w3-button"><i class="fa fa-th"></i> MY COURSES</a>
    <a href="teacher.php" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user"></i> ENROLL STUDENTS</a>
    <a href="student.php" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-th"></i> ATTENDANCE</a>
    <a href="student.php" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-th"></i> GRADES</a>
    <a href="../login/logout.php" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-red">
      LOGOUT
    </a>
  </div>

  <!-- Navbar on small screens -->
 <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium">
   <a href="teacherview.php?mycourses" class="w3-bar-item w3-button"><i class="fa fa-th"></i> MY COURSES</a>
   <a href="teacher.php" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user"></i> ENROLL STUDENTS</a>
   <a href="student.php" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-th"></i> ATTENDANCE</a>
   <a href="student.php" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-th"></i> GRADES</a>
   <a href="../login/logout.php" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-red">
      LOGOUT
    </a>
  </div>
</div>

<!-- Header -->
      <header id="header" class="alt">
        <div class="inner">
          <h1>Teacher Portal</h1>
          <p>A portal to enter grades</p>
        </div>
      </header>

	  <?php
	$servername = "localhost";
	$username = "root";
	$password = "PASSWORD";
	$dbname = "dss";

	// Create connection
	$con = mysqli_connect($servername, $username, $password, $dbname);

	// Check connection
	if ($con->connect_error)
	{
		die("Connection failed: " . $con->connect_error);
	}

  $teacherdetails = parse_ini_file("../sample.ini");
  $teacheruname = $teacherdetails['user'];

	if(isset( $_GET['mycourses'] ))
	{

		echo '		<section id="intro" class="main">
            <h2>
				MY COURSES
			</h2>
            <p>

				List of courses

        </p>
  		</section>';

        $sql = "SELECT * FROM course c, teacher t where t.username = '$teacheruname' and c.teacherID=t.teacherID";
        $result = $con->query($sql);

            // output data of each row

        if ($result->num_rows > 0) {
          echo "<div class='w3-container'> <table class='w3-table-all w3-centered  w3-hoverable w3-reponsive w3-card-4'><tr><th>Course ID</th><th>Course Name</th><th>Classroom</th><th>Slot</th></tr>";
            // output data of each row
            file_put_contents("../sample.ini", "user = ".$teacheruname.PHP_EOL); //rewriting file
            while($row = $result->fetch_assoc()) {
                echo "<tr><td>". $row["courseID"]."</td><td>"."<a href= teacherview.php?mycourses/".$row["courseName"].">".$row["courseName"]."</a>"."</td><td>".$row["classroom"]."</td><td>". $row["slot"]."</td></tr>";
                file_put_contents("../sample.ini", "course[] = ".$row['courseName'].PHP_EOL, FILE_APPEND | LOCK_EX);
            }

            echo "</table></div>";
        } else {
            echo "0 results";
        }

      //   <form action="teacherview.php?insert"  method = "post">
 			// 	<p>Enter studentID&nbsp&nbsp<input type="number" name="studentID" id = "studentID"></p>
 			// 	<p></p>
			// 	<p>Enter teacherID&nbsp&nbsp<input type="number" name="teacherID" id = "teacherID"></p>
 			// 	<p></p>
			// 	<p>Enter CourseID&nbsp&nbsp<input type="number" name="courseID" id = "courseID"></p>
 			// 	<p></p>
 			// 	<p>Enter Grade&nbsp&nbsp<input type="text" name="grade" id = "grade"></p>
 			// 	<p></p>
      //
 			// 	<input type="submit" value="View Data" class="button big">
			// </form>

	}
	else if(isset( $_GET['insert'] ))
	{
		$grade=$_POST['grade'];
		//$get_stu="INSERT INTO student_has_course VALUES ($_POST[studentID], $_POST[teacherID], $_POST[courseID], $_POST[leavesTaken], 'NULL')";
		$get_stu="UPDATE student_has_course SET grade = '$_POST[grade]' where studentID = $_POST[studentID] and teacherID=$_POST[teacherID] and courseID = $_POST[courseID]";

		$run_stu=mysqli_query($con,$get_stu);
		if($run_stu)
		{
			echo '
			<div class="w3-container">
				<div class="w3-panel w3-card w3-green w3-display-container">
					<span onclick="this.parentElement.style.display='."'none'".'"
					class="w3-button w3-green w3-large w3-display-topright">&times;</span>
					<h3 style="color:white">Success!</h3>
					<p>Grade RECORD ADDED!</p>
					</div>
			</div>';
		}
		else
		{
			echo '
			<div class="w3-container">
				<div class="w3-panel w3-card w3-red w3-display-container">
					<span onclick="this.parentElement.style.display='."'none'".'"
					class="w3-button w3-red w3-large w3-display-topright">&times;</span>
					<h3 style="color:white">Insert failed</h3>
					<p>Probable error: TeacherID not matching up with courseID</p>
					</div>
			</div>';
		}
		echo '
		<section id="intro" class="main">
            <span class="icon fa-diamond major"></span>
            <h2>
				Add Grade
			</h2>
            <p>

				Enter studentID, teacherID, leaves taken and courseID, grade

			</p>
 			<form action="teacherview.php?insert"  method = "post">
 				<p>Enter studentID&nbsp&nbsp<input type="number" name="studentID" id = "studentID"></p>
 				<p></p>
				<p>Enter teacherID&nbsp&nbsp<input type="number" name="teacherID" id = "teacherID"></p>
 				<p></p>
				<p>Enter CourseID&nbsp&nbsp<input type="number" name="courseID" id = "courseID"></p>
 				<p></p>
 				<p>Enter Grade&nbsp&nbsp<input type="text" name="grade" id = "grade"></p>
 				<p></p>

 				<input type="submit" value="View Data" class="button big">
			</form>
		</section>';
	}

  else
  {
    $iterated = false;

    for ($i=0; $i<sizeof($teacherdetails['course']); $i++)
      {
          if (isset( $_GET['mycourses/'.$teacherdetails['course'][$i]]))
            {

              echo '		<section id="intro" class="main">
                      <h2>
          				'.$teacherdetails['course'][$i].'
          			</h2>
                      <p>

          				Currently enrolled students

                  </p>
            		</section>';

                  $coursename = $teacherdetails['course'][$i];

                  $sql = "SELECT * FROM student_has_course h, student s, course c, teacher t where t.username = '$teacheruname' and c.courseName = '$coursename' and c.teacherID=t.teacherID and h.teacherID=t.teacherID and c.courseID = h.courseID and h.studentID = s.Rollno";
                  $result = $con->query($sql);

                  if ($result->num_rows > 0) {
                    echo "<div class='w3-container'> <table class='w3-table-all w3-centered  w3-hoverable w3-reponsive w3-card-4'><tr><th>Roll Number</th><th>Student Name</th><th>Department</th><th>Batch</th><th>CGPA</th></tr>";
                      // output data of each row
                      while($row = $result->fetch_assoc()) {
                          echo "<tr><td>". $row["RollNo"]."</td><td>".$row["studentName"]."</td><td>".$row["department"]."</td><td>".$row["batch"]."</td><td>".$row["CGPA"]."</td></tr>";
                      }

                      echo "</table></div>";
                  } else {
                      echo "0 results";
                  }

              $iterated = true;
              break;
            }
      };


	 if (!$iterated)
	{
		$teacherUser=$_POST['teacherUser'];
    file_put_contents("../sample.ini", "user = $teacherUser".PHP_EOL);
    $teacherPass=$_POST['teacherPass'];
		$get_stu="select * from teacher where username = '$teacherUser' AND password = '$teacherPass'";
		$run_stu=mysqli_query($con,$get_stu);
		if(mysqli_num_rows($run_stu)>0)
		{
			echo "<script>window.location.href='teacherview.php?mycourses'</script>";
			/*
			header("Location: teacherview.php?loggedin");
		{
			//header("Location: teacherview.php?loggedin");
			header("Location: http://www.lifehacker.com");
			echo "string";
			die();
			*/
		}
		else
		{
			echo "<script>window.location.href='teacher.php?failedlogin'</script>";
			/*
			header("Location: attendance.php?failedlogin");
			die();
			*/
		}

	}
}
	/*
	while($row_stu=mysqli_fetch_array($run_stu))
	{
	$course=$row_stu['courseID'];
	$leaves = $row_stu['leavesTaken'];


	$get_stu2="select * from course where courseID = ".$course.";";
	$run_stu2=mysqli_query($con,$get_stu2);


	while($row_stu=mysqli_fetch_array($run_stu2))
	{
	$courseid=$row_stu['courseID'];

	$coursename=$row_stu['courseName'];
	$possible=$row_stu['possibleLeaves'];
	$left = $possible - $leaves;

	echo "<div>

	<p>Course ID          : $course</p>
	<p>COURSE NAME        : $coursename</p>
	<p>LEAVES REMAINING   : $left</p>

	X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X<p></p>

	</div>";
	}
	}

	*/

	$con->close();



?>


    <!-- Wrapper -->
      <div id="wrapper">



        <!-- Footer -->
          <footer id="footer">
            <ul class="icons">
              <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
              <li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
              <li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
              <li><a href="#" class="icon fa-linkedin"><span class="label">LinkedIn</span></a></li>
              <li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>
            </ul>

          </footer>

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
