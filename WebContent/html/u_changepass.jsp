<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>꾸꾸맘</title>
<link rel="stylesheet" type="text/css" href="../css/u_style.css">
<link rel="stylesheet" type="text/css" href="../css/button.css">
</head>
<body>
	<center>
		<div class="container" align="center">
		 <div id = "topbar"></div>
	<div id = "header">	
     <img src="..\image\hlogo.png" id="logo" width="310" height="130">
     <div class='menu'>
	 <ul>
	  <li><a href="u_home.jsp">Home</a></li>
	  <li class='active sub'><a href='#'>MY PAGE</a>
		<ul>
		 <li class='sub'><a href="u_memmod.jsp">내정보</a></li>
		 <li class='sub'><a href="u_petlist.jsp">애완동물 관리</a></li>
		 <li class='sub'><a href="u_memhos.jsp">MY병원</a></li>
	 	</ul>
	  </li>
	  <li class='active sub'><a href="'#'">병원서비스</a>
		<ul>
		 <li class='sub'><a href="u_hossearch.jsp">병원검색</a></li>
		 <li class='sub'><a href="u_Examlist.jsp">방문내역조회</a></li>
		 <li class="sub"><a href="u_qnaquary.jsp">1:1 문의하기</a></li>
		 <li class='sub'><a href="u_qnalist.jsp">1:1 문의내역</a></li>
		</ul>
	  </li>
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
				<div class="" align="center">
					<table>
						<br>
						<tr>
							<th>새 비밀번호</th>
							<td><input type="text" name="user_name" /></td>
						</tr>
						<tr>
							<th>새 비밀번호 확인</th>
							<td><input type="text" name="user_name" /></td>
						</tr>

					</table>
					<br><br>
					<p>

						<a href="#" class="btn1">확인</a> <a href="#" class="btn1">취소</a>
					</p>
				</div>
			</div>
		</div>
		</div>
	</center>
	<div id="footer">Blog is powered by <a href="#"	onclick="window.open(this.href); 
					return false" title="Daum 바로가기" style="text-decoration: none">건강하조</a>
					 / Designed by <a href="#" title="Tistory 바로가기" style="text-decoration: none">꾸꾸맘</a>
	</div>
</body>
</html>