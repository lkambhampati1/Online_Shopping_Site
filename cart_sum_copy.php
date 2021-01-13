<?php
error_reporting(0);
session_start();
$icon=isset($_GET['cart_icon']) ? $_GET['cart_icon'] : 0;
if($icon)
{
include "header.php";
}

$userid=$_SESSION["user_id"];
?>
<?php
include "db.php";
$sql = "SELECT sum(p.prod_price) as subtot from product p,cart c where p.prod_id=c.prodid and c.userid=$_SESSION[user_id] group by c.userid;";
$result = $conn->query($sql);
?>
<?php while($row = $result->fetch_assoc()){
  $tot=$row["subtot"];
}
?>
<p style="font-size:25px; font-weight:bold;margin:15px 0px 25px 150px;display:inline;"> Shopping Cart </p>
<a href="checkout.php?amt=<?php echo $tot ?>&items=<?php echo $_SESSION['items']?>" style="text-decoration:none;">
  <button type="submit" name="checkout" class="btn btn-default" style="margin-top: 30px;margin-left: 700px;font-size:18px;background:orange;border-color:#E47911;display:inline;"> Proceed to checkout </button>
</a>
<hr style="margin-left:150px;margin-right:150px;margin-top:20px;margin-bottom: 20px;">
<?php
include "db.php";
$sql = "SELECT min(p.prod_img) as prod_img,c.quant,c.prodid,d.prod_title,d.prod_price from prod_photos p,product d,(Select count(prodid) as quant,prodid From cart where userid=$userid group by prodid ) c where c.prodid=p.prod_id and p.prod_id=d.prod_id group by c.prodid;";
$result = $conn->query($sql);
?>
  <div class="container" style="height:auto;margin:0px;">
    <div class="row" style="height:auto;">
    <?php while($row = $result->fetch_assoc()){ ?>
      <div style="border:0.5px solid grey; margin:10px 150px 5px 150px;">
        <img class="photo" src="product/<?php echo $row["prod_img"] ?>" alt="Image not found" style="border:1px solid; border-color:#EBE8E8;padding:5px;margin:50px 50px 50px 10px;height:100px;max-width:100px;">
        <p style="margin:30px;margin-left: 100px;display:inline-block;width:150px;"><?php echo $row["prod_title"] ?><br><br><?php echo "$ ",$row["prod_price"]; ?><br><br>
          <button style="display:inline-block;font-size:14px;"> - </button><?php echo " Quant: ",$row["quant"]," ";?><button style="display:inline-block;font-size:14px;"> + </button></p>
          <form method="post" action="" style="display:inline-block;">
            <p>delete</p><input type="submit" name="delete" value="<?php echo $row["prodid"] ?>" style="display:inline-block;color:transparent;">
          </form>
      </div>
    <?php } ?>
    <?php
    if(isset($_POST['delete'])){
      echo "deleted";
      include "db.php";
      $sql = "delete from cart where prodid='$_POST[delete]'";
      $result = $conn->query($sql);
      echo "<meta http-equiv='refresh' content='0'>";
    }
    ?>
  </div>
</div>
