<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>일정 수정하기</title>
    <meta name="description" content="An interactive getting started guide for Brackets.">
     </head>

<body>
    <div class="wrap">
        <nav class="menu"> </nav>
        <section class="cont">
            <div align="center" style=" padding-top:4.3%;">
                <h3>2016-07-07</h3> </div>
            <table border="1" align="center">
                <tr>
                    <th>기간 선택</th>
                    <td class="left">
                        <input type="date">~
                        <input type="date"> </td>
                </tr>
                <tr>
                    <th>시간</th>
                    <td class="left">
                        <input type="time"> </td>
                </tr>
                <tr>
                    <th>구분</th>
                    <td class="left">
                        <input type="radio" name="schediv">진료
                        <input type="radio" name="schediv">병원
                        <input type="radio" name="schediv">기타</td>
                </tr>
                <tr>
                    <th>내용</th>
                    <td class="left">
                        <textarea cols="100" rows="5"></textarea>
                    </td>
                </tr>
                <tr>
                    <th>알림</th>
                    <td class="left">
                        <select>
                            <option>알림없음</option>
                            <option>10분전</option>
                            <option>1시간전</option>
                            <option>하루전</option>
                        </select>
                    </td>
                </tr>
            </table>
            <p class="btn" align="center">
                <input type="button" value="수정">
                <input type="button" value="취소">
            </p>
        </section>
    </div>
</body>

</html>