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
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
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
				<div class="wrap effect8">
      <form name="reg01" action="u_petinsert.jsp" method="get">
					<h3>등록할 애완동물의 정보를 입력해주세요!</h3>
				
				<br><br><br><br>
				<table align="center">
					<tr>
						<th>애완명 :</th>
						<td><input type="text" name="PETNAME" ></td>
					</tr>
					<tr>
						<th >동물 종류 :</th>
						<td><select name="PETCATE">
								<option value="" >============</option>
								<option value="개" >개</option>
								<option value="고양이">고양이</option>
								<option value="기타">기타</option>
						</select></td>
						
						<th>동물 품종 :</th>
						<td><select name="PETKIND"  overflow:auto>
							<option value="">=============</option>
							<option value="골든 리트리버">골든 리트리버</option>
							<option value="그레이트 데인">그레이트 데인</option>
							<option value="그레이트 페레니즈">그레이트 페레니즈</option>
							<option value="그레이 하운드">그레이 하운드</option>
							<option value="닥스훈트">닥스훈트</option>
							<option value="달마시안">달마시안</option>
							<option value="댄디 딘몬트 테리어">댄디 딘몬트 테리어</option>
							<option value="도베르만 피셔">도베르만 피셔</option>
							<option value="독일 스피츠">독일 스피츠</option>
							<option value="라사압소">라사압소</option>
							<option value="라이카">라이카</option>
							<option value="로트 바일러">로트 바일러</option>
							<option value="마스티프">마스티프</option>
							<option value="맨체스터 테리어">맨체스터 테리어</option>
							<option value="미니어처 슈나우저">미니어처 슈나우저</option>
							<option value="미니어처 핀셔">미니어처 핀셔</option>
							<option value="버니즈 마운틴 도그">버니즈 마운틴 도그</option>
							<option value="베들링턴 테리어">베들링턴 테리어</option>
							<option value="보르조이">보르조이</option>
							<option value="복서">복서</option>
						</select></td>
					</tr>
					<tr>
						<th>생년월일 :</th>
						<td><input type="date" name="PETBIRTH" ></td>
					</tr>
					<tr>
						<th>성별 :</th>
						<td><input type="radio" name="PETGENDER" value="F" checked="checked">암컷 
						    <input type="radio" name="PETGENDER" value="M">수컷</td>
							
					</tr>
				</table>

				<p>
					<input type="submit" value="저    장" class="btn1"/>
					<a href="u_petlist.jsp"><input type="button" value="취     소" class="btn1"></a>
				</p>
				</form>
			</div>
			</div>
		</div>
		</div>
	</center>

	<footer> </footer>
	
		
</body>
</html>