
<?php
session_start();?>

<script>
window.alert("Error updating records");</script>

<?php
echo "<script>window.location.href='".$_SESSION['lastVisited']."'</script>";
?>
