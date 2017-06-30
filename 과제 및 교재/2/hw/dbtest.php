<?php
/**
 * mysqli 연결
 * db를 사용하는 php 파일에 include
*/

//설정
$mysql_hostname = 'localhost';
$mysql_username = 'root';
$mysql_password = 'giwook741';
$mysql_database = 'hw';
$mysql_port = '3306';
$mysql_charset = 'utf8';
$mysql_table = 'writing';


//DB 연결
$connect = new mysqli($mysql_hostname, $mysql_username, $mysql_password, $mysql_database, $mysql_port);

if($connect->connect_errno){
	echo '[연결실패] : '.$connect->connect_error.'<br>';
}

//문자셋 지정
if(! $connect->set_charset($mysql_charset))// (php >= 5.0.5)
{
	echo '[문자열변경실패] : '.$connect->connect_error;
}

?>
