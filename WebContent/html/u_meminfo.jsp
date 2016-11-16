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
						<td><input type="text" name="user_id" /></td>
						<td><a href="#" class="findButton">중복확인</a></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="password" name="user_pw" /></td>
					</tr>
					<tr>
						<th>비밀번호 확인</th>
						<td><input type="text" name="user_pw2" /></td>
					</tr>
					<tr>
						<th>이름</th>
						<td><input type="text" name="user_name" /></td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td><select name="user_birth_year">
								<option value="1981" selected>1981</option>
								<option value="1982" selected>1982</option>
								<option value="1983" selected>1983</option>
								<option value="1984" selected>1984</option>
								<option value="1985" selected>1985</option>
								<option value="1986" selected>1986</option>
								<option value="1987" selected>1987</option>
								<option value="1988" selected>1988</option>
								<option value="1989" selected>1989</option>
								<option value="1990" selected>1990</option>
								<option value="1991" selected>1991</option>
								<option value="1992" selected>1992</option>
								<option value="1993" selected>1993</option>
								<option value="1994" selected>1994</option>
								<option value="1995" selected>1995</option>
								<option value="1996" selected>1996</option>
								<option value="2000" selected>2000</option>
								<option value="2001" selected>2001</option>
								<option value="2002" selected>2002</option>
								<option value="2003" selected>2003</option>
								<option value="2004" selected>2004</option>
						</select>년 <select name="user_birth_month">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
						</select>월 <select name="user_birth_day">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
								<option value="21">21</option>
								<option value="22">22</option>
								<option value="23">23</option>
								<option value="24">24</option>
								<option value="25">25</option>
								<option value="26">26</option>
								<option value="27">27</option>
								<option value="28">28</option>
								<option value="29">29</option>
								<option value="30">30</option>
								<option value="31">31</option>
						</select>일</td>
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
					<tr>
						<td></td>
						<td><a href="#" class="btn1">확인</a> <a
							href="u_memcont.jsp" class="btn1">취소</a></td>
					</tr>
				</table>



				<!--Yes일때 보여줌-->
				<script>
					 function LayerView() {
						var checkValue = $(
								"input[type:radio][name=pet]:checked").val();
						if (checkValue == "Y") {
							petinfo.style.visibility = "visible";
						} else if (checkValue == "N") {
							petinfo.style.visibility = "hidden";
						}
					} 
					/* function LayerView(){
						var checkValue = $('input:radio[name=pet]').is(':checked');
						if (checkValue.equels("true")) {
							petinfo.style.visibility = "visible";
						} else if (checkValue.equels("false")) {
							petinfo.style.visibility = "hidden";
						}
					} */
				</script>
				<table id="petinfo" style="visibility: hidden;">
					<tr>
						<th>애완명 :</th>
						<td><input type="text"></td>
					</tr>
					<tr>
						<th>동물 종류 :</th>
						<td><select>
								<option>개</option>
								<option>고양이</option>
								<option>햄스터</option>
								<option>고슴도치</option>
						</select></td>
					</tr>
					<tr>
						<th>생년월일 :</th>
						<td><input type="date"></td>
					</tr>
					<tr>
						<th>성별 :</th>
						<td><input type="radio" name="pets">암컷 <input
							type="radio" name="pets">수컷</td>
					</tr>
				</table>
			</div>
		  </form>
		</div>
	</center>
	<footer> </footer>
	</div>
</body>
</html>