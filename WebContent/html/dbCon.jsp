<%@ page language="java" import="java.sql.*"%>
<%
   String DB_URL = "jdbc:mysql://kukumom.c3hzxu2bf5no.ap-northeast-2.rds.amazonaws.com:33061/kukumom";

   String DB_USER = "root"; // DB USERëª…
   String DB_PASSWORD = "!1Qwe123"; // DB password“œ

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