<html>
  <head>
    <title>글쓰기</title>
  </head>

  <body>
    <form action="insert.php" method="post">
    <table width=600 border=0>
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
                <INPUT type=text name=title size=20>
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
</html>
