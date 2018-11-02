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

 foreach (array_keys($_POST) as $i){
   $temparr = (explode("_",$i));
   $roll=$temparr[0];
   $col=$temparr[1];

   $iterated = true;
   if ($col=='t1')
     {
         $sql = "UPDATE student_has_course SET T1=$_POST[$i] WHERE studentID=$roll";
         if ($conn->query($sql) === TRUE) {
             $iterated=true;
         }
         else {
             $iterated=false;
             echo "Error updating record: " . $conn->error;
             break;
         }
     }
    if ($col=='t2')
       {
           $sql = "UPDATE student_has_course SET T2=$_POST[$i] WHERE studentID=$roll";
           if ($conn->query($sql) === TRUE) {
               $iterated=true;
           }
           else {
               $iterated=false;
               echo "Error updating record: " . $conn->error;
               break;
           }
       }
       if ($col=='pr')
         {
             $sql = "UPDATE student_has_course SET ProjectAssignment=$_POST[$i] WHERE studentID=$roll";
             if ($conn->query($sql) === TRUE) {
                 $iterated=true;
             }
             else {
                 $iterated=false;
                 echo "Error updating record: " . $conn->error;
                 break;
             }
         }
         if ($col=='end')
           {
               $sql = "UPDATE student_has_course SET EndSem=$_POST[$i] WHERE studentID=$roll";
               if ($conn->query($sql) === TRUE) {
                   $iterated=true;
               }
               else {
                   $iterated=false;
                   echo "Error updating record: " . $conn->error;
                   break;
               }
           }
           if ($col=='g')
             {
                 $sql = "UPDATE student_has_course SET grade='$_POST[$i]' WHERE studentID=$roll";
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
