<title>Online Shopping</title>
<?php
error_reporting(0);
session_start();
$userid=$_SESSION["user_id"];
$change_ad=isset($_GET['ad']) ? $_GET['ad'] : 0;
?>
<?php
include "db.php";
$sql = "DELETE from user_add where add_id='$change_ad'";
$result = $conn->query($sql);
if($conn->query($sql) === TRUE)
{
  include "pro_add.php";
  echo "<div style=\"background:#F4F4F4;margin:5px 25% 5px 25%;height:100px;\"><p style=\"font-size:30px;color:green;margin:25% 5px 25% 5px;padding:10px;\"><i class=\"fa fa-check-circle-o fa-2x\" aria-hidden=\"true\" style=\"color:green;\"></i> Changes Saved</p></div>";
}
?>
