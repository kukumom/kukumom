<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ include file="dbCon.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>본격! 게시판 - 게시글 조회</title>
</head>
<body>
<table border="1">
  <colgroup>
    <col width="20">
    <col width="60">
    <col width="200">
    <col width="500">
    <col width="90">
    <col width="90">
  </colgroup>
  <thead>
  <tr>
    <th>ID</th>
    <th>작성자</th>
    <th>제목</th>
    <th>내용</th>
    <th>등록일시</th>
    <th>수정일시</th>
  </tr>
  </thead>
  <tbody>
  <%
    ResultSet rs = null;
    try {
      Statement stmt = con.createStatement();
      String sql = "select * from BOARD ORDER BY id DESC";
      rs = stmt.executeQuery(sql);
      while (rs.next()) {
  %>
  <tr>
    <td><%=rs.getInt("id")%></td>
    <td><%=rs.getString("user")%></td>
    <td><%=rs.getString("title")%></td>
    <td><%=rs.getString("content")%></td>
    <td><%=rs.getDate("reg_dt")%></td>
    <td><%=rs.getDate("mod_dt")%></td>
  </tr>
  <%
    }
  <%
    } catch (Exception e) {
      e.getStackTrace();
    } finally {
      if (con != null && !con.isClosed()) {
        con.close();
      }
    }
  %>
  </tbody>
</table>
</body>

</html>