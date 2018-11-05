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
   if ($col=='tid')
     {
         $sql = "UPDATE teacher SET teacherID=$_POST[$i] WHERE teacherID=$roll";
         if ($conn->query($sql) === TRUE) {
             $iterated=true;
         }
         else {
             $iterated=false;
             echo "Error updating record: " . $conn->error;
             break;
         }
     }
    if ($col=='name')
       {
           $sql = "UPDATE teacher SET teacherName='$_POST[$i]' WHERE teacherID=$roll";
           if ($conn->query($sql) === TRUE) {
               $iterated=true;
           }
           else {
               $iterated=false;
               echo "Error updating record: " . $conn->error;
               break;
           }
       }
       if ($col=='email')
         {
             $sql = "UPDATE teacher SET email='$_POST[$i]' WHERE teacherID=$roll";
             if ($conn->query($sql) === TRUE) {
                 $iterated=true;
             }
             else {
                 $iterated=false;
                 echo "Error updating record: " . $conn->error;
                 break;
             }
         }
         if ($col=='dept')
           {
               $sql = "UPDATE teacher SET department='$_POST[$i]' WHERE teacherID=$roll";
               if ($conn->query($sql) === TRUE) {
                   $iterated=true;
               }
               else {
                   $iterated=false;
                   echo "Error updating record: " . $conn->error;
                   break;
               }
           }
           if ($col=='bday')
             {
                 $sql = "UPDATE teacher SET birthDate='$_POST[$i]' WHERE teacherID=$roll";
                 if ($conn->query($sql) === TRUE) {
                     $iterated=true;
                 }
                 else {
                     $iterated=false;
                     echo "Error updating record: " . $conn->error;
                     break;
                 }
             }
             if ($col=='startdate')
               {
                   $sql = "UPDATE teacher SET startDate='$_POST[$i]' WHERE teacherID=$roll";
                   if ($conn->query($sql) === TRUE) {
                       $iterated=true;
                   }
                   else {
                       $iterated=false;
                       echo "Error updating record: " . $conn->error;
                       break;
                   }
               }
             if ($col=='post')
               {
                   $sql = "UPDATE teacher SET designation='$_POST[$i]' WHERE teacherID=$roll";
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

 if($iterated){$_SESSION['actionsuccess']=1;}
 else{$_SESSION['actionsuccess']=0;}
 echo "<script>window.location.href='".$_SESSION['lastVisited']."'</script>";
?>
