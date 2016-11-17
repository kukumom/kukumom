<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>진료내역조회</title>
<link rel="stylesheet" type="text/css" href="../css/u_homestyle.css">
<link rel="stylesheet" type="text/css" href="../css/table.css?ver=1">
<link rel="stylesheet" type="text/css" href="../css/button.css">
</head>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="http://malsup.github.com/jquery.cycle2.js"></script>
<script type="text/javascript">
	function move(url) {
		location.href = url;
	}
	</script>
</head>
<body>
<div class="container" align="center">
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
	<table border style="" class="table1">
		<thead>
			<tr>
				<th colspan="2">건강검진</th>
				<th colspan="4">2016.07.30</th>
			</tr>
			<tr>
				<th>이름</th>
				<td>꾸꾸</td>
				<th>키</th>
				<td>20cm</td>
				<th>무게</th>
				<td>1.3kg</td>
			</tr>
		</thead>
			<tbody>
				<tr>
				<td colspan="2">증상</td>
				<td colspan="4"> 귀속에 진드기로 인해 염증과 가려움증세 보임.</td></tr>
				<tr>
				<td colspan="2">처방</td>
				<td colspan="4"> 귀에 물이 들어가지 않도록 해주시고 처방 받은 연고를 하루에 한번 귓속에 발라 주세요.
				<p>이외에는 진드기때문에 귀를 닦으려고 하지말아주세요.</p></td></tr>

				
			</tbody>
		</table>
		<p>
			<input type="submit" name="save" value="  목  록  " class="btn1"
					onclick="move('u_Examlist.jsp');">
		</p>
		</div>
</body>
</html>