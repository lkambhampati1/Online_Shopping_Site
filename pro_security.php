<title>Online Shopping</title>
<?php
error_reporting(0);
session_start();
include "header.php";
$userid=$_SESSION["user_id"];
?>
<?php
include "db.php";
$sql = "SELECT user_id,email,password,fname,lname from user where user_id=$userid";
$result = $conn->query($sql);
?>
<p style="font-size:40px; font-weight:bold;margin:15px 25% 25px 25%;">Login & Security</p>
<?php
while($row = $result->fetch_assoc()){
  $em=$row["email"];
  $pw=$row["password"];
  $fna=$row["fname"];
  $lna=$row["lname"];
}
?>
<table style="margin:5px 25% 5px 25%;">
  <tr>
    <td style="width:20%;height:100px;border:1px solid;border-color:white;background:#F4F4F4">
      <p style="text-transform: capitalize;font-size:16px;">Name:</p>
      <p style="text-transform: capitalize;font-size:16px;display: inline;"><?php echo $fna," ",$lna;?></p>
      <a href="ed_name.php?ch=1" style="text-decoration:none;display: inline;"><input type="submit" name="nam" value="Edit" style="display: inline;font-size:16px;background:orange;border-color:#E47911;text-align:center;margin:0px;margin-left:90%;"></a>
    </td>
  </tr>
  <tr>
    <td style="width:20%;height:100px;border:1px solid;border-color:white;background:#F4F4F4">
      <p style="text-transform: capitalize;font-size:16px;">Email:</p>
      <p style="font-size:16px;display: inline;"><?php echo $em;?></p>
      <a href="ed_name.php?ch=2" style="text-decoration:none;display: inline;"><input type="submit" name="email" value="Edit" style="display: inline;font-size:16px;background:orange;border-color:#E47911;text-align:center;margin:0px;margin-left:90%;"></a>
    </td>
  </tr>
  <tr>
    <td style="width:20%;height:100px;border:1px solid;border-color:white;background:#F4F4F4">
    <p style="text-transform: capitalize;font-size:16px;">Password:</p>
    <p style="text-transform: capitalize;font-size:16px;display: inline;"><?php echo "*********";?></p>
    <a href="ed_name.php?ch=3" style="text-decoration:none;display: inline;"><input type="submit" name="pwd" value="Edit" style="display: inline;font-size:16px;background:orange;border-color:#E47911;text-align:center;margin:0px;margin-left:90%;"></a>
    </td>
  </tr>
</table>
