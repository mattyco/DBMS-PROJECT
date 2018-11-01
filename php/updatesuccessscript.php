
<?php
session_start();?>

<script>
window.alert("Record updated successfully");</script>

<?php
echo "<script>window.location.href='".$_SESSION['lastVisited']."'</script>"; 
?>
