<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>꾸꾸맘</title>
<link rel="stylesheet" type="text/css" href="../css/u_style.css">
<link rel="stylesheet" text="text/css" href="../css/button.css">
<style>
th{
	text-align: right;
}
#user{
	float:left;
}
.cont{
	margin-left: 30%;
}
.find {
background-color:;
display: inline-block;
cursor: pointer;
color: #000;
font-family: Arial;
font-size: 15px;
font-weight: bold;
padding: 5px 5px;
text-decoration: none;
text-shadow: 2px 2px 3px #778899;
}

.find:hover {
	background-color:;
}

.find:active {
	position: relative;
	top: 1px;
}
</style>
</head>
<body>
	
		<div class="container">
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
			<br/><br/>
			<form action="u_meminsert.jsp" method="get">
			<div class="cont-right">
				<img src="../image/gyak.PNG" style="width: 100px;" /><img
					src="../image/arrow.PNG"> <img src="../image/yinfo.PNG"
					style="width: 100px;" /><img src="../image/arrow.PNG"> <img
					src="../image/gcom.PNG" style="width: 100px;" /><br/><br/>
				<table id="user" align="right">
					<br>
					<tr>
						<th>아이디 :</th>
						<td><input type="text" name="USERID" value="ddd"/></td>
						<td><a href="#" class="findButton">중복확인</a></td>
					</tr>
					<tr>
						<th>비밀번호 :</th>
						<td><input type="password" name="USERPW" value="ddd"/></td>
					</tr>
					<tr>
						<th>비밀번호 확인 :</th>
						<td><input type="text" value="ddd"/></td>
					</tr>
					<tr>
						<th>이름 :</th>
						<td><input type="text" name="USERNAME" value="ddd"/></td>
					</tr>
					<tr>
						<th>생년월일 :</th>
						<td><input type="date" name="USERBIRTH"/></td>
					</tr>
					<tr>
						<th>연락처 :</th>
						<td><select name="tel_fs">
								<option value="010">010</option>
								<option value="02">02</option>
						</select>- 
						<input type="text" name="tel_md" maxlength="4" style="width: 45px;" />-
						<input type="text" name="tel_la" maxlength="4" style="width: 45px;" /></td>
					</tr>
					<tr>
						<th>애완동물 유무 :</th>
						<td><input type="radio" name="pet" value="Y" onclick="LayerView();">Yes 
							<input type="radio" name="pet" value="N" onclick="LayerView();">No</td>
					</tr>
					
				</table>



				<!--Yes일때 보여줌-->
				<script>
					 /* function LayerView() {
						var checkValue = $(
								"input[type:radio][name=pet]:checked").val();
						if (checkValue == "Y") {
							petinfo.style.visibility = "visible";
						} else if (checkValue == "N") {
							petinfo.style.visibility = "hidden";
						}
					}  */
					/* function LayerView(){
						var checkValue = $('input:radio[name=pet]').is(':checked');
						if (checkValue.equels("true")) {
							petinfo.style.visibility = "visible";
						} else if (checkValue.equels("false")) {
							petinfo.style.visibility = "hidden";
						}
					} */
				</script>
				<table id="pet">
					<tr>
						<th>애완명 :</th>
						<td><input type="text" name="PETNAME"></td>
					</tr>
					<tr>
						<th>동물 종류 :</th>
						<td><select name="PETCATE">
							<option value="개">개</option>
							<option value="고양이">고양이</option>
							<option value="햄스터">햄스터</option>
							<option value="고슴도치">고슴도치</option>
							<option value="기타">기타</option>
						</select></td>
					</tr>
					<tr>
						<th>동물 품종 :</th>
						<td><select name="PETKIND"  overflow:auto>
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
						<td><input type="date" name="PETBIRTH"></td>
					</tr>
					<tr>
						<th>성별 :</th>
						<td><input type="radio" value="F" name="PETGENDER">암컷
						<input type="radio" value="M" name="PETGENDER">수컷</td>
					</tr>
					<br/>
				</table>
				<br/><br/>
				<a href="#" class="btn1">확인</a> <a href="u_memcont.jsp" class="btn1">취소</a>
				<input type="submit"/>
			</div>
			
		  </form>
		</div>
	
	
	</div>
</body>
</html>