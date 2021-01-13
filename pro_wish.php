<title>Online Shopping</title>
<?php
error_reporting(0);
session_start();
include "header.php";
$userid=$_SESSION["user_id"];
?>
<?php
include "db.php";
$sql = "SELECT p.prod_id,p.prod_title,p.prod_price,p.prod_rev,i.prod_img from  product p join wish w on p.prod_id=w.prodid join prod_photos i on p.prod_id=i.prod_id where w.userid=$userid group by p.prod_id";
$result = $conn->query($sql);
?>

 <p style="font-size:40px; font-weight:bold;margin:10px 10% 5px 10%;">Your List</p>
 <?php while($row = $result->fetch_assoc()){ ?>
  <table style="margin:10px 10% 10px 10%;">
    <tr>
      <td style="width:75%;height:100px;border:1px solid;border-color:white;">
        <a target="_blank" href="prod_page.php?p=<?php echo $row["prod_img"] ?>&pid=<?php echo $row["prod_id"] ?>" style="text-decoration:none;color:grey;">
        <img src="product/<?php echo $row["prod_img"] ?>" alt="Image not found" width="100px" height="100px" style="border:1px solid; border-color:#EBE8E8;padding:5px;margin:0px;margin-left:5px;">
        <p style="margin:30px;display:inline;width:150px;"><?php echo $row["prod_title"] ?><br><br><?php echo "$ ",$row["prod_price"]; ?><br><br>
        </a>
      </td>
    </tr>
     </table>
    <?php } ?>
