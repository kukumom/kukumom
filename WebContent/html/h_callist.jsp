<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <!doctype html>
<html lang='ko'>

<head>
    <meta charset="utf-8" />
    <title>꾸꾸맘</title>
    <link rel="stylesheet" type="text/css" href="../css/h_style.css"> </head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="http://malsup.github.com/jquery.cycle2.js"></script>

<body>
    <center>
        <div class="main">
            <header>
                <p style="text-align:center;"> <img src="../image/logo.png" width="180" height="150" /> </p>
            </header>
            <div class='menu'>
                <ul>
                    <li> <a href="h_home.jsp">Home</a> </li>
                    <li class='active sub'> <a href='#'>MY PAGE</a>
                        <ul>
                            <li class='sub'> <a href="h_memmod.jsp">병원정보 </a> </li>
                        </ul>
                    </li>
                    <li> <a href="h_gardian_rgst.jsp">환자관리</a>

                    </li>
                    <li> <a href="#">일정관리</a> </li>
                    <li class='last'><a href="h_qnareplylist.jsp">1:1문의 답변</a></li>
                </ul>
            </div>
        </div>
        <div class="cont">
            <!-- <div class="cont-left">
				입력
				<table>
					<tr>
						<th>ID</th>
						<td><input type="text" style="width: 100px;" /></td>
						<td rowspan="2"><a href="#" class="logButton">Login</a></td>
					</tr>
					<tr>
						<th>PW</th>
						<td><input type="password" style="width: 100px;" /></td>
					</tr>
				</table>
				버튼
				<table>
					<tr>
						<td><a href="u_memcont.jsp" class="findButton">회원가입</a></td>
						<td><a href="u_findid.jsp" class="findButton">ID찾기</a></td>
						<td><a href="u_findpass.jsp" class="findButton">PW찾기</a></td>
				</table>
			</div>-->
            <div class="cont-right">
                <section class="cont">
            <div class="list">
                <div align="center" style=" padding-top:1%;">
                    <h3>2016-04-03</h3> </div>
                <!--테이블-->
                <table cellspacing="0" cellpadding="0" border="1" align="center">
                    <colgroup>
                        <col width="8%" />
                        <col width="15%" />
                        <col width="10%" />
                        <col width="67%" /> </colgroup>
                    <thead>
                        <tr>
                            <th>선택</th>
                            <th>시간</th>
                            <th>분류</th>
                            <th>내용</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <input type="radio" name="schedule">
                            </td>
                            <td>10:00 AM</td>
                            <td>병원</td>
                            <td><a href="#">병원 건축기념일 </a></td>
                        </tr>
                        <tr>
                            <td>
                                <input type="radio" name="schedule">
                            </td>
                            <td>11:00 AM</td>
                            <td>기타</td>
                            <td><a href="#">고양이 사료 주문</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <br>
            <div align="center">
                <input type="button" value="삭제" />
                <input type="button" value="추가" />
            </div>
        </section>
            </div>
        </div>
    </center>
    <footer> </footer>
</body>

</html>
