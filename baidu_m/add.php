<?php
  // 定义数据库变量
  $servername = "localhost";
  $username = "root";
  $password = "root";
  $dbname = 'PHPlesson';

  // 创建连接
  $conn = new mysqli($servername, $username, $password, $dbname);

  // 定义变量
  $newstitle = $_REQUEST['newstitle'];
  $newsimg = $_REQUEST['newsimg'];
  $newscontent = $_REQUEST['newscontent'];
  $addtime = $_REQUEST['addtime'];

  // 检测连接
  if (!$conn) {
      die("Connection failed: " . mysqli_connect_error());
  } 

  $conn->query("SET NAMES utf8");

// 插入数据
  $sql = "INSERT INTO news (newstitle, newsimg, newscontent, addtime)
VALUES ('".$newstitle."','".$newsimg."','".$newscontent."','".$addtime."')";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

  $conn->close();
?>