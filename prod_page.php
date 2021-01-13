<?php
include "header.php";
$prod_img=isset($_GET['p']) ? $_GET['p'] : '';
$prodid=isset($_GET['pid']) ? $_GET['pid'] : '';
?>
<?php
include "db.php";
$sql = "SELECT prod_img from prod_photos where prod_id=\"$prodid\"";
$result = $conn->query($sql);
?>
<?php
if($result->num_rows > 0)
{ ?>
<div class="container-fluid" style="padding:15px; height:600px;">
  <div class="row" style="padding:15px;">
    <div class="col-md-4" style="padding:15px;height:600px;overflow:scroll;">
      <img class="photo" src="product/<?php echo $prod_img ?>" alt="Image not found" width="100%" height="auto">
    </div>
    <div class="col-md-2" style="padding:15px;height:600px;width:200px; overflow:scroll">
      <?php while($row = $result->fetch_assoc()){ ?>
        <img class="photo_col" src="product/<?php echo $row["prod_img"] ?>" alt="Image not found" width="125px" height="auto" style="border:1px solid; border-color:#EBE8E8;padding:5px;margin:5px;">
    <?php } ?>
    </div>
    <div class="col-md-6" style="overflow:scroll; border:1px solid; border-style: solid hidden;border-color: #EBE8E8;height:600px">
      <?php
      include "db.php";
      $sql = "SELECT prod_title,prod_desc,prod_price from product where prod_id=\"$prodid\"";
      $result = $conn->query($sql);
      ?>
      <?php while($row = $result->fetch_assoc()){ ?>
      <div class="title" style="margin: 0;padding: 15px;text-align: left;font-size: 25px;"><?php echo $row["prod_title"] ?>
      </div>
      <div class="prod_price" style="padding-left: 15px;text-align: justify;font-size: 19px;color: #B81F1F;">Price:$
        <?php echo $row["prod_price"] ?>
      </div>
      <div class="prod_desc" style="padding: 15px;text-align: justify;font-size: 14px;height: 100%;width:500px;white-space: pre-line;">
      <?php echo $row["prod_desc"] ?>
      <a href="cart.php?prodidr=<?php echo $prodid; $_SESSION["cartid"]= $_SESSION["cartid"]+1;?>">
        <button type="submit" name="cart" class="btn btn-default" style="width:250px;padding:10px;background-color:orange;border:1px solid;border-color:#E47911;display:inline;margin-top: 50px"><i class="fa fa-shopping-cart"></i> Add to Cart </button>
      </a>
      <a href="wish.php?prodidr=<?php echo $prodid;?>">
        <button type="submit" name="wish" class="btn btn-default" style="width:250px;margin-top: 10px;padding:10px;border:1px solid;background-color:#E7E8E9;display:inline;"><i class="fa fa-heart-o" aria-hidden="true"></i> Add to Wish list </button>
      </a>
      </div>
      <?php } ?>
    </div>
  </div>
  <div class="row" style="padding:15px;">
    <?php
    include "db.php";
    $sql = "SELECT r.user_id,r.reviews,u.fname,u.lname,p.prod_rev from review r,product p, user u where r.product_id=p.prod_id and p.prod_id='$prodid' and r.user_id=u.user_id;";
    $result = $conn->query($sql);
    ?>
    <p style="font-size:20px; font-weight:bold;margin:15px 25% 25px 5%;">Customer Reviews</p>
    <?php while($row = $result->fetch_assoc()){ ?>
     <table style="margin:10px 10% 10px 10%;">
       <tr>
         <td style="width:100%;height:auto;border:1px solid;border-color:white;">
           <p style="margin:10px 10px 10px 0px;font-weight:bold;"><?php echo $row["fname"]," ",$row["lname"]; ?></p>
         </td>
       </tr>
       <tr>
         <td style="width:100%;height:auto;border:1px solid;border-color:white;">
           <?php $rev=$row["prod_rev"]; $norev=5-$rev; ?>
           <?php while($rev){?><span class="fa fa-star checked" ></span> <?php $rev--; }?>
           <?php while($norev){?><span class="fa fa-star unchecked"></span> <?php $norev--; }?>
         </td>
       </tr>
       <tr>
         <td style="width:100%;height:auto;border:1px solid;border-color:white;">
           <p style="margin:10px;"><?php echo $row["reviews"]; ?></p>
         </td>
       </tr>
      </table>
      <?php } ?>
  </div>
</div>
<?php  } ?>
