<?php
  ob_start();
  include './db.php';
  if (!$conn) {
    http_response_code(500);
    exit();
  }
  $id = $_POST['id'];
  $name = $_POST['name'];
  $score = $_POST['score'];
  $sql = "update dummy set name='$name', score='$score' where id=$id";
  $result = $conn->query($sql);
  $conn->close();
  header("location: index.php");
?>
