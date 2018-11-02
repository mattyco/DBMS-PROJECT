<?php
session_start();
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
//print_r($_POST);
foreach (array_keys($_POST) as $i){
  $temparr = (explode("_",$i));
  $roll=$temparr[0];
  $p_or_a=$temparr[1];

  $iterated = true;
  if ($p_or_a=='p')
    {
        $sql = "UPDATE student_has_course SET present=$_POST[$i] WHERE studentID=$roll";
        if ($conn->query($sql) === TRUE) {
            $iterated=true;
        }
        else {
            $iterated=false;
            echo "Error updating record: " . $conn->error;
            break;
        }
    }
    if ($p_or_a=='a')
      {
          $sql = "UPDATE student_has_course SET leavesTaken=$_POST[$i] WHERE studentID=$roll";
          if ($conn->query($sql) === TRUE) {
              $iterated=true;
          }
          else {
              $iterated=false;
              echo "Error updating record: " . $conn->error;
              break;
          }
      }
}

if($iterated){echo "<script>window.location.href='updatesuccessscript.php'</script>";}
else{echo "<script>window.location.href='updatefailscript.php'</script>";}
?>
