<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang='ko'>

<head>
<meta charset="utf-8" />
<title>꾸꾸맘</title>
<link rel="stylesheet" type="text/css" href="../css/u_style.css">
</head>
<link rel="stylesheet" type="text/css" href="../css/table.css?ver=1">
<link rel="stylesheet" type="text/css" href="../css/button.css">


<body>
	<div class="container" align="center">
		<div class="topWrap">
		<div class="login" align="right">
				<a href="u_memcont.jsp" class="findButton">회원가입</a>
				<a href="u_findid.jsp" class="findButton">ID찾기</a>
				<a href="u_findpass.jsp" class="findButton">PW찾기</a>
				<span >ID
				<input type="text" style="width: 100px;" /></span>
				<span  >PW
				<input type="password" style="width: 100px;" /></span>
				<a href="#" class="logButton">LOGIN</a>
			</div>
			<div class="logo">
				<p style="display: inline;">
					<img  src="../image/logo.png" width="180" height="150" />
				</p>
			</div>
			
			
			<div class='menu'>
				<ul>
					<li><a href="u_home.jsp">Home</a></li>
					<li class='active sub'><a href='#'>MY PAGE</a>
						<ul>
							<li class='sub'><a href="u_memmod.jsp">내정보</a></li>
							<li class='sub'><a href="u_petlist.jsp">애완동물 관리</a></li>
							<li class='sub'><a href="u_memhos.jsp">MY병원</a></li>
						</ul></li>
					<li class='active sub'><a href="'#'">병원서비스</a>
						<ul>
							<li class='sub'><a href="U_hossearch.jsp">병원검색</a></li>
							<li class='sub'><a href="u_Examlist.jsp">진료내역조회</a></li>
							<li class="sub"><a href="u_qnaquary.jsp">1:1 문의하기</a></li>
							<li class='sub'><a href="u_qnalist.jsp">1:1 문의내역</a></li>
						</ul></li>
					<li><a href="u_calendar.jsp">일정관리</a></li>
					<li class='last'><a href="u_diarylist.jsp">성장일기</a></li>
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
				<p>
					<select name="hoschoice">
						<option value="petname">병원선택</option>
						<option value="text">내용</option>
					</select> <select name="petchoice">
						<option value="petname">펫선택</option>
						<option value="text">내용</option>
					</select>
				</p>
				<table border style="border-collapse: collapse" class="table1">
					<thead>
						<tr>
							<th width=10%>선택</th>
							<th width=15%>날짜</th>
							<th width=20%>병원명</th>
							<th width=10%>애완명</th>
							<th width=40%>내용</th>
						</tr>
					</thead>

					<tbody>
						<tr>

							<td><input type="checkbox" name="examlist"></td>
							<td>2016.08.30</td>
							<td>그랜드동물병원</td>
							<td>꾸꾸</td>
							<td>경과체크</td>
						</tr>
						<tr>

							<td><input type="checkbox" name="examlist"></td>
							<td>2016.07.30</td>
							<td>그랜드동물병원</td>
							<td>꾸꾸</td>
							<td>건강검진</td>
						</tr>
						<tr>

							<td><input type="checkbox" name="examlist"></td>
							<td>2016.06.01</td>
							<td>소망동물병원</td>
							<td>두유</td>
							<td>정기검진2차</td>
						</tr>
						<tr>

							<td><input type="checkbox" name="examlist"></td>
							<td>2016.03.01</td>
							<td>소망동물병원</td>
							<td>도치</td>
							<td>정기검진1차</td>
						</tr>
						<tr>

							<td><input type="checkbox" name="examlist"></td>
							<td>2016.01.30</td>
							<td>행복동물병원</td>
							<td>꾸꾸</td>
							<td>예방접종1차</td>
						</tr>
					</tbody>


				</table>

				<p>
					<input type="submit" name="save" class="btn1" value="  삭  제  ">

				</p>
			</div>
		</div>
	</center>
	<footer> </footer>
	</div>
</body>

</html>
