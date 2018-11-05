<?php
session_start();
 ?>

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
    <a href="teacherview.php?enroll" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user"></i> ENROLL STUDENTS</a>
    <a href="teacherview.php?attendance" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-th"></i> ATTENDANCE</a>
    <a href="teacherview.php?grades" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-th"></i> GRADES</a>
    <a href="../login/logout.php" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-red">
      LOGOUT
    </a>
  </div>

  <!-- Navbar on small screens -->
 <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium">
   <a href="teacherview.php?mycourses" class="w3-bar-item w3-button"><i class="fa fa-th"></i> MY COURSES</a>
   <a href="teacherview.php?enroll" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user"></i> ENROLL STUDENTS</a>
   <a href="teacherview.php?attendance" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-th"></i> ATTENDANCE</a>
   <a href="teacherview.php?grades" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-th"></i> GRADES</a>
   <a href="../login/logout.php" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-red">
      LOGOUT
    </a>
  </div>
</div>

<!-- Header -->
      <header id="header" class="alt">
        <div class="inner">
          <span class="w3-center w3-white w3-padding-large w3-xlarge w3-wide w3-animate-opacity">TEACHER PORTAL</span>
          <p></p>
          <p>A portal to enter grades</p>
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

  $teacheruname = $_SESSION['user'];

	if(isset( $_GET['mycourses'] ))
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
				MY COURSES
			</h2>
            <p>

				List of courses

        </p>
  		</section>';

        $sql = "SELECT * FROM course c, teacher t where t.username = '$teacheruname' and c.teacherID=t.teacherID";
        $result = $conn->query($sql);

            // output data of each row

        if ($result->num_rows > 0) {
          echo "<div class='w3-container'> <table class='w3-table-all w3-centered  w3-hoverable w3-reponsive w3-card-4'><tr><th>Course ID</th><th>Course Name</th><th>Classroom</th><th>Slot</th></tr>";
            // output data of each row
            while($row = $result->fetch_assoc()) {
                echo "<tr><td>". $row["courseID"]."</td><td>"."<a href= teacherview.php?mycourses/".str_replace(' ','',$row["courseName"]).">".$row["courseName"]."</a>"."</td><td>".$row["classroom"]."</td><td>". $row["slot"]."</td></tr>";
                $_SESSION['course'][]=$row["courseName"];
            }

            echo "</table></div>";
        } else {
            echo "Currently taking no courses";
        }

	}
	else if(isset( $_GET['attendance'] ))
	{
    echo '		<section id="intro" class="main">
            <h2>
        ATTENDANCE
      </h2>
            <p>

        Mark attendance for students by course

        </p>
      </section>';

        $sql = "SELECT * FROM course c, teacher t where t.username = '$teacheruname' and c.teacherID=t.teacherID";
        $result = $conn->query($sql);

            // output data of each row

        if ($result->num_rows > 0) {
          echo "<div class='w3-container'> <table class='w3-table-all w3-centered  w3-hoverable w3-reponsive w3-card-4'><tr><th>Course ID</th><th>Course Name</th><th>Classroom</th><th>Slot</th></tr>";
            // output data of each row
            while($row = $result->fetch_assoc()) {
                echo "<tr><td>". $row["courseID"]."</td><td>"."<a href= teacherview.php?attendance/".str_replace(' ','',$row["courseName"]).">".$row["courseName"]."</a>"."</td><td>".$row["classroom"]."</td><td>". $row["slot"]."</td></tr>";
                $_SESSION['course'][]=$row["courseName"];
            }

            echo "</table></div>";
        } else {
            echo "Currently taking no courses";
        }


	}
  else if(isset( $_GET['enroll'] ))
	{
    echo '		<section id="intro" class="main">
             <h2>
        ENROLL STUDENTS
      </h2>
             <p>

        Enroll students based on their pre-registration for each of your courses

         </p>
      </section>';

         $sql = "SELECT DISTINCT c.courseID, courseName, t.teacherID, RollNo, studentName, s.department, batch, CGPA FROM course c, prereg p, teacher t, student s where t.username= '$teacheruname' and p.teacherID=t.teacherID and p.studentID = s.RollNo and c.courseID = p.courseID";
         $result = $conn->query($sql);

             // output data of each row

         if ($result->num_rows > 0) {
           echo "<div class='w3-container'> <table class='w3-table-all w3-centered  w3-hoverable w3-reponsive w3-card-4'><tr><th>Course ID</th><th>Registerd for course</th><th>Student ID</th><th>Student Name</th><th>Department</th><th>Batch</th><th>CGPA</th><th>Check to enroll</th></tr><form action='teacherview.php?enroll/insert'  method = 'post'>";
             // output data of each row
             while($row = $result->fetch_assoc()) {
                 echo "<tr><td>". $row["courseID"]."</td><td>". $row["courseName"]."</td><td>". $row["RollNo"]."</td><td>".$row["studentName"]."</a>"."</td><td>".$row["department"]."</td><td>". $row["batch"]."</td><td>". $row["CGPA"]."</td><td><input type = 'checkbox' name='".$row['RollNo']."_".$row['courseID']."_".$row['teacherID']."'></td></tr>";
             }

             echo "</table></div>";
             echo '<center><input type="submit" value = "submit"></center></form>';
         } else {
             echo "Currently taking no courses";
         }

	}

  else if(isset( $_GET['enroll/insert'] ))
  {
    foreach (array_keys($_POST) as $i)
    {
      $temparr = explode('_', $i);
      $s_id = $temparr[0];
      $c_id = $temparr[1];
      $t_id = $temparr[2];
      $iterated = true;
      $sql = "INSERT INTO student_has_course (studentID, teacherID, courseID, leavesTaken, present, T1, T2, ProjectAssignment, EndSem) VALUES ($s_id, $t_id, $c_id, 0, 0, 0, 0, 0, 0)";
      if ($conn->query($sql) === TRUE) {
          $iterated=true;
          $sql = "DELETE FROM prereg where courseID = $c_id";
          if ($conn->query($sql) === TRUE) {
              $iterated=true;}
          else {
            $iterated=false;
            echo "Error updating record: " . $conn->error;
            break;
                }
          }
      else {
          $iterated=false;
          echo "Error updating record: " . $conn->error;
          break;
      }
    }
    if($iterated)
    {
      $_SESSION['actionsuccess']=1;
    }
    else
    {
      $_SESSION['actionsuccess']=0;
    }
    echo "<script>window.location.href='teacherview.php?mycourses'</script>";

  }


  else if(isset( $_GET['grades'] ))
	{
    echo '		<section id="intro" class="main">
             <h2>
        GRADES
      </h2>
             <p>

        Assign grades for students by each course

         </p>
      </section>';

         $sql = "SELECT * FROM course c, teacher t where t.username = '$teacheruname' and c.teacherID=t.teacherID";
         $result = $conn->query($sql);

             // output data of each row

         if ($result->num_rows > 0) {
           echo "<div class='w3-container'> <table class='w3-table-all w3-centered  w3-hoverable w3-reponsive w3-card-4'><tr><th>Course ID</th><th>Course Name</th><th>Classroom</th><th>Slot</th></tr>";
             // output data of each row
             while($row = $result->fetch_assoc()) {
                 echo "<tr><td>". $row["courseID"]."</td><td>"."<a href= teacherview.php?grades/".str_replace(' ','',$row["courseName"]).">".$row["courseName"]."</a>"."</td><td>".$row["classroom"]."</td><td>". $row["slot"]."</td></tr>";
                 $_SESSION['course'][]=$row["courseName"];
             }

             echo "</table></div>";
         } else {
             echo "Currently taking no courses";
         }

	}

  else
  {
    $iterated = false;

    for ($i=0; $i<sizeof($_SESSION['course']); $i++)
      {
          if (isset( $_GET['mycourses/'.str_replace(' ','',$_SESSION['course'][$i])]))
            {

              echo '		<section id="intro" class="main">
                      <h2>
          				'.$_SESSION['course'][$i].'
          			</h2>
                      <p>

          				Currently enrolled students

                  </p>
            		</section>';

                  $coursename = $_SESSION['course'][$i];

                  $sql = "SELECT * FROM student_has_course h, student s, course c, teacher t where t.username = '$teacheruname' and c.courseName = '$coursename' and c.teacherID=t.teacherID and h.teacherID=t.teacherID and c.courseID = h.courseID and h.studentID = s.Rollno";
                  $result = $conn->query($sql);

                  if ($result->num_rows > 0) {
                    echo "<div class='w3-container'> <table class='w3-table-all w3-centered  w3-hoverable w3-reponsive w3-card-4'><tr><th>Roll Number</th><th>Student Name</th><th>Batch</th><th>Department</th><th>CGPA</th></tr>";
                      // output data of each row
                      while($row = $result->fetch_assoc()) {
                          echo "<tr><td>". $row["RollNo"]."</td><td>".$row["studentName"]."</td><td>".$row["batch"]."</td><td>".$row["department"]."</td><td>".$row["CGPA"]."</td></tr>";
                      }

                      echo "</table></div>";
                  } else {
                      echo "No students have enrolled for this course";
                  }

              $iterated = true;
              break;
            }
            else if (isset( $_GET['attendance/'.str_replace(' ','',$_SESSION['course'][$i])]))
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
            				'.$_SESSION['course'][$i].'
            			</h2>
                        <p>

            				Currently enrolled students

                    </p>
              		</section>';

                    $coursename = $_SESSION['course'][$i];

                    $sql = "SELECT * FROM student_has_course h, student s, course c, teacher t where t.username = '$teacheruname' and c.courseName = '$coursename' and c.teacherID=t.teacherID and h.teacherID=t.teacherID and c.courseID = h.courseID and h.studentID = s.Rollno";
                    $result = $conn->query($sql);

                    if ($result->num_rows > 0) {
                      echo "<div class='w3-container'> <table class='w3-table-all w3-centered  w3-hoverable w3-reponsive w3-card-4'><tr><th>Roll Number</th><th>Student Name</th><th>Batch</th><th>Department</th><th>#Present</th><th>#Absent</th><th>Total #Classes</th>><th>%Attendance</th></tr>";
                        // output data of each row
                        while($row = $result->fetch_assoc()) {
                            echo "<tr><td>". $row["RollNo"]."</td><td>".$row["studentName"]."</td><td>".$row["batch"]."</td><td>".$row["department"]."</td><td>".$row["present"]."</td><td>".$row["leavesTaken"]."</td><td>".($row["present"]+$row["leavesTaken"])."</td><td>".($row["present"]*100/($row["present"]+$row['leavesTaken']))."</td></tr>";
                        }

                        echo "</table></div>";
                        echo "<a href='teacherview.php?attendance/".str_replace(' ','',$coursename)."/edit' class='icon'><center><u>Modify Attendance</u></center></a>";
                    } else {
                        echo "No students have enrolled for this course";
                    }

                $iterated = true;
                break;

              }
              else if (isset( $_GET['attendance/'.str_replace(' ','',$_SESSION['course'][$i]).'/edit']))
                {

                  echo '		<section id="intro" class="main">
                          <h2>
              				'.$_SESSION['course'][$i].' - ATTENDANCE
              			</h2>
                          <p>

              				Update the new values for each present and absent columns

                      </p>
                		</section>';

                      $coursename = $_SESSION['course'][$i];
                      $_SESSION['lastVisited']="teacherview.php?attendance/".str_replace(' ','',$coursename);

                      $sql = "SELECT * FROM student_has_course h, student s, course c, teacher t where t.username = '$teacheruname' and c.courseName = '$coursename' and c.teacherID=t.teacherID and h.teacherID=t.teacherID and c.courseID = h.courseID and h.studentID = s.Rollno";
                      $result = $conn->query($sql);

                      if ($result->num_rows > 0) {
                        echo "<div class='w3-container'> <table class='w3-table-all w3-centered  w3-hoverable w3-reponsive w3-card-4'><tr><th>Roll Number</th><th>Student Name</th><th>Batch</th><th>Department</th><th>#Present</th><th>#Absent</th></tr><form action = 'updateattendancescript.php' method = 'post'>";
                          // output data of each row
                          while($row = $result->fetch_assoc()) {
                              echo "<tr><td>". $row["RollNo"]."</td><td>".$row["studentName"]."</td><td>".$row["batch"]."</td><td>".$row["department"]."</td><td>".$row["present"]." <input name='".$row['RollNo']."_p' type='number' min=0 value=".$row['present']."> </td><td>".$row["leavesTaken"]."<input name='".$row['RollNo']."_a' type='number' min=0 value=".$row['leavesTaken']."></td></tr>";
                          }
                          echo "</table></div>";
                          echo '<center><input type="submit" value = "submit"></center></form>';

                      } else {
                          echo "No students have enrolled for this course";
                      }

                  $iterated = true;
                  break;
                }
              else if (isset( $_GET['grades/'.str_replace(' ','',$_SESSION['course'][$i])]))
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
                      '.$_SESSION['course'][$i].'
                    </h2>
                          <p>

                      Currently enrolled students

                      </p>
                    </section>';

                      $coursename = $_SESSION['course'][$i];
                      $_SESSION['lastVisited']="teacherview.php?grades/".str_replace(' ','',$coursename);

                      $sql = "SELECT * FROM student_has_course h, student s, course c, teacher t where t.username = '$teacheruname' and c.courseName = '$coursename' and c.teacherID=t.teacherID and h.teacherID=t.teacherID and c.courseID = h.courseID and h.studentID = s.Rollno";
                      $result = $conn->query($sql);

                      if ($result->num_rows > 0) {
                        echo "<div class='w3-container'> <table class='w3-table-all w3-centered  w3-hoverable w3-reponsive w3-card-4'><tr><th>Roll Number</th><th>Student Name</th><th>Batch</th><th>Department</th><th>Midterm Test 1</th><th>Midterm Test 2</th><th>Project/Assignment(s) (if any)</th><th>End semester exam</th><th>Total</th><th>Grade</th></tr>";
                          // output data of each row
                          while($row = $result->fetch_assoc()) {
                              echo "<tr><td>". $row["RollNo"]."</td><td>".$row["studentName"]."</td><td>".$row["batch"]."</td><td>".$row["department"]."</td><td>".$row["T1"]."</td><td>".$row["T2"]."</td><td>".$row["ProjectAssignment"]."</td><td>".$row["EndSem"]."</td><td>".($row['T1']+$row['T2']+$row['ProjectAssignment']+$row["EndSem"])."</td><td>".$row["grade"]."</td></tr>";
                          }
                          echo "</table></div>";
                          echo "<a href='teacherview.php?grades/".str_replace(' ','',$coursename)."/edit' class='icon'><center><u>Assign/Modify Grades</u></center></a>";
                      } else {
                          echo "No students have enrolled for this course";
                      }

                  $iterated = true;
                  break;
                }

              else if (isset( $_GET['grades/'.str_replace(' ','',$_SESSION['course'][$i]).'/edit']))
                {
                  echo '		<section id="intro" class="main">
                          <h2>
              				'.$_SESSION['course'][$i].'
              			</h2>
                          <p>

              				Currently enrolled students

                      </p>
                		</section>';

                      $coursename = $_SESSION['course'][$i];
                      $_SESSION['lastVisited']="teacherview.php?grades/".str_replace(' ','',$coursename);

                      $sql = "SELECT * FROM student_has_course h, student s, course c, teacher t where t.username = '$teacheruname' and c.courseName = '$coursename' and c.teacherID=t.teacherID and h.teacherID=t.teacherID and c.courseID = h.courseID and h.studentID = s.Rollno";
                      $result = $conn->query($sql);

                      if ($result->num_rows > 0) {
                        echo "<div class='w3-container'> <table class='w3-table-all w3-centered  w3-hoverable w3-reponsive w3-card-4'><tr><th>Roll Number</th><th>Student Name</th><th>Batch</th><th>Department</th><th>Midterm Test 1</th><th>Midterm Test 2</th><th>Project/Assignment(s) (if any)</th><th>End semester exam</th><th>Grade</th></tr><form action = 'updategradesscript.php' method = 'post'>";
                          // output data of each row
                          while($row = $result->fetch_assoc()) {
                                echo "<tr><td>". $row["RollNo"]."</td><td>".$row["studentName"]."</td><td>".$row["batch"]."</td><td>".$row["department"]."</td><td>".$row["T1"]."<input name='".$row['RollNo']."_t1' type='number' min=0 value=".$row['T1']."> </td><td>".$row["T2"]."<input name='".$row['RollNo']."_t2' type='number' min=0 value=".$row['T2']."></td><td>".$row["ProjectAssignment"]."<input name='".$row['RollNo']."_pr' type='number' min=0 value=".$row['ProjectAssignment']."></td><td>".$row["EndSem"]."<input name='".$row['RollNo']."_end' type='number' min=0 value=".$row['EndSem']."></td><td class='select'>".$row['grade']."<select name='".$row["RollNo"]."_g'><option value = 'NULL'>-</option><option value = 'S'>S</option><option value = 'A'>A</option><option value = 'B'>B</option><option value = 'C'>C</option><option value = 'D'>D</option><option value = 'E'>E</option><option value = 'R'>R</option><option value = 'F'>F</option><option value = 'W'>W</option><option value = 'I'>I</option></select></td></tr>";
                          }
                          echo "</table></div>";
                          echo '<center><input type="submit" value = "submit"></center></form>';

                      } else {
                          echo "No students have enrolled for this course";
                      }

                  $iterated = true;
                  break;
                }
                else if (isset( $_GET['enroll/'.str_replace(' ','',$_SESSION['course'][$i])]))
                  {

                    echo '		<section id="intro" class="main">
                            <h2>
                				'.$_SESSION['course'][$i].'
                			</h2>
                            <p>

                				Currently enrolled students

                        </p>
                  		</section>';

                        $coursename = $_SESSION['course'][$i];

                        $sql = "SELECT * FROM student_has_course h, student s, course c, teacher t where t.username = '$teacheruname' and c.courseName = '$coursename' and c.teacherID=t.teacherID and h.teacherID=t.teacherID and c.courseID = h.courseID and h.studentID = s.Rollno";
                        $result = $conn->query($sql);

                        if ($result->num_rows > 0) {
                          echo "<div class='w3-container'> <table class='w3-table-all w3-centered  w3-hoverable w3-reponsive w3-card-4'><tr><th>Roll Number</th><th>Student Name</th><th>Department</th><th>Batch</th><th>CGPA</th></tr>";
                            // output data of each row
                            while($row = $result->fetch_assoc()) {
                                echo "<tr><td>". $row["RollNo"]."</td><td>".$row["studentName"]."</td><td>".$row["department"]."</td><td>".$row["batch"]."</td><td>".$row["CGPA"]."</td></tr>";
                            }

                            echo "</table></div>";
                        } else {
                            echo "No students have enrolled for this course";
                        }

                    $iterated = true;
                    break;
                  }
      };


	 if (!$iterated)
	{
		$teacherUser=$_POST['teacherUser'];
    $_SESSION['loggedIn']=true;
    $_SESSION['user']=$teacherUser;
    $teacherPass=$_POST['teacherPass'];
		$get_stu="select * from teacher where username = '$teacherUser' AND password = '$teacherPass'";
		$run_stu=mysqli_query($conn,$get_stu);
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
