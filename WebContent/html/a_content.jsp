<%@page import="java.util.regex.Pattern"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>본격! 게시판 - 게시글 조회</title>

</head>

<%
	String idx = request.getParameter("idx");

	try {

		String driverName = "com.mysql.jdbc.Driver";

		String url = "jdbc:mysql://kukumom.c3hzxu2bf5no.ap-northeast-2.rds.amazonaws.com:33061/kukumom";

		ResultSet rs = null;

		Class.forName(driverName);

		Connection con = DriverManager.getConnection(url, "root", "!1Qwe123");

		out.println("Oracle Database Connection Success.");

		Statement stmt = con.createStatement();

		String sql = "select * from board where idx = " + idx;

		rs = stmt.executeQuery(sql);

		while (rs.next()) {
%>






<body>

	<h1>게시글 조회</h1>

	<table border="1">
		<!-- border은 테두리를 표시하는 속성입니다. -->

		<tr>

			<th>번호</th>

			<td><%=rs.getString("idx")%></td>

			<th>작성자</th>

			<td><%=rs.getString("writer")%></td>

			<th>날짜</th>

			<td><%=rs.getString("regdate")%></td>

			<th>조회수</th>

			<td><%=rs.getString("count")%></td>

		</tr>

		<tr>

			<th colspan="2">제목</th>
			<!-- colspan은 행병합 속성입니다. -->

			<td colspan="6"><%=rs.getString("title")%></td>

		</tr>

		<tr>

			<th colspan="2">내용</th>

			<td colspan="6"><%=rs.getString("content")%></td>

		</tr>

	</table>

	<a href="a_delete.jsp?idx=<%=rs.getString("idx")%>">게시글삭제</a>

	<a href="a_index.jsp">목록으로</a>

	<%
		}

			con.close();

		} catch (Exception e) {

			out.println("Oracle Database Connection Something Problem. <hr>");

			out.println(e.getMessage());

			e.printStackTrace();

		}
	%>

</body>

</html>