<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%@ page contentType="text/html;charset=utf-8" import="java.sql.*" %>
<%
 request.setCharacterEncoding("utf-8");  //Set encoding
 String user_id  = request.getParameter("user_id");            
 String user_pw = request.getParameter("user_pw");
 String user_name = request.getParameter("user_name");
 String user_birth_year  = request.getParameter("user_birth_year");
 String user_birth_month  = request.getParameter("user_month");
 String user_birth_day  = request.getParameter("user_birth_day");
 String user_birth  = request.getParameter("user_birth_year"+"user_birth_month"+"user_birth_day");
 String pet  = request.getParameter("pet");
//POST로 Input.html로부터 입력받은 내용을 변수화

 try{
  Class.forName("com.mysql.jdbc.Driver");
  String url = "jdbc:mysql://kukumom.c3hzxu2bf5no.ap-northeast-2.rds.amazonaws.com:33061/kukumom";
  Connection con = DriverManager.getConnection(url,"system","1234");
  Statement stat = con.createStatement();
 // String query = "INSERT INTO usrinfo(userid, userpw, username, userbirth, usertel, userzip, useradd, userccc, useragr)  VALUES('"+user_id+"','"+user_pw+"','"+user_name+"','"+user_birth_year+user_birth_month+"','"+user_tel+"','"+user_zip+"','"+user_add+"','"+user_ccc+"','"+user_agr+"')";
//INSERT into member(id,name,pwd,email) VALUES ('id','name','pwd','email') 쿼리문
  //stat.executeUpdate(query);
  stat.close();
  con.close();
 }
 catch(Exception e){
  out.println( e );
 }
 response.sendRedirect("output.jsp"); 
%>
</body>
</html>