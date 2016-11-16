<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.*,java.text.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<title>QNA</title>
</head>

<%
   /* String HOSNAME = request.getParameter("HOSNAME");
   String PETNAME = request.getParameter("PETNAME"); */
   String Q_TITLE = request.getParameter("Q_TITLE");
   String Q_DATE = request.getParameter("Q_DATE");
   String Q_CONTENT = request.getParameter("Q_CONTENT");
      
   
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn = null;
   PreparedStatement pstmt = null;
   
   StringBuffer sql = new StringBuffer(); 
  
   try {
      conn = DriverManager.getConnection("jdbc:mysql://kukumom.c3hzxu2bf5no.ap-northeast-2.rds.amazonaws.com:33061/kukumom", "root", "!1Qwe123");
      pstmt = conn.prepareStatement("insert into USRQNA (USERID,PETCODE,HOSCODE,Q_DATE,Q_TITLE,Q_CONTENT) " + 
                                  " values(?,?,?,?,?,?) ");
     
      pstmt.setString(1, "kukumom1");
      pstmt.setString(2, "p00000003");
      pstmt.setString(3, "h000001" );
      pstmt.setString(4, "20161030");
      pstmt.setString(5, Q_TITLE);
      pstmt.setString(6, Q_CONTENT);

      pstmt.executeUpdate();
      conn.commit();
      
  
%>
<body>
   <%
   } catch (Exception e) {

		out.println("DB연결에 문제 발생 <hr>");

		out.println(e.getMessage());

		e.printStackTrace();

  }finally{
       out.print("<script>location.href='u_qnalist.jsp';</script>");
   }
   %>
      
      
</body>
</html>