<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
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
  if(isset($_POST['submit']))
  {
    include "db.php";
    $email=$_POST["email"];
    $password=$_POST["pwd"];
    $sql = "SELECT password,user_id FROM user where email='$email'";
    $result = $conn->query($sql);
    if ($result->num_rows == 0)
    {
    echo "
    <p><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i>There was a problem
    <br />We cannot find an account with that email address
    </p>
    ";
    }else
    {
      $row = $result->fetch_assoc();
      if($row["password"]==$password)
      {
        $_SESSION["user_id"] = $row["user_id"];
        
        header('location: index.php');
      }
    }
  }
  ?>


    <h2 style="text-align: center;"> Login </h2>
    <form style="max-width:500px;margin:auto;" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
      <div class="form-group">
        <label for="email">Email</label>
        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
      </div>
      <div class="form-group">
        <label for="pwd">Password</label>
        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
      </div>
      <div class="checkbox">
        <label><input type="checkbox" name="remember"> Remember me</label>
      </div>
      <button type="submit" name="submit" class="btn btn-default">Login</button>
    </form>
  </div>

</body>
</html>
