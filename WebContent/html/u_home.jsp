<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.text.*"%>
<%@page import="java.sql.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>꾸꾸맘</title>
<link rel="stylesheet" type="text/css"
	href="../css/u_homestyle.css?ver=1">
<link rel="stylesheet" type="text/css" href="../css/hometable.css?ver=1">
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
	<div class="container" align="center">
		<div class="topWrap">
			
			<div class="logo">
				<p style="display: inline;">
					<img src="../image/logo.png" width="180" height="150" />
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
			<div class="cont_1 cycle-slideshow" cycle-slideshow
				data-cycle-loader="wait" data-cycle-timeout="3000">
				<img src="../image/puppy01.png" / width="100%" height="100%">
				<img src="../image/puppy02.png" / width="100%" height="100%">
				<img src="../image/puppy03.png" / width="100%" height="100%">
				<img src="../image/puppy04.png" / width="100%" height="100%">
			</div>
			<div class="cont_2">
				<table class="table1" align="center" style="padding-left:2%;">
					<colgroup>
						<col width="50%" />
						<col width="50%" />

					</colgroup>
					<thead>
						<tr>
							<th colspan="2">내 병원</th>

						</tr>
						<tr>
							<th>병원명</th>
							<th>전화번호</th>
						</tr>
					</thead>
					<tbody>
						 <%
						 /*병원목록*/
							Statement stmt2 = conn.createStatement();
							String sql2 = "select a.hosname,a.hostel from HOSINFO a join USRMYHOS b where a.hoscode=b.hoscode and b.userid='kukumom2'";
							ResultSet rs2 = null;
							rs2 = stmt2.executeQuery(sql2);
						 
						while (rs2.next()) {
								out.print("<tr>");
						%>
						<td><%=rs2.getString("hosname")%></td>
						<td><%=rs2.getString("hostel")%></td>
						<%
							out.print("</tr>");
								}
						%> 
						<!-- <tr>
							<td>샤이닝스타</td>
							<td>02-1234-5678</td>
						</tr>
						<tr>
							<td>미래병원</td>
							<td>02-1234-0000</td>
						</tr>
						<tr>
							<td>그랜드동물병원</td>
							<td>02-1579-1633</td>
						</tr> -->
					</tbody>
				</table>
			</div>


			<div class="cont_3">
				<table class="table1" align="center">
					<colgroup>
						<col width="30%" />
						<col width="15%" />
						<col width="15%" />
						<col width="40%" />
					</colgroup>
					<thead>
						<tr>
							<th colspan="4">지난 일정</th>
						</tr>
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
						<!-- <tr>
							<td>10:00 AM</td>
							<td>병원</td>
							<td><a href="#">꾸꾸 건강검진</a></td>
						</tr>
						<tr>
							<td>14:00 PM</td>
							<td>미용</td>
							<td><a href="#">솜이 배냇털 정리</a></td>
						</tr> -->
					</tbody>
				</table>

			</div>
			<div class="cont_4">
				<table class="table1" align="center">
					<colgroup>
						<col width="20%" />
						<col width="60%" />
						<col width="10%" />
						<col width="10%" />
					</colgroup>
					<thead>
						<tr>
							<th colspan="4">지난 성장일기</th>
						</tr>
						<tr>
							<th>일자</th>
							<th>내용</th>
							<th>키</th>
							<th>몸무게</th>
						</tr>
					</thead>
					<tbody>
						<%
						/*성장일기*/
						Statement stmt1 = conn.createStatement();
						String sql1 = "select d_date,d_content,hght,weight from USRDIARY where userid='kukumom2' order by d_date desc";
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
			<span id="copyright"> Blog is powered by <a href="#"
				onclick="window.open(this.href); 
					return false"
				title="Daum 바로가기" style="text-decoration: none">건강하조</a> / Designed
				by <a href="#" title="Tistory 바로가기" style="text-decoration: none">꾸꾸맘</a>
			</span>
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