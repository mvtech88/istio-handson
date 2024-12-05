<?php
  ob_start();
  include './db.php';
  $name = $_POST["name"];
  $score = $_POST["score"];
  $sql = "insert into dummy (name, score) values ('$name', '$score')";
  $conn->query($sql);
  $conn->close();
  header("location: index.php");
?>
