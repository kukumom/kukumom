<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*,java.text.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>펫 입력</title>
</head>
<%
	/* String HOSNAME = request.getParameter("HOSNAME");
	String PETNAME = request.getParameter("PETNAME"); */

	String PETNAME = request.getParameter("PETNAME");
	String PETCATE = request.getParameter("PETCATE");
	String PETKIND = request.getParameter("PETKIND"); /*품종  */
	String PETBIRTH = request.getParameter("PETBIRTH");
	String PETGENDER = request.getParameter("PETGENDER");

	/* System.out.format("PETNAME: %s\n", PETNAME);
	System.out.format("PETCATE: %s\n", PETCATE);
	System.out.format("PETKIND: %s\n", PETKIND);
	System.out.format("PETBIRTH: %s\n", PETBIRTH);
	System.out.format("PETGENDER: %s\n", PETGENDER); */

	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = null;
	PreparedStatement pstmt = null;

	StringBuffer sql = new StringBuffer();

	try {
		conn = DriverManager.getConnection("jdbc:mysql://kukumom.c3hzxu2bf5no.ap-northeast-2.rds.amazonaws.com:33061/kukumom", "root", "!1Qwe123");
		pstmt = conn.prepareStatement("insert into USRPET (PETCODE, USERID, PETNAME, PETCATE, PETKIND, PETBIRTH, PETGENDER) "
						+ " values(?,?,?,?,?,?,?) ");

		pstmt.setString(1, "p00000005");
		pstmt.setString(2, "kukumom1");
		pstmt.setString(3, PETNAME);
		pstmt.setString(4, PETCATE);
		pstmt.setString(5, PETKIND);
		pstmt.setString(6, PETBIRTH);
		pstmt.setString(7, PETGENDER);

		pstmt.executeUpdate();
		conn.commit();
%>
<body>
	<%
		} catch (Exception e) {
			out.println("DB연결에 문제 발생 <hr>");
			out.println(e.getMessage());
			e.printStackTrace();

		} finally {
			out.print("<script>location.href='u_petlist.jsp';</script>");
		}
	%>


</body>
</html>

