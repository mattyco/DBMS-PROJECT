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
   if ($col=='rn')
     {
         $sql = "UPDATE student SET RollNo=$_POST[$i] WHERE RollNo=$roll";
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
           $sql = "UPDATE student SET studentName='$_POST[$i]' WHERE RollNo=$roll";
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
             $sql = "UPDATE student SET email='$_POST[$i]' WHERE RollNo=$roll";
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
               $sql = "UPDATE student SET department='$_POST[$i]' WHERE RollNo=$roll";
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
                 $sql = "UPDATE student SET birthDate='$_POST[$i]' WHERE RollNo=$roll";
                 if ($conn->query($sql) === TRUE) {
                     $iterated=true;
                 }
                 else {
                     $iterated=false;
                     echo "Error updating record: " . $conn->error;
                     break;
                 }
             }
             if ($col=='batch')
               {
                   $sql = "UPDATE student SET batch='$_POST[$i]' WHERE RollNo=$roll";
                   if ($conn->query($sql) === TRUE) {
                       $iterated=true;
                   }
                   else {
                       $iterated=false;
                       echo "Error updating record: " . $conn->error;
                       break;
                   }
               }
               if ($col=='gp')
                 {
                     $sql = "UPDATE student SET CGPA='$_POST[$i]' WHERE RollNo=$roll";
                     if ($conn->query($sql) === TRUE) {
                         $iterated=true;
                     }
                     else {
                         $iterated=false;
                         echo "Error updating record: " . $conn->error;
                         break;
                     }
                 }
                 if ($col=='add')
                   {
                       $sql = "UPDATE student SET address='$_POST[$i]' WHERE RollNo=$roll";
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
