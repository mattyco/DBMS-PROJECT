<!DOCTYPE html>
<?php
session_start();
 ?>
<html>
<title>ADMIN - DSS</title>
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
    <a href="adminview.php?studentlist" class="w3-bar-item w3-button"><i class="fa fa-user"></i> STUDENT LIST</a>
    <a href="adminview.php?teacherlist" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user"></i> TEACHER LIST</a>
    <a href="adminview.php?courses" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-th"></i> COURSES</a>
    <a href="../login/logout.php" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-red">
      LOGOUT
    </a>
  </div>

  <!-- Navbar on small screens -->
 <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium">
   <a href="../index.php" class="w3-bar-item w3-button"><i class="fa fa-user"></i> STUDENT LIST</a>
   <a href="teacher.php" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user"></i> TEACHER LIST</a>
   <a href="student.php" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-th"></i> COURSES</a>
    <a href="../login/logout.php" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-red">
      LOGOUT
    </a>
  </div>
</div>

<!-- Header -->
<header id="header" class="alt">
  <div class="inner">
    <span class="w3-center w3-white w3-padding-large w3-xlarge w3-wide w3-animate-opacity">ADMIN PORTAL</span>
    <p></p>
    <p>A portal for admins</p>
  </div>
</header>

  <?php
	$servername = "localhost";
	$username = "root";
	$password = "PASSWORD";
	$dbname = "dss";

	// Create connection
	$conn = mysqli_connect($servername, $username, $password, $dbname);

	// Check connection
	if ($conn->connect_error)
	{
		die("Connection failed: " . $conn->connect_error);
	}

	if(isset( $_GET['loggedin'] ))
	{
		echo '		<section id="intro" class="main">
            <span class="icon fa-diamond major"></span>
            <h2>
				ADMIN WORKSPACE
			</h2>
            <p>

				Hello

			</p>
 		You\'re logged in as '.$_SESSION['user'].'
		</section>';
	}

