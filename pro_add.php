<title>Online Shopping</title>
<?php
error_reporting(0);
session_start();
include "header.php";
$userid=$_SESSION["user_id"];
?>
<?php
include "db.php";
$sql = "SELECT * from user_add where userid=$userid";
$result = $conn->query($sql);
?>
<p style="font-size:40px; font-weight:bold;margin:15px 25% 25px 25%;">Your Addresses</p>
<a href="ed_adding.php?adad=<?php echo $addad;?>" style="text-decoration:none;"><input type="submit" name="ad_add" value="Add address" style="display: inline;font-size:16px;background:orange;border-color:#E47911;text-align:center;margin:0px;margin-left:25%;"></a>
<?php
while($row = $result->fetch_assoc()){
  $_SESSION["add_id"]=$row["add_id"];
?>
<table style="margin:5px 25% 5px 25%;">
  <tr>
    <td style="width:800px;height:100px;border:1px solid;border-color:white;background:#F4F4F4">
      <p style="text-transform: capitalize;font-size:16px;"><?php echo $row["add1"];?></p>
      <p style="text-transform: capitalize;font-size:16px;"><?php echo $row["city"];?></p>
      <p style="text-transform: capitalize;font-size:16px;"><?php echo $row["state"];?></p>
      <p style="text-transform: capitalize;font-size:16px;"><?php echo $row["zip"];?></p>
      <p style="text-transform: capitalize;font-size:16px;display: inline;"><?php echo $row["phone"];?></p>
      <a href="ed_del.php?ad=<?php echo $row["add_id"];?>" style="text-decoration:none;display: inline;"><input type="submit" name="del" value="Delete" style="display: inline;font-size:16px;background:orange;border-color:#E47911;text-align:center;margin:0px;margin-left:90%;"></a>
    </td>
  </tr>
</table>
<?php
}
?>
