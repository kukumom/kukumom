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
	String userid = request.getParameter("userid");

	try {

		String driverName = "com.mysql.jdbc.Driver";

		String url = "jdbc:oracle:thin:@localhost:1521:XE";

		ResultSet rs = null;

		Class.forName(driverName);

		Connection con = DriverManager.getConnection(url, "system", "1234");

		out.println("Oracle Database Connection Success.");

		Statement stmt = con.createStatement();

		String sql = "select userid,petcode,hoscode,q_date,q_title,q_content,qnareply from usrqna where userid = " + "userid"; 

		rs = stmt.executeQuery(sql);

		while (rs.next()) {
%>

<body>

	<h1>�Խñ� ��ȸ</h1>

	<table border="1">
		<!-- border�� �׵θ��� ǥ���ϴ� �Ӽ��Դϴ�. -->                      

		<tr>

			<th colspan="2">��ȣ�� ���̵�</th>
			<!-- colspan�� �ິ�� �Ӽ��Դϴ�. -->

			<td colspan="6"><%=rs.getString("userid")%></td>

		</tr>

		<tr>

			<th colspan="2">�ֿϵ��� �ڵ�</th>

			<td colspan="6"><%=rs.getString("petcode")%></td>

		</tr>
		<tr>

			<th colspan="2">���� �ڵ�</th>

			<td colspan="6"><%=rs.getString("hoscode")%></td>

		</tr>
		
		<tr>

			<th colspan="2">��¥</th>

			<td colspan="6"><%=rs.getString("q_date")%></td>

		</tr>
		<tr>

			<th colspan="2">����</th>

			<td colspan="6"><%=rs.getString("q_title")%></td>

		</tr>
		<tr>

			<th colspan="2">����</th>

			<td colspan="6"><%=rs.getString("q_content")%></td>

		</tr>
		<tr>

			<th colspan="2">�亯</th>

			<td colspan="6"><%=rs.getString("qnareply")%></td>

		</tr>
	</table>

	<a href="a_delete.jsp?userid=<%=rs.getString("userid")%>">�Խñۻ���</a>

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