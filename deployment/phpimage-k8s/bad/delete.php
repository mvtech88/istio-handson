<?php
  ob_start();
  include './db.php';
  $id = $_GET['id'];
  $sql = "delete from dummy where id=$id";
  $conn->query($sql);
  $conn->close();
  header("location: index.php");
?>
