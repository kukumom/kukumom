<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>꾸꾸맘</title>
<link rel="stylesheet" type="text/css" href="../css/u_style.css">
<link rel="stylesheet" type="text/css" href="../css/table.css">
</head>
</head>
<body>
	<center>
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
			<!--  <div class="cont-left">
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
			</div> -->
			<div class="cont-right">
				<div align="center" style="padding-top: 4.3%;">
					<h3>2016-07-07</h3>
				</div>
				<table class="table1">
					<tr>
						<th>기간 선택</th>
						<td class="left"><input type="date">~ <input
							type="date"></td>
					</tr>
					<tr>
						<th>시간</th>
						<td class="left"><input type="time"></td>
					</tr>
					<tr>
						<th>구분</th>
						<td class="left"><input type="radio" name="schediv">진료
							<input type="radio" name="schediv">미용 <input type="radio"
							name="schediv">기타</td>
					</tr>
					<tr>
						<th>내용</th>
						<td class="left"><textarea cols="100" rows="5"></textarea></td>
					</tr>
					<tr>
						<th>알림</th>
						<td class="left"><select>
								<option>알림없음</option>
								<option>10분전</option>
								<option>1시간전</option>
								<option>하루전</option>
						</select></td>
					</tr>
				</table>
				<p class="btn" align="center">
					<a href="#" class="logButton">수정</a> <a href="#" class="logButton">취소</a>
				</p>
			</div>
		</div>
	</center>
	<footer> </footer>
</body>
</html>