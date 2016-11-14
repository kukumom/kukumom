<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%@ page contentType="text/html;charset=UTF-8"%>

<%
    // 로그인 정보 설정
    String userid="id";
    String userpw="pwd";
    
    // login.jsp로부터 form data를 받는다
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    
    // id, pwd가 맞을 경우 실행
    if(userid.equals(id) && userpw.equals(pwd)) 
    {
  //      session.setAttribute("s_Name",username);
        session.setAttribute("s_Id", userid);
        response.sendRedirect("./u_home.jsp"); // main.jsp 에 session 정보를 보낸다
    }
    else
    {
        response.sendRedirect("./u_home.jsp");
    }
%>
</body>
</html>