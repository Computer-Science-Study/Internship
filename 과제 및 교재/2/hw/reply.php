<?php
// db호출
include "dbtest.php";

$query = "SELECT * FROM $mysql_table WHERE id=$_GET[id]";
$result = $connect->query($query) or die($this->_connect->error);
$id = $_GET['id'];


while($row = $result->fetch_array())
{
  global $title, $row;
	$title = "RE:".  $row['title'];

?>


<html>
  <head>
    <title>글쓰기</title>
  </head>
  <body>
    <form action="replyInsert.php" method="post">

    <table width=600 border=0>
      <INPUT type=hidden name=depth value=<?=$row['depth']?>>
      <INPUT type=hidden name=priority value=<?=$row['priority']?>>

      <tr>
        <td align=center height=20 bgcolor=#88888>
          <p>글쓰기</p>
        </td>
      </tr>
      <tr>
        <td>
          <table>
            <tr>
              <td align=left>제목</td>
              <td align=left>
                <?=$title?>
              </td>
            </tr>

            <tr>
              <td align=left>내용</td>
              <td align=left>
                <TEXTAREA name=content cols=60 row=15></TEXTAREA>
              </td>
            </tr>

            <tr>
              <td>
            <INPUT type=submit value="쓰기">
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>

  <a href=list.php>처음으로</a>
  </body>

  <?php
  }
  $connect->close();
  ?>
</html>
