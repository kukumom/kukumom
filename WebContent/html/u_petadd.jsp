<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>꾸꾸맘</title>
<link rel="stylesheet" type="text/css" href="../css/u_style.css">
<link rel="stylesheet" type="text/css" href="../css/button.css">
<link rel="stylesheet" type="text/css" href="../css/diary.css">
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
		<div class="topWrap">
		
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
			</div>-->
		
      <form name="reg01" action="u_petinsert.jsp" method="get">
						
			<div class="cont-right">
			<div class="wrap effect8">
					<h3>등록할 애완동물의 정보를 입력해주세요!</h3>
				</div>
				<br><br><br><br>
				<table align="center">
					<tr>
						<th>애완명 :</th>
						<td><input type="text" name="PETNAME" value="명명이1"></td>
					</tr>
					<tr>
						<th >동물 종류 :</th>
						<td><select name="PETCATE">
								<option value="개" selected="selected">개</option>
								<option value="고양이">고양이</option>
								<option value="햄스터">햄스터</option>
								<option value="고슴도치">고슴도치</option>
						</select></td>
						
						<th>동물 품종 :</th>
						<td><select  name="PETKIND">
								<option value="골든리트리버" selected="selected">골든리트리버</option>
								<option value="치와와">치와와</option>
								<option value="진돗개">진돗개</option>
								<option value="말티즈">말티즈</option>
						</select></td>
					</tr>
					<tr>
						<th>생년월일 :</th>
						<td><input type="date" name="PETBIRTH" value="2016-11-16"></td>
					</tr>
					<tr>
						<th>성별 :</th>
						<td><input type="radio" name="PETGENDER" value="F" checked="checked">암컷 
						    <input type="radio" name="PETGENDER" value="M">수컷</td>
							
					</tr>
				</table>

				<p>
					<input type="submit" />
					<input type="reset" />
				</p>
			</div>
			</form>
		</div>
	
	</div>
		
</body>
</html>