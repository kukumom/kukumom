<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="dbCon.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>보호자 1:1 문의</title>
<link rel="stylesheet" type="text/css" href="../css/table.css">
<link rel="stylesheet" type="text/css" href="../css/button.css">
<link rel="stylesheet" type="text/css" href="../css/u_style.css">
<link rel="stylesheet" type="text/css" href="../css/diary.css?ver=1">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#imgInp").on('change', function() {
			readURL(this);
		});
	});

	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#blah').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}
</script>
</head>
<body>
	
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
			
			 <form name="reg01" action="u_qnainsert.jsp" method="get">
			 
			<div class="cont-right">
			<div class="wrap effect8">
				<h1>1:1 문의하기</h1>
				<table border="3" class="table1"  style="font-size:17px;">
					<tr>
						<td><strong>병원선택</strong></td>
						<td><select name="HOSNAME">								
								<option value="h00001">평화와 생명동물병원</option>
								<option value="h00002">서울대학교 동물병원</option>
								<option value="h00003">한양동물메디컬센터</option>
								<option value="h00004">오렌지 동물병원</option>
								<option value="h00005">이윤세 동물병원</option>
						</select></td>
					</tr>
					<tr>
						<td><strong>애완명</strong></td>
						<td><select name="PETNAME">
								<option value="꾸꾸">꾸꾸</option>
								<option value="두유">두유</option>
								<option value="멍멍이">멍멍이</option>
						</select></td>
					</tr>
					<tr>
						<td><strong>제목</strong></td>
						<td><textarea name="Q_TITLE" rows="1" cols="100"></textarea></td>
					</tr>
					<tr>
						<td><strong>내용</strong></td>
						<td><textarea name="Q_CONTENT" rows="30" cols="100"></textarea></td>
					</tr>
				</table>
				<input type="submit" name="save" class="btn1" value="문의하기" onclick="alert('문의가 완료되었습니다.')">
			</div>
			</div>
			</div>
	
</body>
</html>
