<?php
error_reporting(0);
session_start();
if(!isset($_SESSION["user_id"]))
{
  header('Location: login.php');
}
$prodid=isset($_GET['prodidr']) ? $_GET['prodidr'] : '';
?>
<?php
include "db.php";
$sql = "INSERT INTO wish VALUES('$prodid',$_SESSION[user_id])";
$result = $conn->query($sql);
include "header.php";
include "body.php";
?>
<p style="font-size:40px; font-weight:bold;margin:15px 0px 25px 250px;color:green;">Added to list</p>
<a href="index.php" style="text-decoration:none;">
<button type="submit" name="checkout" class="btn btn-default" style="margin-top: 30px;margin-left: 250px;font-size:18px;background:orange;border-color:#E47911;"> Continue Shopping </button>
</a>
