<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>꾸꾸맘</title>
    <link rel="stylesheet" type="text/css" href="../css/u_style.css">
    <link rel="stylesheet" type="text/css" href="../css/table.css"> 
    <link rel="stylesheet" type="text/css" href="../css/button.css">
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
	         <!--  <div class="cont-right"> -->
	             
	              <h3>2016-07-07</h3> 
	              
	              <!-- ---------------------------------------------------->
	              
	              <form name="reg01" action="u_calinsert.jsp" method="get" >
	              <table class="table1">
	                  <colgroup>
						<col width="30%" />
						<col width="70%" />
					  </colgroup>
	                  
	                  <tr>
	                      <th>기간 선택</th>
	                      <td class="left">
	                          <input type="date" name="CALSDATE">~
	                          <input type="date" name="CALEDDATE"> </td>
	                  </tr>
	                  <tr>
	                      <th>시간</th>
	                      <td class="left">
	                          <input type="time" name="CALSTIME">~
	                      
	                      <input type="time" name="CALEDTIME"> </td>
	                  </tr>
	                  <tr>
	                      <th>구분</th>
	                      <td class="left">
	                          <input type="radio" value="진료" name="CALCATE">진료
	                          <input type="radio" value="미용" name="CALCATE">미용
	                          <input type="radio" value="기타" name="CALCATE">기타</td>
	                  </tr>
	                  <tr>
	                      <th>내용</th>
	                      <td class="left">
	                          <textarea name="CALCONT" cols="100" rows="5"></textarea>
	                      </td>
	                  </tr>
	                  <tr>
	                      <th>알림</th>
	                      <td class="left">
	                          <select>
	                              <option value="알림없음" name="CALAL">알림없음</option>
	                              <option value="10분전" name="CALAL">10분전</option>
	                              <option value="1시간전" name="CALAL">1시간전</option>
	                              <option value="하루전" name="CALAL">하루전</option>
	                          </select>
	                      </td>
	                  </tr>
	              </table>
	              <div align="center">
				<input type="submit" value="저장" class="btn1">
				 <a href="#" class="btn1">취소</a>
				</div>
				
	           	</form>
	           <!-- ---------------------------------------------------->
	          <!-- </div> -->
	</div>
    </div>
    </div>
    </center>
    <footer> </footer>
    
</body>
</html>