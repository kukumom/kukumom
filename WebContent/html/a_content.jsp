<%@page import="java.util.regex.Pattern"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>����! �Խ��� - �Խñ� ��ȸ</title>

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

	<h1>�Խñ� ��ȸ</h1>

	<table border="1">
		<!-- border�� �׵θ��� ǥ���ϴ� �Ӽ��Դϴ�. -->

		<tr>

			<th>��ȣ</th>

			<td><%=rs.getString("idx")%></td>

			<th>�ۼ���</th>

			<td><%=rs.getString("writer")%></td>

			<th>��¥</th>

			<td><%=rs.getString("regdate")%></td>

			<th>��ȸ��</th>

			<td><%=rs.getString("count")%></td>

		</tr>

		<tr>

			<th colspan="2">����</th>
			<!-- colspan�� �ິ�� �Ӽ��Դϴ�. -->

			<td colspan="6"><%=rs.getString("title")%></td>

		</tr>

		<tr>

			<th colspan="2">����</th>

			<td colspan="6"><%=rs.getString("content")%></td>

		</tr>

	</table>

	<a href="a_delete.jsp?idx=<%=rs.getString("idx")%>">�Խñۻ���</a>

	<a href="a_index.jsp">�������</a>

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