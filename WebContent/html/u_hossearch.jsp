
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>병원서비스-검색</title>
<link rel="stylesheet" type="text/css" href="../css/button.css">
<link rel="stylesheet" type="text/css" href="../css/u_style.css">
<link rel="stylesheet" type="text/css" href="../css/diary.css">
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
							<li class='sub'><a href="u_hossearch.jsp">병원검색</a></li>
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
			</div> -->
			<div class="cont-right" style="font-size:17px;">
				<div class="wrap effect8">
					<h2>병원 검색</h2>
					<br> <br>
					<p>
						<!-- <input type="checkbox" name="kind"> --> 병원명 :
						<textarea name="text" rows="1" cols="26"></textarea>
					</p>
					<p>
						<!-- <input type="checkbox" id="local" name="kind"> --> 지역별 : <select
							name="city">
							
					<select> 		
							<option value="1">서 울 특 별 시</option>
							<option value="2">경 기 도</option>
							<option value="3">인 천 광 역 시</option>
							<option value="4">강 원 도</option>
							<option value="5">제 주 도</option>
						
						<%if (local.value==1){
						      value='01';
						      value='02';		  
						}%>
						
							<option value="01">성 동 구</option>
							<option value="02">중 구</option>
							<option value="03">중 랑 구</option>
							<option value="04">동 대 문 구</option>
							<option value="05">은 평 구</option>
						</select>
					</p>
					<br>
					<p>
						<a href="u_hossearchlist.jsp"><input type="button"
							name="search" class="btn1" value="검  색  하  기"></a>
					</p>
				</div>
			</div>
			</div>
</body>
</html>
