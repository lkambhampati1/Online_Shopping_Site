<title>Online Shopping</title>
<?php
error_reporting(0);
session_start();
$userid=$_SESSION["user_id"];
$change=isset($_GET['ch']) ? $_GET['ch'] : '';
?>
<?php
if($change==1){
?>

<p style="font-size:40px; font-weight:bold;margin:15px 25% 25px 25%;width:50%;text-align:center;">Change your name</p>
<form style="max-width:500px;margin:auto;" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
  <div class="form-group">
    <label for="Name">Fname</label>
    <input type="text" class="form-control" id="fnam" placeholder="" name="fnam" style="margin:10px;width:200px;"><br>
    <label>
    <label for="Name">Lname</label>
    <input type="text" class="form-control" id="lnam" placeholder="" name="lnam" style="display: inline;margin:10px;width:200px;">
    <label>
  </div>
  <button type="submit" name="edit_name" class="btn btn-default" style="display: inline;font-size:16px;background:orange;border-color:#E47911;text-align:center;margin:10px 25% 10px 25%;">Save changes</button>
</form>
<?php
}
?>
<?php
if($change==2){
?>
<p style="font-size:40px; font-weight:bold;margin:15px 25% 25px 25%;">Change email</p>
<form style="max-width:500px;margin:auto;" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
  <div class="form-group">
    <label for="Email">Email</label>
    <input type="text" class="form-control" id="email" placeholder="" name="email" style="display: inline;margin:10px;width:200px;"><br>
    <label>
  </div>
  <button type="submit" name="edit_email" class="btn btn-default" style="display: inline;font-size:16px;background:orange;border-color:#E47911;text-align:center;margin:10px 25% 10px 25%;">Save changes</button>
</form>
<?php
}
?>
<?php
if($change==3){
?>
<p style="font-size:40px; font-weight:bold;margin:15px 25% 25px 25%;">Change password</p>
<form style="max-width:500px;margin:auto;" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
  <div class="form-group">
    <label for="pwd">Current Password </label>
    <input type="password" class="form-control" id="cpwd" placeholder="" name="cpwd" style="margin:10px;width:200px;"><br>
    <label>
    <label for="pwd">New password </label>
    <input type="password" class="form-control" id="npwd" placeholder="" name="npwd" style="margin:10px;width:200px;"><br>
    <label>
    <label for="pwd">Re-enter Password </label>
    <input type="password" class="form-control" id="rpwd" placeholder="" name="rpwd" style="display: inline;margin:10px;width:200px;">
    <label>
  </div>
  <button type="submit" name="edit_pwd" class="btn btn-default" style="display: inline;font-size:16px;background:orange;border-color:#E47911;text-align:center;margin:10px 25% 10px 25%;">Save changes</button>
</form>
<?php
}
?>
<?php
include "db.php";

?>
<?php
if(isset($_POST['edit_name']))
{
  $sql = "SELECT fname,lname from user where user_id=$userid";
  $result = $conn->query($sql);
  while($row = $result->fetch_assoc()){
    $ofnam=$row["fname"];
    $olname=$row["lname"];
  }
  $fnam=$_POST["fnam"];
  $lnam=$_POST["lnam"];
  if(strlen($fnam)>20 or strlen($lnam)>20 )
  {
    echo "<p>Name is too long</p>";
  }
  $sql = "UPDATE user set fname='$fnam' ,lname='$lnam' where user_id=$userid";
  $result = $conn->query($sql);
  if ($conn->query($sql) === TRUE)
  {
    include "pro_security.php";
    echo "<div style=\"background:#F4F4F4;margin:5px 25% 5px 25%;height:100px;\"><p style=\"font-size:30px;color:green;margin:25% 5px 25% 5px;padding:10px;\"><i class=\"fa fa-check-circle-o fa-2x\" aria-hidden=\"true\" style=\"color:green;\"></i> Successfully modified your account</p></div>";

  }
}
?>
<?php
if(isset($_POST['edit_email']))
{
  $email=$_POST["email"];
  $sql = "SELECT email from user where user_id=$userid";
  $result = $conn->query($sql);
  while($row = $result->fetch_assoc()){
    $oemail=$row["email"];
  }
  if(strlen($email)>35)
  {
    echo "<p style=\"font-size:25px;color:red; margin-left:25%; margin-right:25%;\">Email is too long</p>";
  }
  $sql = "UPDATE user set email='$email' where user_id=$userid";
  $result = $conn->query($sql);
  if ($conn->query($sql) === TRUE)
  {
    include "pro_security.php";
    echo "<div style=\"background:#F4F4F4;margin:5px 25% 5px 25%;height:100px;\"><p style=\"font-size:30px;color:green;margin:25% 5px 25% 5px;padding:10px;\"><i class=\"fa fa-check-circle-o fa-2x\" aria-hidden=\"true\" style=\"color:green;\"></i> Successfully modified your account</p></div>";

  }
}
?>
<?php
if(isset($_POST['edit_pwd']))
{
  $pwd=$_POST["cpwd"];
  $npwd=$_POST["npwd"];
  $rpwd=$_POST["rpwd"];
  $sql = "SELECT password from user where user_id=$userid";
  $result = $conn->query($sql);
  while($row = $result->fetch_assoc()){
    $opwd=$row["password"];
  }
  if($pwd==$opwd)
  {
  if(strlen($pwd)>30)
  {
    echo "<p style=\"font-size:25px;color:red; margin-left:25%; margin-right:25%;\">Password is too long!</p>";
  }
  if($npwd==$rpwd)
  {
  $sql = "UPDATE user set password='$npwd' where user_id=$userid";
  $result = $conn->query($sql);
  if ($conn->query($sql) === TRUE)
  {
   include "pro_security.php";
    echo "<div style=\"background:#F4F4F4;margin:5px 25% 5px 25%;height:100px;\"><p style=\"font-size:30px;color:green;margin:25% 5px 25% 5px;padding:10px;\"><i class=\"fa fa-check-circle-o fa-2x\" aria-hidden=\"true\" style=\"color:green;\"></i> Successfully modified your account</p></div>";

  }
}
else {
  echo "<p style=\"font-size:25px;color:red; margin-left:25%; margin-right:25%;\">Password doesn't macth!</p>";
}
}
}
?>
