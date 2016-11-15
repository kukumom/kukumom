<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.*,java.text.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>성장일기 등록</title>
</head>

<%
   String HOSNAME = request.getParameter("HOSNAME");
   String PETNAME = request.getParameter("PETNAME");
   String Q_TITLE = request.getParameter("Q_TITLE");
   String Q_DATE = request.getParameter("Q_DATE");
   String Q_CONTENT = request.getParameter("Q_CONTENT");
      
   
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn = null;
   PreparedStatement pstmt = null;
   
   StringBuffer sql = new StringBuffer(); 
   // sql = "insert into USRINFO (USERID, CALSDATE,CALEDDATE,CALSTIME,CALEDTIME,CALCATE,CALCONT,CALAL) values(?,?,?,?,?,?,?,?) ";
   try {
      conn = DriverManager.getConnection("jdbc:mysql://kukumom.c3hzxu2bf5no.ap-northeast-2.rds.amazonaws.com:33061/kukumom", "root", "!1Qwe123");
      pstmt = conn.prepareStatement("insert into USRQNA (USERID,PETCODE,HOSCODE,Q_DATE,Q_TITLE,Q_CONTENT) " + 
                                  " values(?,?,?,?,?,?) ");
      /* pstmt = conn.prepareStatement("insert into USRSCHEDULE (USERID, CALSDATE,CALEDDATE,CALSTIME,CALEDTIME,CALCATE,CALCONT,CALAL) values('kukumon2','20160101','20160102','1255','1355','jin','yeyyeye~','10') "); */
  
      pstmt.setString(1, "kukumom1");
      pstmt.setString(2, "두유");
      pstmt.setString(3, "이윤세동물병원" );
      pstmt.setString(4, Q_DATE);
      pstmt.setString(5, Q_TITLE);
      pstmt.setString(6, Q_CONTENT);

      pstmt.executeUpdate();
      conn.commit();
      
   } catch (SQLException e) {
      e.printStackTrace();
%>
<body>
   <%
   } catch (Exception e) {
	   
      out.println(" 데이터베이스 접속에 문제가 있습니다. <hr>");
      out.println(e.getMessage());
      e.printStackTrace();

   }finally{
        out.print("<script>location.href='u_qnalist.jsp';</script>");
    }
   %>
      
      
</body>
</html>