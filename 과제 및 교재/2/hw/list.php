<?php
// db 사용
include "dbtest.php";

$query = "SELECT * FROM $mysql_table ORDER BY priority DESC";
$result = $connect->query($query) or die($this->_connect->error);
?>





<html>
  <head>
    <title>글 목록</title>
  </head>
  <body>
    <table width=600 border=0>
      <tr align=center height=20 bgcolor=#88888>
        <td>
          <p>번호</p>
        </td>
        <td>
          <p>제목</p>
        </td>
      </tr>

      <?php
      // db의 모든 글들에 대해서 while
      while($row = $result->fetch_array())
      {
      ?>

      <tr>
        <td><!--id-->
          <?php
          // 글 번호
          echo $row['id'];
          ?>
        </td>
        <td><!--title-->
          <?php
            // 답글인 경우 depth * 5 만큼 들여쓰기
            if ($row['priority'] > 0)
              echo "<img height=1 width=". $row['depth'] * 5 . ">";
          ?>
          <!--글의 제목과 링크-->
          <a href="read.php?id=<?=$row['id']?>">
          <?=strip_tags($row['title']);?></a>
        </td>
      </tr>

      <?php
      }
      $connect->close();
      ?>

    </table>

    <a href=write.php>글쓰기</a>
  </body>
</html>
