<?php
session_start();
$items=isset($_GET['items']) ? $_GET['items'] : '';
$userid=$_SESSION["user_id"];
?>
<?php
include "db.php";
$sql = "SELECT m.fname,m.lname,u.add1,u.city,u.state,u.zip,u.phone from user m, user_add u where m.user_id=u.userid and m.user_id=$userid";
$result = $conn->query($sql);
?>
<div class="container" style="height:100px;background:#E7E8E9;border-color: grey;margin:0px;">
   <div class="row" style="border:1px solid;height:100px;">
     <div class="col-md-12" style="margin:0px;height:60px;padding:20px;width:auto;border:1px solid;">
       <font style="font-style:normal; margin-left: 150px;font-size: 33px;font-family: serif;text-shadow:2px 2px #E47911;border:1px solid;padding:20px;"> Online Store </font>
       <p style="display:inline;font-size:30px;text-align:center;border:1px solid;margin-left: 250px;padding:20px;">Checkout (<?php echo $items?>)</p>
    </div>
   </div>
   <div class="row" style="border:1px solid;height:auto;">
     <div class="col-md-8" style="height:800px;width:75%;border:1px solid;display:inline;">
       <p style="color:#E47911;font-size:20px;margin-left:180px;"> Choose a Shipping address </p>
       <div style="border:1px solid grey;height:100%;margin-left:180px;text-transform: capitalize;">
         <form action="">
           <?php while($row = $result->fetch_assoc()){ ?>
             <input type="radio" name="ship_add" value="male" style="font-size:20px;font-weight:bold;margin:20px;"> <?php echo $row["fname"]," ",$row["lname"],", ",$row["add1"],", ",$row["city"],", ",$row["state"],", ",$row["zip"],", ",$row["phone"];?><br>
           <?php } ?>
         </form>
       </div>
     </div>
     <div class="col-md-4" style="height:800px;width:25%;border:1px solid;border-color:red;">
     </div>
   </div>
 </div>
