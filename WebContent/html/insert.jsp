<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Write Database Page</title>

</head>

<body>

<%@ page import = "java.sql.*, java.util.*" %>

<%

String USERID = request.getParameter("id");

String USERPW = request.getParameter("password");

 

Class.forName("com.mysql.jdbc.Driver");

Connection conn = null;

PreparedStatement pstmt = null;

 

StringBuffer sql = new StringBuffer();

 

try {

	conn = DriverManager.getConnection("jdbc:mysql://kukumom.c3hzxu2bf5no.ap-northeast-2.rds.amazonaws.com:33061/kukumom", "root", "!1Qwe123");

	pstmt = conn.prepareStatement("insert into USRINFO (USERID, USERPW) values(?,?) ");

	pstmt.setString(1, USERID);

	pstmt.setString(2, USERPW);

	pstmt.executeUpdate();

} catch (SQLException e) {

	e.printStackTrace();

} finally {

 

	if(pstmt != null)

		try {

			pstmt.close();

		} catch (Exception e) {}

	if(conn != null)

		try {

			conn.close();

		} catch (Exception e) {}

}

%>

ID, Password 가 입력되었습니다.

</body>

</html>
