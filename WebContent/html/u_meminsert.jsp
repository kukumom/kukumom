
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
	String USERPW = request.getParameter("USERPW");
	String USERNAME = request.getParameter("USERNAME");
	String USERBIRTH = request.getParameter("USERBIRTH");
	
	String tel_fs=request.getParameter("tel_fs");
	String tel_md=request.getParameter("tel_md");
	String tel_la=request.getParameter("tel_la");
	
	String USERTEL = tel_fs + tel_md + tel_la;
	/* String USERZIP = request.getParameter("USRZIP");
	String USERADD = request.getParameter("USERADD"); */
	
	String PETCODE = request.getParameter("PETCODE");
	String PETNAME = request.getParameter("PETNAME");
	String PETCATE = request.getParameter("PETCATE");
	String PETKIND = request.getParameter("PETKIND");
	String PETBIRTH = request.getParameter("PETBIRTH");
	String PETGENDER = request.getParameter("PETGENDER");
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = null;
	PreparedStatement pstmt = null;
	PreparedStatement pstmt1 = null;
	
	StringBuffer sql = new StringBuffer(); 
	
	try {
		conn = DriverManager.getConnection("jdbc:mysql://kukumom.c3hzxu2bf5no.ap-northeast-2.rds.amazonaws.com:33061/kukumom", "root", "!1Qwe123");
		pstmt = conn.prepareStatement("insert into USRINFO (USERID, USERPW,USERNAME,USERBIRTH,USERTEL,USERCCC,USERAGR) " + 
				                      " values(?,?,?,?,?,0000,'Y') ");
		/* pstmt = conn.prepareStatement("insert into USRSCHEDULE (USERID, CALSDATE,CALEDDATE,CALSTIME,CALEDTIME,CALCATE,CALCONT,CALAL) values('kukumon2','20160101','20160102','1255','1355','jin','yeyyeye~','10') "); */
		
		pstmt.setString(1, USERID);
		pstmt.setString(2, USERPW);
		pstmt.setString(3, USERNAME);
		pstmt.setString(4, USERBIRTH);
		pstmt.setString(5, USERTEL);

		pstmt.executeUpdate();
		
		
		
		pstmt1 = conn.prepareStatement("insert into USRPET (PETCODE, USERID,PETNAME,PETCATE,PETKIND,PETBIRTH,PETGENDER) " + 
                " values(?,?,?,?,?,?,?) ");
		/* pstmt = conn.prepareStatement("insert into USRSCHEDULE (USERID, CALSDATE,CALEDDATE,CALSTIME,CALEDTIME,CALCATE,CALCONT,CALAL) values('kukumon2','20160101','20160102','1255','1355','jin','yeyyeye~','10') "); */

		pstmt1.setString(1, PETCODE);
		pstmt1.setString(2, USERID);
		pstmt1.setString(3, PETNAME);
		pstmt1.setString(4, PETCATE);
		pstmt1.setString(5, PETKIND);
		pstmt1.setString(6, PETBIRTH);
		pstmt1.setString(7, PETGENDER);

		pstmt1.executeUpdate();
		
		conn.commit();
		
	} catch (SQLException e) {
		/* out.println("<script> alert('노농'); hidtory.back(); </script>"); */
		e.printStackTrace();
%>
<body>
	<%
	} catch (Exception e) {
		
		out.println(" 데이터베이스 접속에 문제가 있습니다. <hr>");
		out.println(e.getMessage());
		e.printStackTrace();

	}finally{
        out.print("<script>location.href='u_index.jsp';</script>");
    }
	%>
		
		
</body>
</html>