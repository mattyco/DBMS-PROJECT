
<?php
session_start();
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
//print_r();
foreach (array_keys($_POST) as $i){

$iterated = true;
$sql = "UPDATE student_has_course SET grade='$_POST[$i]' WHERE studentID=$i";
if ($con->query($sql) === TRUE) {
    $iterated=true;
    }
else {
    $iterated=false;
    echo "Error updating record: " . $conn->error;
    break;
        }
}
if($iterated){echo "Record updated successfully";}

//header("Location: /teacherview.php?grades"); /* Redirect browser */
echo "<script>window.location.href='".$_SESSION['lastVisited']."'</script>";
exit();

 ?>
