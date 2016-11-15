<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.regex.Pattern"%>
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
 
    try {
 
        String driverName = "com.mysql.jdbc.Driver"; 
        String url = "jdbc:mysql://kukumom.c3hzxu2bf5no.ap-northeast-2.rds.amazonaws.com:33061/kukumom";
        ResultSet rs = null;
 
        Class.forName(driverName);
        Connection con = DriverManager.getConnection(url,"system","1234");
        out.println("Database Connection Success.");
 
        Statement stmt = con.createStatement();        
        String sql = "select userid, userpw, username from board order by userid desc";
        rs = stmt.executeQuery(sql);
 
%>
 
<body>

	<body>                                            <!-- HTML문서의 주 내용이 들어가는 부분입니다. -->
 
    <h1>게시글 리스트</h1>                        <!-- 헤드라인 글씨를 표현하는 태그입니다. -->
 
    <table>                                       <!-- 표 형식의 데이터를 표현하는 태그입니다. -->
 
        <tr>                                  <!-- table태그 내에서 행을 정의할때 쓰는 태그입니다. -->
 
            <th>번호</th>                     <!-- Table Header의 약자로 table태그 내에서 -->
 
            <th>제목</th>                     <!-- 강조하고싶은 컬럼을 나타낼때 쓰는 태그입니다. -->
 
            <th>작성자</th>
 
            <th>날짜</th>
 
            <th>조회수</th>
 
        </tr>
 
<%   
 
        while(rs.next()){
 
            out.print("<tr>");
 
            out.print("<td>" + rs.getString(1) + "</td>");
 
            out.print("<td> <a href='a_content.jsp?userid="+ rs.getString("userid") +"'>" + rs.getString("userpw") + " </a></td>");
 
            out.print("<td>" + rs.getString(3) + "</td>");
 
            out.print("</tr>");
 
        }
 
%>
 
    </table>
 
    <a href="a_write.jsp">글쓰기</a>
 
<%      
 
        con.close();
 
    }catch (Exception e) {
 
        out.println("Database Connection Something Problem. <hr>");
 
        out.println(e.getMessage());
 
        e.printStackTrace();
 
    }
 
%>
</body>
</html>