<?php
session_start();
unset($_SESSION["user_id"]);
unset($_SESSION["cartid"]);
unset($_SESSION["items"]);
header('Location: index.php'); // default page
?>
