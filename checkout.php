<?php
error_reporting(0);
session_start();
$items=isset($_GET['items']) ? $_GET['items'] : '';
$tot=isset($_GET['amt']) ? $_GET['amt'] : '';
$userid=$_SESSION["user_id"];
?>
<?php
include "db.php";
$sql = "SELECT m.fname,m.lname,u.add1,u.city,u.state,u.zip,u.phone,u.add_id from user m, user_add u where m.user_id=u.userid and m.user_id=$userid";
$result = $conn->query($sql);
?>
<title>Online checkout</title>
<form action="order.php?amt=<?php echo $tot?>" method="post">
<div class="container-fluid" style="height:auto;margin:0px;">
   <div class="row" style="height:100px;background:#F4F4F4;">
     <div class="col-md-12" style="margin:0px;height:60px;padding:20px;width:auto;">
       <font style="font-style:normal; margin-left: 150px;font-size: 33px;font-family: serif;text-shadow:2px 2px #E47911;padding:20px;"> Online Store </font>
       <p style="display:inline;font-size:30px;text-align:center;margin-left: 250px;padding:20px;">Checkout (<?php echo $items?>)</p>
    </div>
   </div>
 </div>
 <div class="container-fluid" style="height:auto;margin:0px;">
   <div class="row" style="height:auto;">
     <div class="col-md-8" style="height:auto;width:75%;float:left;">
       <p style="color:#E47911;font-size:20px;margin-left:180px;"> Choose a Shipping address </p>
       <div style="height:auto;margin-left:180px;text-transform: capitalize;">

           <?php while($row = $result->fetch_assoc()){ ?>
             <input type="radio" name="ship_add" value="<?php echo $row["add_id"]?>" style="font-size:20px;font-weight:bold;margin:20px;" checked> <?php echo $row["fname"]," ",$row["lname"],", ",$row["add1"],", ",$row["city"],", ",$row["state"],", ",$row["zip"],", ",$row["phone"];?><br>
           <?php } ?>

       </div>
       <hr style="margin-left:180px;margin-right:40px;margin-top:20px;margin-bottom: 20px;">
       <?php
       include "db.php";
       $sql = "SELECT c.credit_num,c.name_on_card,c.exp_month,c.exp_year,c.credit_id from credit c,user_card u where c.credit_id=u.creditid and u.userid=$userid";
       $result = $conn->query($sql);
       ?>
       <p style="color:#E47911;font-size:20px;margin-left:180px;"> Payment method </p>
       <div style="height:auto;margin-left:180px;text-transform: capitalize;">

           <?php while($row = $result->fetch_assoc()){ ?>
             <input type="radio" name="card_det" value="<?php echo $row["credit_id"]?>" style="font-size:20px;font-weight:bold;margin:20px;" checked> <?php echo "Card ending in: ",substr($row["credit_num"],-4),"  Name on card:  ",$row["name_on_card"]," Expires on: ",$row["exp_month"],"/",$row["exp_year"];?><br>
           <?php } ?>

       </div>
       <hr style="margin-left:180px;margin-right:40px;margin-top:20px;margin-bottom: 20px;">
       <?php
       include "db.php";
       $sql = "SELECT min(p.prod_img) as prod_img,c.quant,c.prodid,d.prod_title,d.prod_price from prod_photos p,product d,(Select count(prodid) as quant,prodid From cart where userid=$userid group by prodid ) c where c.prodid=p.prod_id and p.prod_id=d.prod_id group by c.prodid;";
       $result = $conn->query($sql);
       ?>
       <p style="color:#E47911;font-size:20px;margin-left:180px;"> Items and Shipping </p>
       <div style="height:auto;margin-left:180px;text-transform: capitalize;">

           <?php while($row = $result->fetch_assoc()){ ?>
             <div style="border:0.5px solid grey; margin-bottom:10px;">
               <p style="color:green;margin-left:20px;margin-bottom:0px;">Guaranteed delivery date:<?php echo date('M.d, Y',strtotime('+2 days')) ?></p>
               <img class="photo" src="product/<?php echo $row["prod_img"] ?>" alt="Image not found" width="30px" height="auto" style="border:1px solid; border-color:#EBE8E8;padding:5px;margin:0px;margin-left:5px;">
               <p style="margin:30px;display:inline-block;width:150px;"><?php echo $row["prod_title"] ?><br><br><?php echo "$ ",$row["prod_price"]; ?><br><br>
                 <button style="display:inline-block;font-size:14px;"> - </button><?php echo " Quant: ",$row["quant"]," ";?><button style="display:inline-block;font-size:14px;"> + </button></p>
             </div>
           <?php } ?>

       </div>
     </div>
     <div class="col-md-4" style="height:auto;width:20%;border:1px solid grey;margin: 25px;float:left">
       <input type="submit" name="checkout"  style="font-size:18px;background:orange;border-color:#E47911;text-align:center;margin:15px 20px 5px 60px" value="Place your order">
       <hr style="margin-left:20px;margin-right:40px;margin-top:20px;margin-bottom: 20px;">
       <p style="font-size:20px; font-weight:bold;margin:15px 0px 25px 20px;">Order Summary</p>
       <p style="font-size:14px;font-weight:500;margin-left:20px;margin-right:100px;display:inline">items(<?php echo $items?>):</p>
       <p style="display: inline;font-size:14px;font-weight:500;"> $ <?php echo $tot?><br></p>
       <p style="font-size:14px;font-weight:500;margin-left:20px;margin-right:38px;display:inline">Shipping & handling:</p>
       <p style="font-size:14px;font-weight:500;margin-left:20px;display:inline">$ 0.00<br></p>
       <hr style="margin-left:160px;margin-right:40px;margin-top:20px;margin-bottom: 20px;">
       <p style="font-size:14px;font-weight:500;margin-left:20px;margin-right:68px;display:inline">Total before tax:</p>
       <p style="display: inline;font-size:14px;font-weight:500;"> $ <?php echo $tot?><br></p>
       <p style="font-size:14px;font-weight:500;margin-left:20px;margin-right:92px;display:inline">Extimated tax:</p>
       <p style="display: inline;font-size:14px;font-weight:500;"> $ <?php echo round(($tot*0.02),2)?><br></p>
       <hr style="margin-left:20px;margin-right:40px;margin-top:20px;margin-bottom: 20px;">
       <p style="font-size:20px; font-weight:bold;margin-left:20px;margin-right:60px;color:brown;display:inline">Order total:</p>
       <p style="display: inline;font-size:14px;font-weight:500;display:inline"> $ <?php echo $tot+round(($tot*0.02),2)?><br></p>
       <hr style="margin-left:20px;margin-right:40px;margin-top:20px;margin-bottom: 20px;">
     </div>
   </div>
 </div>
        </form>
