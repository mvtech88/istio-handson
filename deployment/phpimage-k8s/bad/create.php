<?php
  ob_start();
  include './db.php';
  if (!$conn) {
    http_response_code(500);
    exit();
  }
  $name = $_POST["name"];
  $score = $_POST["score"];
  $sql = "insert into dummy (name, score) values ('$name', '$score')";
  $conn->query($sql);
  $conn->close();
  header("location: index.php");
?>
