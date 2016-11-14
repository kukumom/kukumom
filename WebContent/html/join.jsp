<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 /* -- join.jsp --
 * input으로부터 넘어온 데이타들을 변수화 후에
 * 데이타베이스로 쿼리문을 보낸다.
 * 그 이후 output.jsp에서 데이터베이스에 추가된
 * 회원들의 정보를 출력한다.
 */

<%@ page contentType="text/html;charset=utf-8" import="java.sql.*" %>
<%
 request.setCharacterEncoding("utf-8");  //Set encoding
 String id  =        request.getParameter("userid");            

 String pw =     request.getParameter("userpw");

//POST로 Input.html로부터 입력받은 내용을 변수화

 try{
  Class.forName("com.mysql.jdbc.Driver");
  String url = "jdbc:mysql://localhost:1521/web02?useUnicode=true&characterEncoding=utf-8";
  Connection con = DriverManager.getConnection(url,"system","1234");
  Statement stat = con.createStatement();
  String query = "INSERT INTO usrinfo(userid, userpw)  VALUES('"+id+"','"+pw+"')";
//INSERT into member(id,name,pwd,email) VALUES ('id','name','pwd','email') 쿼리문
  stat.executeUpdate(query);
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