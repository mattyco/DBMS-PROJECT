<?php

$db_host = "localhost";
$db_username = "root";
$db_pass = "PASSWORD";
$db_name = "dss";

@mysqli_connect("$db_host","$db_username","$db_pass", "$db_name") or die ("Could not connect to MySQL");

echo"Successful";
?>