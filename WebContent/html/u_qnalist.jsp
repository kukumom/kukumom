<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>보호자 1:1 문의 목록</title>
<link rel="stylesheet" type="text/css" href="../css/table.css?ver=1">
<link rel="stylesheet" type="text/css" href="../css/button.css">
<link rel="stylesheet" type="text/css" href="../css/u_style.css">
</head>

<script language="javascript">
	function showConfirm() {
		if (confirm("삭제하시겠습니까?")) {
			alert("삭제되었습니다.")
		} else {
			alert("취소되었습니다.")
		}
	}
</script>
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
				<p>
				<h1>문의 목록</h1>
				</p>
				<p>
					<select name="petchoice">
						<option value="1111">꾸꾸</option>
						<option value="1112">두유</option>
						<option value="1113">멍멍이</option>
					</select> <input type="text" name="hossearch"
						placeholder="찾고자 하는 병원을 입력해주세요"> <input type="button"
						value="검색">
				</p>
				<table border="1" class="table1">
					<thead>
						<tr>
							<th>선택</th>
							<th>병원</th>
							<th>애완명</th>
							<th>제목</th>
							<th>날짜</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox" name="choice" value="qnadelete"></td>
							<td>그랜드동물병원</td>
							<td>꾸꾸</td>
							<td><a href="u_qnadetail.jsp">배변처리는 어떻게 해야하나요?</a></td>
							<td>2016.07.11</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="choice" value="qnadelete"></td>
							<td>샤이닝스타 동물병원</td>
							<td>두유</td>
							<td>배변 색이 이상해요(2)</td>
							<td>2016.07.20</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="choice" value="qnadelete"></td>
							<td>그랜드동물병원</td>
							<td>만세</td>
							<td>수술 후 봉합한 부위가 벌어졌습니다ㅠㅠ(2)</td>
							<td>2016.07.25</td>
						</tr>
					</tbody>
				</table>
				<p>
					<input type="button" name="delete" class="btn1" value="삭제"
						onclick="showConfirm();" />
				</p>
			</div>
			</div>
	</center>
</body>
</html>
