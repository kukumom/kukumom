<%@ page language="java" import="java.sql.*"%>
<%
   String DB_URL = "jdbc:oracle:thin:@localhost:1521:XE";

   String DB_USER = "system"; // DB USER명
   String DB_PASSWORD = "1234"; // 패스워드

   Connection con = null;
   Statement stmt = null;
   ResultSet rs = null;
   String sql = null;

   try {
      Class.forName("com.mysql.jdbc.Driver");
      con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
   } catch (SQLException e) {
      out.println(e);
   }
%>