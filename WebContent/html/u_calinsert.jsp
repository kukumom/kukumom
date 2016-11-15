<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.*,java.text.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>

<%
	String USERID = request.getParameter("USERID");
	
	String CALSDATE = request.getParameter("CALSDATE");
	String CALEDDATE = request.getParameter("CALEDDATE");
	
	String CALSTIME = request.getParameter("CALSTIME");
	String CALEDTIME = request.getParameter("CALEDTIME");
	String CALCATE = request.getParameter("CALCATE");
	String CALCONT = request.getParameter("CALCONT");
	String CALAL = request.getParameter("CALAL");
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	StringBuffer sql = new StringBuffer(); 
	// sql = "insert into USRINFO (USERID, CALSDATE,CALEDDATE,CALSTIME,CALEDTIME,CALCATE,CALCONT,CALAL) values(?,?,?,?,?,?,?,?) ";
	try {
		conn = DriverManager.getConnection("jdbc:mysql://kukumom.c3hzxu2bf5no.ap-northeast-2.rds.amazonaws.com:33061/kukumom", "root", "!1Qwe123");
		pstmt = conn.prepareStatement("insert into USRSCHEDULE (USERID, CALSDATE,CALEDDATE,CALSTIME,CALEDTIME,CALCATE,CALCONT,CALAL) " + 
				                      " values(?,?,?,?,?,?,?,?) ");
		/* pstmt = conn.prepareStatement("insert into USRSCHEDULE (USERID, CALSDATE,CALEDDATE,CALSTIME,CALEDTIME,CALCATE,CALCONT,CALAL) values('kukumon2','20160101','20160102','1255','1355','jin','yeyyeye~','10') "); */
		
		pstmt.setString(1, "kukumom2");
		pstmt.setString(2, CALSDATE);
		pstmt.setString(3, CALEDDATE);
		pstmt.setString(4, CALSTIME);
		pstmt.setString(5, CALEDTIME);
		pstmt.setString(6, CALCATE);
		pstmt.setString(7, CALCONT);
		pstmt.setString(8, CALAL);

		pstmt.executeUpdate();
		conn.commit();
		
	} catch (SQLException e) {
		out.println("<script> alert('노농'); hidtory.back(); </script>");
		e.printStackTrace();
%>
<body>
	<%
	} catch (Exception e) {
		
		out.println(" 데이터베이스 접속에 문제가 있습니다. <hr>");
		out.println(e.getMessage());
		e.printStackTrace();

	}finally{
        out.print("<script>location.href='u_callist.jsp';</script>");
    }
	%>
		
		
</body>
</html>