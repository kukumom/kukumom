<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>꾸꾸맘</title>
<link rel="stylesheet" type="text/css" href="../css/u_style.css">
<link rel="stylesheet" text="text/css" href="../css/button.css">
</head>
<body>
	<center>
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
			<br/><br/>
			<form action="u_join.jsp" method="post">
			<div class="cont-right">
				<img src="../image/gyak.PNG" style="width: 100px;" /><img
					src="../image/arrow.PNG"> <img src="../image/yinfo.PNG"
					style="width: 100px;" /><img src="../image/arrow.PNG"> <img
					src="../image/gcom.PNG" style="width: 100px;" />
				<table>
					<br>
					<tr>
						<th>아이디</th>
						<td><input type="text" name="USERID" /></td>
						<td><a href="#" class="findButton">중복확인</a></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="password" name="USERPW" /></td>
					</tr>
					<tr>
						<th>비밀번호 확인</th>
						<td><input type="text" /></td>
					</tr>
					<tr>
						<th>이름</th>
						<td><input type="text" name="USERNAME" /></td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td><input type="date" name="USERBIRTH"/></td>
					</tr>
					<tr>
						<th>연락처</th>
						<td><select name="tel_fst">
								<option>010</option>
								<option>02</option>
						</select>- <input type="text" name="tel_md" maxlength="4" style="width: 45px;" />- <input
							type="text" maxlength="4" style="width: 45px;" /></td>
					</tr>
					<tr>
						<th>애완동물 유무 :</th>
						<td><input type="radio" name="pet" value="Y"
							onclick="LayerView();">Yes 
							<input type="radio" name="pet"
							value="N" onclick="LayerView();">No</td>
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
				<table id="petinfo">
					<tr>
						<th>애완명 :</th>
						<td><input type="text" name="PETNAME"></td>
					</tr>
					<tr>
						<th>동물 종류 :</th>
						<td><select>
								<option name="PETCATE" value="개">개</option>
								<option name="PETCATE" value="고양이">고양이</option>
								<option name="PETCATE" value="햄스터">햄스터</option>
								<option name="PETCATE" value="고슴도치">고슴도치</option>
								<option name="PETCATE" value="기타">기타</option>
						</select></td>
					</tr>
					<tr>
						<th>생년월일 :</th>
						<td><input type="date" name="PETBIRTH"></td>
					</tr>
					<tr>
						<th>성별 :</th>
						<td><input type="radio" value="F" name="PETGENDER">암컷 <input
							type="radio" value="M" name="PETGENDER">수컷</td>
					</tr>
					<br/>
				</table>
				<br/><br/>
				<a href="#" class="btn1">확인</a> <a href="u_memcont.jsp" class="btn1">취소</a>
				
			</div>
			
		  </form>
		</div>
	</center>
	<footer> </footer>
	</div>
</body>
</html>