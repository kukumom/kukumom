<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.*,java.text.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<title>성장일기 등록</title>
</head>

<%
   String D_DATE = request.getParameter("D_DATE");
  
   String D_CONTENT = request.getParameter("D_CONTENT");
   String UPROAD = request.getParameter("UPROAD");
   
   String HGHT = request.getParameter("HGHT");
   String WEIGHT = request.getParameter("WEIGHT");
      
   
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn = null;
   PreparedStatement pstmt = null;
   
   StringBuffer sql = new StringBuffer(); 
   // sql = "insert into USRINFO (USERID, CALSDATE,CALEDDATE,CALSTIME,CALEDTIME,CALCATE,CALCONT,CALAL) values(?,?,?,?,?,?,?,?) ";
   try {
      conn = DriverManager.getConnection("jdbc:mysql://kukumom.c3hzxu2bf5no.ap-northeast-2.rds.amazonaws.com:33061/kukumom", "root", "!1Qwe123");
      pstmt = conn.prepareStatement("insert into USRDIARY (USERID,PETCODE,D_DATE,D_CONTENT,UPROAD,HGHT,WEIGHT) " + 
                                  " values(?,?,?,?,?,?,?) ");
      /* pstmt = conn.prepareStatement("insert into USRSCHEDULE (USERID, CALSDATE,CALEDDATE,CALSTIME,CALEDTIME,CALCATE,CALCONT,CALAL) values('kukumon2','20160101','20160102','1255','1355','jin','yeyyeye~','10') "); */
  
      pstmt.setString(1, "kukumom2");
      pstmt.setString(2, "P00000004");
      pstmt.setString(3, D_DATE);
      pstmt.setString(4, D_CONTENT);
      pstmt.setString(5, "SSS");
      pstmt.setString(6, HGHT);
      pstmt.setString(7, WEIGHT);
      /* pstmt.setString(8, CALAL); */

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
        out.print("<script>location.href='u_diarylist.jsp';</script>");
    }
   %>
      
      
</body>
</html>