<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Find your Code</title>
</head>

<body>
    <div>
        <center>
            <h2><p>병워코드 찾기</p></h2> </center>
    </div>
    <div class="" align="center">
        <table>
            <br>
            <tr>
                <th>병원이름 </th>
                <td>
                    <input type="text" name="user_name" /> </td>
            </tr>
            <tr>
                <th>대표 번호 </th>
                <td>
                    <select>
                        <option>010</option>
                        <option>02</option>
                    </select>-
                    <input type="text" maxlength="4" style="width:45px;" />-
                    <input type="text" maxlength="4" style="width:45px;" /> </td>
            </tr>
        </table>
        <p>
            <input type="submit" name="submit" value="찾기" />
            <input type="reset" name="reset" value="취소" /> </p>
    </div>
</body>

</html>