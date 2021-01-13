<?php
error_reporting(0);
session_start();
include "db.php";
$userid=$_SESSION["user_id"];
$ch=substr(uniqid(),-4);

 ?>
 <title>Online Shopping</title>
<?php
if(isset($_POST['save_add']))
{

  $addl1=$_POST["addl1"];
  $c=$_POST["city1"];
  $s=$_POST["state1"];
  $z=$_POST["zip1"];
  $p=$_POST["phone1"];
  }
  ?>
  <?php
  $sql = "INSERT into user_add values($userid,'$ch','$addl1','$c','$s','$z','$p')";
  $result = $conn->query($sql);

    header('Location: pro_add.php');
    echo "<div style=\"background:#F4F4F4;margin:5px 25% 5px 25%;height:100px;\"><p style=\"font-size:30px;color:green;margin:25% 5px 25% 5px;padding:10px;\"><i class=\"fa fa-check-circle-o fa-2x\" aria-hidden=\"true\" style=\"color:green;\"></i> Added address Successfully</p></div>";

?>
