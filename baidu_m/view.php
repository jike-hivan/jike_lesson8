<?php
  header("Content-type:application/json; charset=utf-8");
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


  $sql = "SELECT newsid, newstitle, newsimg, newscontent, addtime FROM news";
  $result = $conn->query($sql);
  
  $arr = array();
  if ($result->num_rows > 0) {
    // 输出每行数据
    while($row = $result->fetch_assoc()) {
        array_push($arr, array("newsid"=>$row["newsid"],"newstitle"=>$row["newstitle"], "newsimg"=>$row["newsimg"], "newscontent"=>$row["newscontent"], "addtime"=>$row["addtime"]));
    }
    $list = array("errcode"=>0, "json_list"=>$arr);
    echo json_encode($list);
  } else {
    echo "0 results";
  } 
  
  $conn->close();
  $mysqli->close();
?>