<?php
  // db 연결
  include "dbtest.php";

  // 해당 번호의 글을 가져옴
  $query = "SELECT * FROM $mysql_table WHERE id=$_GET[id]";
  $result = $connect->query($query) or die($this->_connect->error);
  $id = $_GET['id'];
?>


 <html>
   <head>
     <title>글</title>
   </head>

   <body>
     <form action="insert.php" method="post">

     <table width=600 border=0>
       <tr>
         <td align=center height=20 bgcolor=#88888>
           <p>글</p>
         </td>
       </tr>

       <tr>
         <td>

           <table>
            <?php
            while($row = $result->fetch_array())
            {
            ?>

               <tr>
                 <td align=left>제목</td>
                 <td width=240 align=center><?=$row['title']?></td>
               </tr>

               <tr>
                 <td align=left>내용</td>
                 <td width=240 align=center><?=$row['content']?></td>
               </tr>

            <?php
            }
            $connect->close();
            ?>

           </table>
         </td>
       </tr>
     </table>

     <a href=reply.php?id=<?=$id?>>답글 달기</a>
     <a href=list.php>처음으로</a>

    </body>
  </html>
