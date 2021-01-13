<?php
error_reporting(0);
session_start();
if(!isset($_SESSION["user_id"]))
{
  header('Location: login.php');
}
$prodid=isset($_GET['prodidr']) ? $_GET['prodidr'] : '';
?>
<?php
include "db.php";
$sql = "INSERT INTO cart VALUES($_SESSION[cartid],'$prodid',$_SESSION[user_id])";
$result = $conn->query($sql);
include "header.php";
?>
<div class="container-fluid" style="padding:15px; height:auto;">
  <div class="row" style="padding:15px;">
    <div class="col-md-8" style="margin:25px 150px 30px 150px;text-align:justify;height:100px;width:1100px;border:1px solid;border-color: grey;background-color:#E7E8E9;">
      <div class="row">
        <div class="col-md-3" style="border-right: 1px solid;border-color: grey;height:100px">
          <i class="fas fa-check" style="color:green;font-size:30px;margin-top: 30px;text-align:right;"></i><p style="display: inline;color:green;text-align:right;padding-top: 30px;font-size:20px;">   Added to Cart</p>
        </div>
        <div class="col-md-3" style="height:100px;">
          <?php
          include "db.php";
          $sql = "SELECT count(cart_id) as items from cart where userid=$_SESSION[user_id] group by userid;";
          $result = $conn->query($sql);
          ?>
          <?php while($row = $result->fetch_assoc()){ ?>
          <p style="text-align:left;margin-top:30px;font-size:20px;display:inline-block;">   Cart subtotal ( <?php echo $row["items"];?> ):</p>
          <?php } ?>
          <?php
          include "db.php";
          $sql = "SELECT sum(p.prod_price) as subtot from product p,cart c where p.prod_id=c.prodid and c.userid=$_SESSION[user_id] group by c.userid;";
          $result = $conn->query($sql);
          ?>
          <?php while($row = $result->fetch_assoc()){ ?>
          <p style="margin-top:30px;display:inline-block;font-size:20px;color: #B81F1F;"> $ <?php echo $row["subtot"];$tot=$row["subtot"]; ?></p>
          <?php } ?>
        </div>
        <div class="col-md-3" style="border: 1px solid;border-color: grey;height:100px;">
          <a href="checkout.php?amt=<?php echo $tot ?>&items=<?php echo $_SESSION['items']?>" style="text-decoration:none;">
          <button type="submit" name="checkout" class="btn btn-default" style="margin-top: 30px;font-size:18px;background:orange;border-color:#E47911;"> Proceed to checkout </button>
          </a>
        </div>
        <div class="col-md-3" style="border: 1px solid;border-color: grey;height:100px;">
          <a href="cart_sum.php?cart_icon=1" style="text-decoration:none;">
          <button type="submit" name="checkout" class="btn btn-default" style="margin-top: 30px;font-size:18px;background:orange;border-color:#E47911;"> Cart </button>
          </a>
        </div>
      </div>

    </div>
  </div>
</div>
