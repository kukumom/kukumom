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
	
	
	String USERID = request.getParameter("USERID"); 
	String HOSCODE = request.getParameter("a");
	
	
	

	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = null;
	PreparedStatement pstmt = null;

	StringBuffer sql = new StringBuffer();

	try {
		conn = DriverManager.getConnection("jdbc:mysql://kukumom.c3hzxu2bf5no.ap-northeast-2.rds.amazonaws.com:33061/kukumom", "root", "!1Qwe123");
		pstmt = conn.prepareStatement("insert into USRMYHOS (USERID, HOSCODE) "
						+ " values(?,?) ");

		pstmt.setString(1, "kukumom1");
		pstmt.setString(2, "h00007");
		

		pstmt.executeUpdate();%>
		<script>
		alert("저장되었습니다.");
		</script>

<body>
	<%
		} catch (Exception e) {
			out.println("DB연결에 문제 발생 <hr>");
			out.println(e.getMessage());
			e.printStackTrace();

		} finally {
			out.print("<script>location.href='u_hossearch.jsp';</script>");
		}
	%>


</body>
</html>