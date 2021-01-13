<?php
error_reporting(0);
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Online Shopping</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="style.css"/>
<script src="https://kit.fontawesome.com/ac3b0838dd.js" crossorigin="anonymous"></script>

<style>
#header{
  background: #00084b;
  padding:20px;
}
.dropbtn{
  margin-left: 30px;
  background-color: #00084b;
  color:white;
  padding:16px;
  font-size:16px;
  border:none;
  width:100%;
}
.dropdown{
  position:relative;
  display:inline-block;
}
.dropdown-content{
  display:none;
  position:absolute;
  background-color: white;
  width:100%;
  z-index: 1;
}
.dropdown-content a{
  color:black;
  text-decoration: none;
  display: block;
  padding:12px 16px;
}
.dropdown-content a:hover{background-color: grey;}
.dropdown:hover .dropdown-content{display:block;}
.dropbtn:hover{background-color: #43467f}
.button{
  background-color: #00084b;
  color:white;
  padding:16px;
  font-size:16px;
  border:1px hidden;
}
.button:hover{background-color: #43467f}
</style>
<body>
  <header>
    <div id="header">
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <a href="index.php" style="text-decoration:none;">
          <font style="font-style:normal; font-size: 33px;font-family: serif;text-shadow:2px 2px white;">Online Store</font>
        </a>
        </div>
        <div class="col-md-5">
          <form style="max-width:500px;margin:auto;" method="post" action="">
            <div class="form-group" style="display:inline;">
              </i><input class="form-control" type="text" placeholder="Search here" id="search">
            </div>
          </form>
        </div>
        <div class="col-md-4" style="display:inline;">
          <?php
          if(isset($_SESSION["user_id"]))
          {
            include "db.php";
            $sql = "SELECT fname FROM user where user_id='$_SESSION[user_id]'";
            $result = $conn->query($sql);
            $row = $result->fetch_assoc();
            echo '
            <div class="dropdown">
              <button class="dropbtn"><i class="fa fa-user"> Hello,'.$row["fname"].'<br/>Account & Lists</i></button>
              <div class="dropdown-content">
                <a href="profile.php">Profile</a>
                <a href="logout.php">Logout</a>
              </div>
            </div>
            ';
          }
          else {
            echo '
            <div class="dropdown">
              <button class="dropbtn"><i class="fa fa-user"> My Account</i></button>
              <div class="dropdown-content">
                <a href="login.php"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</a>
                <a href="new_user.php"><i class="fa fa-user-plus" aria-hidden="true"></i> New User?</a>
              </div>
            </div>
            ';
          }
           ?>

          <?php
           if(isset($_SESSION["user_id"]))
           {
           include "db.php";
           $sql = "SELECT count(cart_id) as items,max(cart_id) as cid from cart where userid='$_SESSION[user_id]' group by userid";
           $result = $conn->query($sql);
           if($result->num_rows > 0)
           {
             while($row = $result->fetch_assoc()){
               $_SESSION["items"]=$row["items"];
               $_SESSION["cartid"]=$row["cid"];
              }
            }
           else {
           $_SESSION["items"]=0;
           $_SESSION["cartid"]=0;
           }
          }
          ?>

          <a href="cart_sum.php?cart_icon=1">
          <button class="button" type="submit" style="float:right;"><i class="fas fa-shopping-cart"> Cart <p style="display:inline;color:#E47911"> (<?php echo isset($_SESSION["items"])?$_SESSION["items"]:0;?> )</p></i></button>
        </a>
        </div>
        </div>
      </div>
    </div>
    </div>
  </header>
</body>
</head>
</html>
