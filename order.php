<?php
error_reporting(0);
session_start();
$_SESSION["items"]=0;
date_default_timezone_set("America/New_York");
$cur_time=date('Y-m-d h:i:s');
$odid=uniqid();
$tot=isset($_GET['amt']) ? $_GET['amt'] : 0;
if (isset($_POST['checkout']))
{
$deladd=$_POST["ship_add"];
$cardid=$_POST["card_det"];
}
include "db.php";
$sql = "INSERT into user_order VALUES ('$odid',$_SESSION[user_id],'$cur_time','$deladd','$cardid')";
$result = $conn->query($sql);
?>
<?php
$sql = "SELECT prodid,count(cart_id) as quant from cart where userid=$_SESSION[user_id] group by prodid";
$result = $conn->query($sql);
$i=0;
while($row = $result->fetch_assoc()){
  $prod[$i]=$row["prodid"];
  $quantity[$i]=$row["quant"];
  $i=$i+1;
}
?>
<?php
while($i>=0)
{
$sql = "INSERT into orders VALUES ('$odid','$prod[$i]',$quantity[$i])";
$result = $conn->query($sql);
$i=$i-1;
}
?>

<?php
$sql = "delete from cart where userid=$_SESSION[user_id]";
$result = $conn->query($sql);
?>

<?php
include "header.php";
?>
<?php
$sql = "SELECT u.fname,u.lname,a.add1,a.city,a.state,a.zip,a.phone,c.exp_month,c.exp_year,c.credit_num  from user u  join user_add a on u.user_id=a.userid join user_order o on a.add_id=o.del_add  join credit c on c.credit_id=o.cred_id where o.userid=$_SESSION[user_id] and o.order_id='$odid';";
$result = $conn->query($sql);
?>

<p style="font-size:40px; font-weight:bold;margin:15px 0px 25px 0px;text-align:center;"><i class="fa fa-check-circle-o fa-2x" aria-hidden="true" style="color:green;"></i> Your order was placed, thank you!</p>
<p style="font-size:20px; font-weight:bold;margin:15px 0px 25px 0px;text-align:center;">Your order number is <?php echo $odid; ?></p>
<div class="container-fluid" style="background:#F4F4F4;width:76%;height:auto;margin:15px 12% 15px 12%;">
  <div class="row">
    <div class="col-md-6" style="float:left;">
      <p style="font-size:20px; font-weight:bold;margin:15px 0px 25px 15px;">Order Summary</p>
      <hr style="margin-left:15px;margin-right:15px;margin-top:20px;margin-bottom: 20px;">
      <p style="font-size:18px; font-weight:bold;margin:15px 0px 25px 15px;">SHIPPED TO</p>
      <p style="font-size:18px; font-weight:bold;margin:15px 0px 25px 15px;color:grey;text-transform: capitalize;"><?php while($row = $result->fetch_assoc()){echo $row["fname"]," ",$row["lname"],"<br>",$row["add1"],"<br>",$row["city"],",",$row["state"],",",$row["zip"],"<br>",$row["phone"];}?></p>
      <p style="font-size:18px; font-weight:bold;margin:15px 0px 25px 15px;">PAYMENT METHOD</p>
      <?php
      $sql = "SELECT u.fname,u.lname,a.add1,a.city,a.state,a.zip,a.phone,c.exp_month,c.exp_year,c.credit_num  from user u  join user_add a on u.user_id=a.userid join user_order o on a.add_id=o.del_add  join credit c on c.credit_id=o.cred_id where o.userid=$_SESSION[user_id] and o.order_id='$odid';";
      $result = $conn->query($sql);
      ?>
      <p style="font-size:18px; font-weight:bold;margin:15px 0px 25px 15px;color:grey;text-transform: capitalize;"><?php while($row = $result->fetch_assoc()){echo "**** **** **** ",substr($row["credit_num"],-4),"<br>","Exp.",$row["exp_month"],"/",$row["exp_year"];}?></p>
    </div>
    <div class="col-md-6" style="float:left;">
      <p style="font-size:20px; font-weight:bold;margin:15px 0px 25px 150px;">CART SUMMARY</p>
      <hr style="margin-left:15px;margin-right:15px;margin-top:20px;margin-bottom: 20px;">
      <p style="font-size:18px; font-weight:bold;margin:15px 0px 25px 150px;display:inline;">Subtotal: <p style="color:grey;display:inline;font-size:18px; font-weight:bold;">$<?php echo $tot?></p><br></p>
      <p style="font-size:18px; font-weight:bold;margin:15px 0px 25px 150px;display:inline;">Taxes: <p style="color:grey;display:inline;font-size:18px; font-weight:bold;">$<?php echo round(($tot*0.02),2)?></p><br></p>
      <p style="font-size:18px; font-weight:bold;margin:15px 0px 25px 150px;display:inline;">Shipping: <p style="color:grey;display:inline;font-size:18px; font-weight:bold;">$0.00</p><br></p>
      <hr style="margin-left:20px;margin-right:40px;margin-top:20px;margin-bottom: 20px;">
      <p style="font-size:20px; font-weight:bold;margin:15px 0px 25px 150px;display:inline;">Total: <p style="color:grey;display:inline;font-size:18px; font-weight:bold;">$<?php echo $tot+round(($tot*0.02),2)?></p><br></p>
    </div>
  </div>
</div>
