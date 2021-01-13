<?php
include "header.php";
include "body.php";
$cat=$_GET['p'];
?>

<div class="main">
  <?php
  include "db.php";
  $sql = "SELECT p.prod_id,p.prod_title,p.prod_price,p.prod_rev,min(i.prod_img) as prod_img  from prod_photos i  join product p on p.prod_id=i.prod_id  where p.prod_cat=$cat group by p.prod_id;";
  $result = $conn->query($sql);
  ?>
  <?php
  if($result->num_rows > 0)
  { ?>

      <?php while($row = $result->fetch_assoc()){ ?>
        <div class="gallery">
          <a target="_blank" href="prod_page.php?p=<?php echo $row["prod_img"] ?>&pid=<?php echo $row["prod_id"] ?>">
            <img src="product/<?php echo $row["prod_img"] ?>" alt="Image doesn't exist"  style="max-width:100%;">
            <div class="desc"><?php echo $row["prod_title"] ?></div>
          </a>
            <div class="price">$ <?php echo $row["prod_price"] ?></div>
            <?php $rev=$row["prod_rev"]; $norev=5-$rev; ?>
            <?php while($rev){?><span class="fa fa-star checked" ></span> <?php $rev--; }?>
            <?php while($norev){?><span class="fa fa-star unchecked"></span> <?php $norev--; }?>

        </div>
      <?php } ?>
<?php  } ?>
</div>
