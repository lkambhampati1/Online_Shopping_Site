<title>Online Shopping</title>
<?php
error_reporting(0);
session_start();
include "header.php";
$userid=$_SESSION["user_id"];
?>
<?php
include "db.php";
$sql = " SELECT u.order_id,u.order_time,u.del_add,u.cred_id,o.prodid,o.quantity,p.prod_title,p.prod_price,p.prod_rev,i.prod_img,us.add1 from user_order u,orders o, product p,prod_photos i,user_add us  Where u.order_id=o.orderid and u.userid=$userid and p.prod_id=o.prodid and i.prod_id=o.prodid and us.userid=u.userid group by p.prod_id order by u.order_time DESC;";
$result = $conn->query($sql);
?>
<p style="font-size:40px; font-weight:bold;margin:10px 10% 5px 10%;">Your Orders</p>
<?php while($row = $result->fetch_assoc()){ ?>
 <table style="margin:10px 10% 10px 10%;">
   <tr>
     <td style="width:30%;height:auto;border:1px solid;border-color:white;background:#F4F4F4">
       <p>Order Placed: <?php echo $row["order_time"]; ?></p>
     </td>
     <td style="width:10%;height:auto;border:1px solid;border-color:white;background:#F4F4F4">
       <p>Total: <?php echo $row["prod_price"]; ?></p>
     </td>
     <td style="width:30%;height:auto;border:1px solid;border-color:white;background:#F4F4F4">
       <p>Ship To:<?php echo $row["add1"]; ?></p>
     </td>
   </tr>
   <tr>
     <td style="width:400px;height:100px;border:1px solid;border-color:white;">
       <a target="_blank" href="prod_page.php?p=<?php echo $row["prod_img"] ?>&pid=<?php echo $row["prodid"] ?>" style="text-decoration:none;">
       <img src="product/<?php echo $row["prod_img"] ?>" alt="Image not found" width="100px" height="100px" style="border:1px solid; border-color:#EBE8E8;padding:5px;margin:0px;margin-left:5px;">
       <p style="margin:30px;display:inline;width:150px;"><?php echo $row["prod_title"] ?><br><br><?php echo "$ ",$row["prod_price"]; ?><br><br>
       </a>
     </td>
   </tr>
    </table>
   <?php } ?>
