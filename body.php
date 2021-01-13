<?php
include "db.php";
$sql = "SELECT cat_name,cat_id FROM category";
$result = $conn->query($sql);

?>

<?php
if ($result->num_rows >0)
{ ?>

    <div class="sidenav">
      <a href="index.php">Home</a>
      <?php while($row = $result->fetch_assoc()){ ?>
        <a href="product.php?p=<?php echo $row["cat_id"] ?>"><?php echo $row["cat_name"] ?> </a>
      <?php } ?>
    </div>

<?php } ?>
