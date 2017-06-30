<?php
// db호출
include "dbtest.php";

$as = $_POST['content'];
// 몇번 째 답글인지
$asdasd = $_POST['depth'];

// 답글 달고자 하는 글의 바로 이전 글
$pre_priority = $_POST['priority'] - 100;
// 이미 달려있는 답글에 대해서 위치 조정
$query = "UPDATE $mysql_table SET priority = priority - 1 WHERE priority > $pre_priority and priority < $_POST['priority']";

if ($connect->query($query) === TRUE) {
    echo "Update successfully";
} else {
    echo "Error: " . $query . "<br>" . $connect->error;
}

// 답글 insert
$query = "INSERT INTO $mysql_table (priority, depth, title, content) VALUES ($_POST['priority']-1 , $depth + 1 , '$_POST[title]' , '$_POST[content]')";

if ($connect->query($query) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $query . "<br>" . $connect->error;
}

$connect->close();

header("Location: http://localhost/hw/list.php");
?>
