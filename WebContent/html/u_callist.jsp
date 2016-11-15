<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.text.*"%>
<%-- <%@page import="java.util.regex.Pattern"%> --%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>꾸꾸맘</title>
<link rel="stylesheet" type="text/css" href="../css/u_style.css?ver=1">
<link rel="stylesheet" type="text/css" href="../css/table.css?ver=1">
<link rel="stylesheet" type="text/css" href="../css/button.css">

</head>

<%
	Connection conn = null; // null로 초기화 한다.
	try {
		String url = "jdbc:mysql://kukumom.c3hzxu2bf5no.ap-northeast-2.rds.amazonaws.com:33061/kukumom"; // 사용하려는 데이터베이스명을 포함한 URL 기술
		String id = "root"; // 사용자 계정
		String pw = "!1Qwe123"; // 사용자 계정의 패스워드
		ResultSet rs = null;

		Class.forName("com.mysql.jdbc.Driver"); // 데이터베이스와 연동하기 위해 DriverManager에 등록한다.
		conn = DriverManager.getConnection(url, id, pw); // DriverManager 객체로부터 Connection 객체를 얻어온다.
		/* out.println("제대로 연결되었습니다."); // 커넥션이 제대로 연결되면 수행된다. */
		
		String sql = "select calstime,caledtime,calcate,calcont from USRSCHEDULE order by calsdate desc";
		Statement stmt = conn.createStatement();
		
		rs = stmt.executeQuery(sql);
%>

<body>

	<div class="container" align="center">
		<div class="topWrap">
			<div class="login" align="right">
				<a href="u_memcont.jsp" class="findButton">회원가입</a> <a
					href="u_findid.jsp" class="findButton">ID찾기</a> <a
					href="u_findpass.jsp" class="findButton">PW찾기</a> <span>ID
					<input type="text" style="width: 100px;" />
				</span> <span>PW <input type="password" style="width: 100px;" /></span>
				<a href="#" class="logButton">LOGIN</a>
			</div>
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
			</div> -->
			<div class="cont-right">
				
				<div class="list">
					<div align="center" style="padding-top: 1%;">
						<h3>2016-11-18</h3>
					</div>
					<!--테이블-->
					<table class="table1" align="center">
						<colgroup>
							<col width="10%" />
							<col width="15%" />
							<col width="15%" />
							<col width="10%" />
							<col width="50%" />
						</colgroup>
						<thead>
							<tr>
								<th colspan="3">지난 일정</th>
							</tr>
							<tr>
								<th>선택</th>
								<th>시작시간</th>
								<th>종료시간</th>
								<th>구분</th>
								<th>내용</th>
							</tr>
						</thead>
						<tbody>
							<%
							while (rs.next()) {
									out.print("<tr>");
						%>
							<td><input type="radio"></td>
							<td><%=rs.getString("calstime")%></td>
							<td><%=rs.getString("caledtime")%></td>
							<td><%=rs.getString("calcate")%></td>
							<td><%=rs.getString("calcont")%></td>

							<%
							out.print("</tr>");
							}
						%>
							<!-- <tr>
								<td><input type="radio" name="schedule"></td>
								<td>10:00 AM</td>
								<td>병원</td>
								<td><a href="#">꾸꾸 건강검진</a></td>
							</tr>
							<tr>
								<td><input type="radio" name="schedule"></td>
								<td>11:00 AM</td>
								<td>미용</td>
								<td><a href="#">꾸꾸 제이펫 미용예약</a></td>
							</tr> -->
						</tbody>
					</table>
				</div>
				<br>
				<div align="center">
					<a href="u_calregst.jsp" class="btn1">추가</a> <a href="#"
						class="btn1">삭제</a>
				</div>
				<%-- <% 
				System.out.print("USERID");
				System.out.print("CALSDATE");
				System.out.print("CALSTIME");
				System.out.print("CALCONT");
				%> --%>
				
				
			</div>
		</div>
		<%-- <%
		con.close();

		} catch (Exception e) {

			out.println("Database Connection Something Problem. <hr>");

			out.println(e.getMessage());

			e.printStackTrace();

		}
	%> --%>
		
		<footer> </footer>
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