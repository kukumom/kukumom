<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/h_homestyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>꾸꾸맘-병원</title>
</head>
<body>
  <header>
    <div id = topbar>
	  ID  <input type="text" id="hoscode" size="10"> PW <input type="text" size="10">
	  <input type="submit" value="login" class="button">
	  <input type="submit" value="회원가입" class="button">
	  <input type="submit" value="아이디/비밀번호 찾기" class="button"> 
    </div>
		
	<div id = "header">
	  <img src="..\image\hlogo.png" id="logo" width="310" height="130">
      <div class = "menu">
		<ul>
		  <li><a href="u_home.jsp">Home</a></li>
		  <li class='active sub'><a href='#'>MY PAGE</a>
		    <ul>
		       <li class='sub'> <a href="h_memmod.html">병원정보 </a></li>
		    </ul></li>
          <li class="active sub"><a href="H_gardian_rgst.html">환자관리</a>
            <ul>
              <li class="sub"><a href="h_examwrt.jsp">진료작성</a></ul></li>
		  <li><a href="u_calendar.jsp">일정관리</a></li>
		  <li class='last'> <a href="H_qnareply.html">1:1문의</a></li>
		</ul>
	  </div>
	</div>
	
	<div id="cont">
	  ddd
	</div>
</body>
</html>