//STUDENT RECORDS
	else if(isset( $_GET['studentlist'] ))
	{

    if(isset($_SESSION['actionsuccess']))
    {
      if($_SESSION['actionsuccess']==1)
        {
        echo '
      <div class="w3-container">
        <div class="w3-panel w3-card w3-green w3-display-container">
          <span onclick="this.parentElement.style.display='."'none'".'"
          class="w3-button w3-green w3-large w3-display-topright">&times;</span>
          <h3 style="color:white">Success!</h3>
          <p>Record updated successfully!</p>
          </div>
      </div>';}
      else if($_SESSION['actionsuccess']==0)
        {
          echo '
          <div class="w3-container">
            <div class="w3-panel w3-card w3-red w3-display-container">
              <span onclick="this.parentElement.style.display='."'none'".'"
              class="w3-button w3-red w3-large w3-display-topright">&times;</span>
              <h3 style="color:white">Insert failed</h3>
              <p>Error in updating records</p>
              </div>
          </div>';
        }
    unset($_SESSION['actionsuccess']);

    }

    		echo '		<section id="intro" class="main">
                <h2>
    				STUDENT LIST
    			</h2>
                <p>

    				List of current students

            </p>
      		</section>';

            $sql = "SELECT * FROM student";
            $result = $conn->query($sql);

                // output data of each row

            if ($result->num_rows > 0) {
              echo "<div class='w3-container'> <table class='w3-table-all w3-centered  w3-hoverable w3-reponsive w3-card-4'><tr><th>Roll Number</th><th>Student Name</th><th>Email</th><th>Department</th><th>Birth Date</th><th>Batch</th><th>CGPA</th><th>Address</th></tr>";
                // output data of each row
                while($row = $result->fetch_assoc()) {
                    echo "<tr><td>".$row["RollNo"]."</td><td>".$row["studentName"]."</td><td>". $row["email"]."</td><td>". $row["department"]."</td><td>". $row["birthDate"]."</td><td>". $row["batch"]."</td><td>". $row["CGPA"]."</td><td>". $row["address"]."</td></tr>";
                }

                echo "</table></div>";

                echo "<a href='adminview.php?studentlist/edit'><center><u>Modify Student Details</u></center></a>";
                echo "<a href='adminview.php?studentlist/add'><center><u>New Admission</u></center></a>";
                echo "<a href='adminview.php?studentlist/delete'><center><u>Remove Student Record</u></center></a>";

            } else {
                echo "Can not fetch student records";
            }
	}

  else if(isset( $_GET['studentlist/add'] ))
  {
    echo '		<section id="intro" class="main">
            <h2>
        NEW ADMISSION
      </h2>
            <p>

        Add new student record

        </p>
      </section>


    <form action="adminview.php?studentlist/insert"  method = "post">
    		<p><center>Enter Roll Number&nbsp&nbsp</center><input type="number" name="studentID" id = "studentID"></p>
    		<p><center>Enter Name&nbsp&nbsp</center><input type="text" name="studentName" id = "studentName"></p>
    		<p><center>Enter Email&nbsp&nbsp</center><input type="email" name="email" id = "email"></p>
    		<p><center>Enter Department&nbsp&nbsp</center><input type="text" name="department" id = "department"></p>
        <p><center>Enter Birth Date&nbsp&nbsp<input type="date" name="birthDate" id = "birthDate"></center></p>
    		<p><center>Enter Batch&nbsp&nbsp</center><input type="text" name="batch" id = "batch"></p>
    		<p><center>Enter Address&nbsp&nbsp</center><input type="text" name="address" id = "address"></p>

    		<center><input type="submit" value="View Data" class="button big"></center>
    	</form>';

  }

  else if(isset($_GET['studentlist/insert']))
  {
    $studentrollno = $_POST['studentID'];
    $studentname = $_POST['studentName'];
    $studentemail = $_POST['email'];
    $studentdept = $_POST["department"];
    $studentdob = $_POST['birthDate'];
    $studentbranch = $_POST["batch"];
    $studentaddress = $_POST["address"];
    $stupass = 'password';
    $get_stu = "INSERT INTO student (RollNo, studentName, email, department, birthDate, batch, address, password) VALUES ($studentrollno, '$studentname', '$studentemail', '$studentdept', $studentdob, '$studentbranch', '$studentaddress', $stupass)";
    $run_stu = mysqli_query($conn, $get_stu);
    if($run_stu)
    {
      $_SESSION['actionsuccess']=1;
    }
    else
    {
      $_SESSION['actionsuccess']=0;
    }
    echo "<script>window.location.href='adminview.php?studentlist'</script>";
  }

  else if(isset( $_GET['studentlist/edit'] ))
  {
    echo '		<section id="intro" class="main">
            <h2>
        MODIFY STUDENT RECORDS
      </h2>
            <p>

        Edit details of students

        </p>
      </section>';

      $_SESSION['lastVisited']="adminview.php?studentlist";

      $sql = "SELECT * FROM student";
      $result = $conn->query($sql);

      if ($result->num_rows > 0) {
        echo "<div class='w3-container'> <table class='w3-table-all w3-centered  w3-hoverable w3-reponsive w3-card-4'><tr><th>Roll Number</th><th>Student Name</th><th>Email</th><th>Department</th><th>Birth Date</th><th>Batch</th><th>CGPA</th><th>Address</th></tr><form action='studentmodify.php'  method = 'post'>";
          // output data of each row
          while($row = $result->fetch_assoc()) {
                echo "<tr><td><input name='".$row['RollNo']."_rn' type='number' value=".$row['RollNo'].">".$row["RollNo"]."</td><td><input name='".$row['RollNo']."_name' type='text' value='".$row['studentName']."'>".$row["studentName"]."</td><td><input name='".$row['RollNo']."_email' type='email' value=".$row['email'].">". $row["email"]."</td><td class='select'>". $row["department"]."<select name='".$row["RollNo"]."_dept'><option selected = '$row[department]'>$row[department]</option><option value = 'CSE'>CSE</option><option value = 'ECE'>ECE</option><option value = 'EEE'>EEE</option><option value = 'MECH'>MECH</option><option value = 'BT'>BT</option><option value = 'EP'>EP</option><option value = 'CHEM'>CHEM</option></select></td><td><input name='".$row['RollNo']."_bday' type='date' value=".$row['birthDate'].">". $row["birthDate"]."</td><td class = 'select'>". $row["batch"]."<select name='".$row["RollNo"]."_batch'><option selected = '$row[batch]'>$row[batch]</option><option value = 'A'>A</option><option value = 'B'>B</option><option value = 'C'>C</option><option value = 'D'>D</option><option value = 'E'>E</option><option value = 'F'>F</option><option value = 'I'>I</option><option value = 'J'>J</option><option value = 'K'>K</option><option value = 'L'>L</option><option value = 'M'>M</option><option value = 'N'>N</option></select></td><td><input name='".$row['RollNo']."_gp' min='0' step='.01' type='number' value=".$row['CGPA'].">". $row["CGPA"]."</td><td><input name='".$row['RollNo']."_add' type='text' value='".$row['address']."'>". $row["address"]."</td></tr>";
          }
          echo "</table></div>";
          echo '<center><input type="submit" value = "submit"></center></form>';

      } else {
          echo "No students have enrolled for this course";
      }

  }

  else if(isset( $_GET['studentlist/delete'] ))
  {
    echo '		<section id="intro" class="main">
            <h2>
        DELETE STUDENT RECORDS
      </h2>
            <p>

        Edit details of students

        </p>
      </section>


    <form action="adminview.php?studentlist/remove"  method = "post">
    		<center><input type="submit" value="View Data" class="button big"></center>
    	</form>';

  }

  else if(isset($_GET['studentlist/remove']))
  {
    $get_stu = "INSERT INTO student (RollNo, studentName, email, department, birthDate, batch, address, password) VALUES ($studentrollno, '$studentname', '$studentemail', '$studentdept', $studentdob, '$studentbranch', '$studentaddress', $stupass)";
    $run_stu = mysqli_query($conn, $get_stu);
    if($run_stu)
    {
      $_SESSION['actionsuccess']=1;
    }
    else
    {
      $_SESSION['actionsuccess']=0;
    }
    echo "<script>window.location.href='adminview.php?studentlist'</script>";
  }


//TEACHER RECORDS
	else if(isset( $_GET['teacherlist'] ))
	{
    if(isset($_SESSION['actionsuccess']))
    {
      if($_SESSION['actionsuccess']==1)
        {
        echo '
      <div class="w3-container">
        <div class="w3-panel w3-card w3-green w3-display-container">
          <span onclick="this.parentElement.style.display='."'none'".'"
          class="w3-button w3-green w3-large w3-display-topright">&times;</span>
          <h3 style="color:white">Success!</h3>
          <p>Record updated successfully!</p>
          </div>
      </div>';}
      else if($_SESSION['actionsuccess']==0)
        {
          echo '
          <div class="w3-container">
            <div class="w3-panel w3-card w3-red w3-display-container">
              <span onclick="this.parentElement.style.display='."'none'".'"
              class="w3-button w3-red w3-large w3-display-topright">&times;</span>
              <h3 style="color:white">Insert failed</h3>
              <p>Error in updating records</p>
              </div>
          </div>';
        }
    unset($_SESSION['actionsuccess']);
    }

    echo '		<section id="intro" class="main">
            <h2>
        TEACHER LIST
      </h2>
            <p>

        List of current teachers

        </p>
      </section>';

        $sql = "SELECT * FROM teacher";
        $result = $conn->query($sql);

            // output data of each row

        if ($result->num_rows > 0) {
          echo "<div class='w3-container'> <table class='w3-table-all w3-centered  w3-hoverable w3-reponsive w3-card-4'><tr><th>Teacher ID</th><th>Teacher Name</th><th>Email</th><th>Start Date</th><th>Birth Date</th><th>Department</th><th>Designation</th></tr>";
            // output data of each row
            while($row = $result->fetch_assoc()) {
                echo "<tr><td>".$row["teacherID"]."</td><td>".$row["teacherName"]."</td><td>". $row["email"]."</td><td>". $row["startDate"]."</td><td>". $row["birthDate"]."</td><td>". $row["department"]."</td><td>". $row["designation"]."</td></tr>";
            }

            echo "</table></div>";
            echo "<a href='adminview.php?teacherlist/edit'><center><u>Modify Teacher Details</u></center></a>";
            echo "<a href='adminview.php?teacherlist/add'><center><u>Add New Teacher</u></center></a>";
            echo "<a href='adminview.php?teacherlist/delete'><center><u>Remove Teacher</u></center></a>";
        } else {
            echo "Can not fetch teacher records";
        }
	}


//COURSES TABLES
  else if(isset( $_GET['courses'] ))
  {
    if(isset($_SESSION['actionsuccess']))
    {
      if($_SESSION['actionsuccess']==1)
        {
        echo '
      <div class="w3-container">
        <div class="w3-panel w3-card w3-green w3-display-container">
          <span onclick="this.parentElement.style.display='."'none'".'"
          class="w3-button w3-green w3-large w3-display-topright">&times;</span>
          <h3 style="color:white">Success!</h3>
          <p>Record updated successfully!</p>
          </div>
      </div>';}
      else if($_SESSION['actionsuccess']==0)
        {
          echo '
          <div class="w3-container">
            <div class="w3-panel w3-card w3-red w3-display-container">
              <span onclick="this.parentElement.style.display='."'none'".'"
              class="w3-button w3-red w3-large w3-display-topright">&times;</span>
              <h3 style="color:white">Insert failed</h3>
              <p>Error in updating records</p>
              </div>
          </div>';
        }
    unset($_SESSION['actionsuccess']);
    }

    echo '		<section id="intro" class="main">
            <h2>
        COURSES
      </h2>
            <p>

        List of currently offered courses

        </p>
      </section>';

        $sql = "SELECT * FROM course c, teacher t where c.teacherID = t.teacherID";
        $result = $conn->query($sql);

            // output data of each row

        if ($result->num_rows > 0) {
          echo "<div class='w3-container'> <table class='w3-table-all w3-centered  w3-hoverable w3-reponsive w3-card-4'><tr><th>Course ID</th><th>Course Name</th><th>Teacher Name</th><th>Classroom</th><th>Slot</th><th>Credits</th><th>Total Classes</th><th>Possible Leaves</th><th>Considered in CGPA?</th></tr>";
            // output data of each row
            while($row = $result->fetch_assoc()) {
                echo "<tr><td>".$row["courseID"]."</td><td>".$row["courseName"]."</td><td>". $row["teacherName"]."</td><td>". $row["classroom"]."</td><td>". $row["slot"]."</td><td>". $row["credits"]."</td><td>". $row["totalClasses"]."</td><td>". $row["possibleLeaves"]."</td><td>". $row["considerInCGPA"]."</td></tr>";
            }

            echo "</table></div>";
            echo "<a href='adminview.php?courses/edit'><center><u>Modify Course Details</u></center></a>";
            echo "<a href='adminview.php?courses/add'><center><u>Add New Course</u></center></a>";
            echo "<a href='adminview.php?courses/delete'><center><u>Remove Course</u></center></a>";
        } else {
            echo "Can not fetch course details";
        }

  }

	else
	{
		$adminUser=$_POST['adminUser'];
		$adminPass=$_POST['adminPass'];
    $_SESSION['loggedIn']=true;
    $_SESSION['user']=$adminUser;
    $get_stu="select * from admin where AdminID = '$adminUser' AND password = '$adminPass'";
    $run_stu=mysqli_query($conn,$get_stu);
    if(mysqli_num_rows($run_stu)>0)
		{
			echo "<script>window.location.href='adminview.php?loggedin'</script>";
		}
		else
		{
			echo "<script>window.location.href='admin.php?failedlogin'</script>";
		}

	}

$conn->close();
?>

    <!-- Wrapper -->
      <div id="wrapper">

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
