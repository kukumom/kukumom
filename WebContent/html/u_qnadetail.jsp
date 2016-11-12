<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<title>보호자 문의 상세 조회</title>
<link rel="stylesheet" type="text/css" href="../css/table.css?ver=1">
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
				<div class="wrap effect8">
					<h2>문의 내역 상세보기</h2>
					<table border="3" class="table1">
						<thead>
							<tr>
								<th>제목</th>
								<td colspan="5">저희집 강아지가 아픈것 같아요ㅠㅠ</td>
							</tr>
							<tr>
								<th>작성자</th>
								<td>함연주</td>
								<th>애완동물</th>
								<td>꾸꾸</td>
								<th>날짜</th>
								<td>2016.07.09</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td colspan="6"><textarea name="text" rows="8" cols="60">어제부터 집에서 나오지도 않고 밥도 안 먹어요… 왜 그런걸까요…?</textarea></td>
							</tr>
						</tbody>
					</table>

					<table border="1" class="table1">
						<thead>
							<tr>
								<th>작성자</th>
								<td>그랜드 동물병원</td>
								<th>날짜</th>
								<td>2016.07.10</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td colspan="4"><textarea name="text" rows="3" cols="60">직접 보지 않고는 원인을 모르겠습니다. 병원에 방문해주세요!</textarea>
								</td>
							</tr>
						</tbody>
					</table>
					<p>
						&nbsp;&nbsp;&nbsp;&nbsp;<a href="u_qnalist.jsp"> <input
							type="button" name="list" class="btn1" value="목록"></a>
					</p>
				</div>
			</div>
			</div>
	</center>
</body>
</html>
