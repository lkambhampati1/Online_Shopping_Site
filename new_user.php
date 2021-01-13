<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>New User Regestration</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/ac3b0838dd.js" crossorigin="anonymous"></script>
<style>
p{
  border: 1px solid red;
  border-radius: 5px;
  max-width:500px;
  margin:auto;
  text-align: center;
  font-size:16px;
  font-weight: bold;
}
</style>
</head>
<body>
  <div class="container">
  <?php
  session_start();
  $errors = array();
  if(isset($_POST['new_account']))
  {
    include "db.php";
    $fname=$_POST["fname"];
    $lname=$_POST["lname"];
    $email=$_POST["email"];
    $password=$_POST["pwd"];
    $rpassword=$_POST["repwd"];
    if (empty($fname)) { array_push($errors, "First Name is required"); }
    if (empty($lname)) { array_push($errors, "Last Name is required"); }
    if (empty($email)) { array_push($errors,  "Email is required"); }
    if (empty($password)) { array_push($errors, "Password is required"); }
    if ($password != $rpassword) {
  	array_push($errors, "The two passwords do not match");
    }

    $sql = "SELECT user_id FROM user where email='$email'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0)
    {
      array_push($errors, "User already exists");
    }
    if(count($errors) == 0 & $result->num_rows == 0)
      {
      $sql = "SELECT max(user_id) as uid FROM user";
      $result = $conn->query($sql);
      $id = $result->fetch_assoc();
      $user_id=$id["uid"]+1;
      echo "coming here $user_id";
      $sql = "insert into user values('$user_id','$email','$password','$fname','$lname')";
      $result = $conn->query($sql);
      $_SESSION['user_id'] = $user_id;
      header('location: index.php');
    }
  }
  ?>


    <h2 style="text-align: center;"> Create Account </h2>
    <form style="max-width:500px;margin:auto;" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
      <div class="form-group">
        <label for="Name">First Name</label>
        <input type="text" class="form-control" id="fname" placeholder="" name="fname">
        <label>
      </div>
      <div class="form-group">
        <label for="Name">Last Name</label>
        <input type="text" class="form-control" id="lname" placeholder="" name="lname">
      </div>
      <div class="form-group">
        <label for="email">Email</label>
        <input type="email" class="form-control" id="email" placeholder="" name="email">
      </div>
      <div class="form-group">
        <label for="pwd">Password</label>
        <input type="password" class="form-control" id="pwd" placeholder="" name="pwd">
      </div>
      <div class="form-group">
        <label for="pwd">Re-enter password</label>
        <input type="password" class="form-control" id="pwd" placeholder="" name="repwd">
      </div>
      <button type="submit" name="new_account" class="btn btn-default">Create your Account</button>
    </form>
  </div>

</body>
</html>
