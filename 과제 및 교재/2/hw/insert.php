<?php
//  db 호출
include "dbtest.php";

// 최대 우선순위를 불러와서 새로운 글을 작성할 때 그 우선순위보다 100 증가시켜서 insert
$query = "SELECT max(priority) as preMax FROM $mysql_table";

$result = $connect->query($query) or die($this->_connect->error);

while($row = $result->fetch_array())
{
	$maxPriority =  $row['preMax'];
}

$maxPriority = $maxPriority + 100;

$query = "INSERT INTO $mysql_table (priority, depth, title, content) VALUES ($maxPriority , 0 , '$_POST[title]' , '$_POST[content]')";

if ($connect->query($query) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $query . "<br>" . $connect->error;
}

//db 연결 종료
$connect->close();

header("Location: http://localhost/hw/list.php");

?>
