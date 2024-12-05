<?php
  $conn = new mysqli("mysql.demo-webapp", "dummy", "dummy", "dummy");

  if(!$conn){
      http_response_code(500);
      die('error connecting to database');
  }
?>

