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
Connection conn = null; // null로 초기화 한다.
try {
  String url = "jdbc:mysql://kukumom.c3hzxu2bf5no.ap-northeast-2.rds.amazonaws.com:33061/kukumom"; // 사용하려는 데이터베이스명을 포함한 URL 기술
  String id = "root"; // 사용자 계정
  String pw = "!1Qwe123"; // 사용자 계정의 패스워드
  ResultSet rs = null;

  Class.forName("com.mysql.jdbc.Driver"); // 데이터베이스와 연동하기 위해 DriverManager에 등록한다.
  conn = DriverManager.getConnection(url, id, pw); // DriverManager 객체로부터 Connection 객체를 얻어온다.
  out.println("제대로 연결되었습니다."); // 커넥션이 제대로 연결되면 수행된다.
     

      
 
        Statement stmt = conn.createStatement();        
 
        String sql = "select * from board order by idx desc";
 
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
 
            out.print("<td> <a href='a_content.jsp?idx="+ rs.getString("idx") +"'>" + rs.getString("title") + " </a></td>");
 
            out.print("<td>" + rs.getString(3) + "</td>");
 
            out.print("<td>" + rs.getString(4) + "</td>");
 
            out.print("<td>" + rs.getString(5) + "</td>");
 
            out.print("</tr>");
 
        }
 
%>
 
    </table>
 
    <a href="a_write.jsp">글쓰기</a>
 
<%      
}catch (Exception e) {

    out.println("Database Connection Something Problem. <hr>");

    out.println(e.getMessage());

    e.printStackTrace();

} finally {
	conn.close();
}
%>
</body>
</html>