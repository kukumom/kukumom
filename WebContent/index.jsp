<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
 
    table, td, th   {
    border:1px solid green;
    }
 
    th{
    background-color:green;
    color:white;
    }
 
</style>
<title>Insert title here</title>
</head>
<%
  Connection conn = null; // null로 초기화 한다.
  try {
    String url = "jdbc:mysql://kukumom.c3hzxu2bf5no.ap-northeast-2.rds.amazonaws.com:33061/kukumom"; // 사용하려는 데이터베이스명을 포함한 URL 기술
    String id = "root"; // 사용자 계정
    String pw = "!1Qwe123"; // 사용자 계정의 패스워드
    ResultSet rs = null;

    Class.forName("com.mysql.jdbc.Driver"); // 데이터베이스와 연동하기 위해 DriverManager에 등록한다.
    conn = DriverManager.getConnection(url, id, pw); // DriverManager 객체로부터 Connection 객체를 얻어온다.
    out.println("제대로 연결되었습니다."); // 커넥션이 제대로 연결되면 수행된다.
        conn.close();

    }catch (Exception e) {

        out.println("Oracle Database Connection Something Problem. <hr>");

        out.println(e.getMessage());

        e.printStackTrace();

    } finally {
    	conn.close();
    }
%>
</body>
</html>