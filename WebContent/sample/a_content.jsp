<%@page import="java.util.regex.Pattern"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>본격! 게시판 - 게시글 조회</title>

</head>

<%
	String userid = request.getParameter("userid");

	try {

		String driverName = "com.mysql.jdbc.Driver";

		String url = "jdbc:mysql://kukumom.c3hzxu2bf5no.ap-northeast-2.rds.amazonaws.com:33061/kukumom";

		ResultSet rs = null;

		Class.forName(driverName);

		Connection con = DriverManager.getConnection(url, "system", "1234");

		out.println("Database Connection Success.");

		Statement stmt = con.createStatement();

		String sql = "select userid,petcode,hoscode,q_date,q_title,q_content,qnareply from usrqna where userid = " + "userid"; 

		rs = stmt.executeQuery(sql);

		while (rs.next()) {
%>

<body>

	<h1>게시글 조회</h1>

	<table border="1">
		<!-- border은 테두리를 표시하는 속성입니다. -->                      

		<tr>

			<th colspan="2">보호자 아이디</th>
			<!-- colspan은 행병합 속성입니다. -->

			<td colspan="6"><%=rs.getString("userid")%></td>

		</tr>

		<tr>

			<th colspan="2">애완동물 코드</th>

			<td colspan="6"><%=rs.getString("petcode")%></td>

		</tr>
		<tr>

			<th colspan="2">병원 코드</th>

			<td colspan="6"><%=rs.getString("hoscode")%></td>

		</tr>
		
		<tr>

			<th colspan="2">날짜</th>

			<td colspan="6"><%=rs.getString("q_date")%></td>

		</tr>
		<tr>

			<th colspan="2">제목</th>

			<td colspan="6"><%=rs.getString("q_title")%></td>

		</tr>
		<tr>

			<th colspan="2">내용</th>

			<td colspan="6"><%=rs.getString("q_content")%></td>

		</tr>
		<tr>

			<th colspan="2">답변</th>

			<td colspan="6"><%=rs.getString("qnareply")%></td>

		</tr>
	</table>

	<a href="a_delete.jsp?userid=<%=rs.getString(">게시글삭제</a>

	<a href="a_index.jsp">목록으로</a>

	<%
		}

			con.close();

		} catch (Exception e) {

			out.println("Database Connection Something Problem. <hr>");

			out.println(e.getMessage());

			e.printStackTrace();

		}
	%>

</body>

</html>