<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.text.*"%>
<%@page import="java.sql.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>꾸꾸맘</title>
<link rel="stylesheet" type="text/css" href="../css/u_home.css?ver=1">
<link rel="stylesheet" type="text/css" href="../css/table.css?ver=2">
</head>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="http://malsup.github.com/jquery.cycle2.js"></script>
</head>

<%
Connection conn = null; // null로 초기화 한다.
try {
		String url = "jdbc:mysql://kukumom.c3hzxu2bf5no.ap-northeast-2.rds.amazonaws.com:33061/kukumom"; // 사용하려는 데이터베이스명을 포함한 URL 기술
		String id = "root"; // 사용자 계정
		String pw = "!1Qwe123"; // 사용자 계정의 패스워드
		

		Class.forName("com.mysql.jdbc.Driver"); // 데이터베이스와 연동하기 위해 DriverManager에 등록한다.
		conn = DriverManager.getConnection(url, id, pw); // DriverManager 객체로부터 Connection 객체를 얻어온다.
		
		/* out.println("Database Connection Success."); */
%>


<body>
  <div id = "topbar">
   <!-- <input type="submit" value="회원가입" class="opbutton" onclick="location.href='u_join.jsp'";>
   <input type="submit" value="아이디" class="opbutton">
   <span id = "bar">/</span>
   <input type="submit" value="비밀번호 찾기" class="opbutton">
   
   <span id = "vtbar">|</span>
     
   <label for="userid">ID</label>
   <input type="text" id="userid" class="text" size="10">
   <label for="userpw">PW</label>
   <input type="password" id="userpw" class="text" size="10">
   <input type="submit" value="login" class="button"> -->
  </div>
      
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


		<div class="cont"  align="center" >
			<div class="cont_1 cycle-slideshow" cycle-slideshow
				data-cycle-loader="wait" data-cycle-timeout="3000">
				<img src="../image/puppy01.png" width="100%" height="100%" style="padding-left: 15px;">
				<img src="../image/puppy02.png" width="100%" height="100%" style="padding-left: 15px;">
				<img src="../image/puppy03.png" width="100%" height="100%" style="padding-left: 15px;">
				<img src="../image/puppy04.png" width="100%" height="100%" style="padding-left: 15px;">
			</div>
			<div class="cont_2">
				<h3>- My Hospital -</h3>
				<table class="table1" align="center" style="padding-left:2%;">
					<colgroup>
						<col width="60%" />
						<col width="40%" />

					</colgroup>
					<thead>
						<!-- <tr>
							<th colspan="2"></th>

						</tr> -->
						<tr>
							<th>병원명</th>
							<th>전화번호</th>
						</tr>
					</thead>
					<tbody>
						 <%
						 /*병원목록*/
							Statement stmt2 = conn.createStatement();
							String sql2 = "select a.hosname,a.hostel from HOSINFO a join USRMYHOS b where a.hoscode=b.hoscode and b.userid='kukumom1'";
							ResultSet rs2 = null;
							rs2 = stmt2.executeQuery(sql2);
						 
						while (rs2.next()) {
								out.print("<tr>");
						%>
						<td><%=rs2.getString("hosname")%></td>
						<% String hostel=rs2.getString("hostel"); 
						String a=hostel.substring(0,2);
						String b=hostel.substring(3,7);
						String c=hostel.substring(6);
						/* System.out.println(a); */
						%>
							
						<td><%=a+"-"+b+"-"+c%></td>
						<%
							out.print("</tr>");
								}
						%> 
						
					</tbody>
				</table>
			</div>


			<div class="cont_3">
				<h3>- My Schedule -</h3>
				<table class="table1" align="center">
					<colgroup>
						<col width="30%" />
						<col width="15%" />
						<col width="15%" />
						<col width="40%" />
					</colgroup>
					<thead>
						<!-- <tr align="center">
							<th colspan="4">지난 일정</th>
						</tr>  -->
						<tr>
							<th>날짜</th>
							<th>시간</th>
							<th>구분</th>
							<th>내용</th>
						</tr>
					</thead>
					<tbody>
						<% 
						/*스케줄*/
						String sql = "select calsdate,calstime,calcate,calcont from USRSCHEDULE";
						Statement stmt = conn.createStatement();
						ResultSet rs = null;
						rs = stmt.executeQuery(sql);

						while (rs.next()) {
								out.print("<tr>");
						%>
						<td><%=rs.getString("calsdate")%></td>
						<td><%=rs.getString("calstime")%></td>
						<td><%=rs.getString("calcate")%></td>
						<td><%=rs.getString("calcont")%></td>
						<%
							out.print("</tr>");
								}
						%>
						
					</tbody>
				</table>

			</div>
			<div class="cont_4">
			<h3>- My Pet Diary -</h3>
				<table class="table1" align="center">
					<colgroup>
						<col width="20%" />
						<col width="50%" />
						<col width="15%" />
						<col width="15%" />
					</colgroup>
					<thead>
						<!-- <tr>
							<th colspan="4">지난 성장일기</th>
						</tr> -->
						<tr>
							<th>일자</th>
							<th>내용</th>
							<th>키(cm)</th>
							<th>몸무게(kg)</th>
						</tr>
					</thead>
					<tbody>
						<%
						/*성장일기*/
						Statement stmt1 = conn.createStatement();
						String sql1 = "select d_date,d_content,hght,weight from USRDIARY where petcode='p00000001' order by d_date desc";
						ResultSet rs1 = null;
						rs1 = stmt1.executeQuery(sql1);
						
						while (rs1.next()) {
								out.print("<tr>");
						%>
						<td><%=rs1.getString("d_date")%></td>
						<td><%=rs1.getString("d_content")%></td>
						<td><%=rs1.getString("hght")%></td>
						<td><%=rs1.getString("weight")%></td>
						<%
							out.print("</tr>");
								}
						%>
						<!-- <tr>
							<td>2016.07.08</td>
							
							<td><a href="#">공원에서 산책했다..</a></td>
							<td>15cm</td>
							<td>100g</td>
							
						</tr>
						<tr>
							<td>2016.08.01</td>
							
							<td><a href="#">내새끼젤루이뻐~</a></td>
							<td>17cm</td>
							<td>130g</td>
							
						</tr> -->
					</tbody>
				</table>
			</div>
		</div>

		<div id="footer">
			<!-- 카피라이트 -->
			 Blog is powered by <a href="#"
				onclick="window.open(this.href); 
					return false"
				title="Daum 바로가기" style="text-decoration: none">건강하조</a> / Designed
				by <a href="#" title="Tistory 바로가기" style="text-decoration: none">꾸꾸맘</a>
			
		</div>
	</div>
	 <%
		

	} catch (Exception e) {

		out.println("Database Connection Something Problem. <hr>");

		out.println(e.getMessage());

		e.printStackTrace();

	} finally {
		conn.close();
	}
	%> 
</body>
</html>