<title>Online Shopping</title>
<?php
error_reporting(0);
session_start();
if(!isset($_SESSION["user_id"]))
{
  header('Location: login.php');
}
include "header.php";
?>
<p style="margin:15px 12% 35px 12%;font-size:40px; font-weight:bold;">Your Account</p>
<table style="margin:5px 25% 5px 25%;">
  <tr>
    <td style="width:50%;height:100px;border:1px solid;border-color:white;background:#F4F4F4"><a href="pro_order.php" style="text-decoration:none;font-size:20px;margin:50px;padding:20px;color:black;"><i class="fa fa-shopping-bag" aria-hidden="true" style="color:orange;"></i> Your Orders</td>
    <td style="width:50%;height:100px;border:1px solid;border-color:white;background:#F4F4F4"><a href="pro_wish.php" style="text-decoration:none;font-size:20px;margin:50px;padding:20px;color:black;"><i class="fa fa-heart-o" aria-hidden="true" style="color:red;"></i> Wish List</td>
  </tr>
  <tr>
    <td style="width:50%;height:100px;border:1px solid;border-color:white;background:#F4F4F4"><a href="pro_add.php" style="text-decoration:none;font-size:20px;margin:50px;padding:20px;color:black;"><i class="fa fa-map-marker" aria-hidden="true" style="color:orange;"></i> Your Addresses</td>
    <td style="width:50%;height:100px;border:1px solid;border-color:white;background:#F4F4F4"><a href="" style="text-decoration:none;font-size:20px;margin:50px;padding:20px;color:black;"><i class="fa fa-credit-card-alt" aria-hidden="true" style="color:blue;"></i> Payment Options</td>
  </tr>
  <tr>
    <td style="width:50%;height:100px;border:1px solid;border-color:white;background:#F4F4F4"><a href="pro_security.php" style="text-decoration:none;font-size:20px;margin:50px;padding:20px;color:black;"><i class="fa fa-lock" aria-hidden="true" style="color:grey;"></i> Login & Security</td>
  </tr>
</table>
