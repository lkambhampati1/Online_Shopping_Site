<title>Online Shopping</title>
<?php
error_reporting(0);
session_start();
$userid=$_SESSION["user_id"];
$chang_ad=isset($_GET['adad']) ? $_GET['adad'] : 0;
?>

<form action="tryadd.php?r=<?php echo $chang_ad;?>" method="post">
  <div class="container-fluid">
    <label for="address">Address line 1</label>
    <input type="text"  id="addl1" placeholder="" name="addl1" style="margin:10px;width:200px;"><br>
    <label>
      <label for="address">City</label>
      <input type="text" id="city1" placeholder="" name="city1" style="margin:10px;width:200px;"><br>
      <label>
        <label for="address">State</label>
        <input type="text"  id="state1" placeholder="" name="state1" style="margin:10px;width:200px;"><br>
        <label>
          <label for="address">Zip</label>
          <input type="text"  id="zip1" placeholder="" name="zip1" style="margin:10px;width:200px;"><br>
          <label>
            <label for="address">Phone</label>
            <input type="text" id="phone1" placeholder="" name="phone1" style="margin:10px;width:200px;"><br>
            <label>
  </div>
  <input type="submit" name="save_add" class="btn btn-default" style="display: inline;font-size:16px;background:orange;border-color:#E47911;text-align:center;margin:10px 25% 10px 25%;">
</form>
