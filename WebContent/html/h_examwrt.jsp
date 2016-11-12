<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/h_homestyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>진료작성</title>
</head>
<body>
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
	  	<table summary="글쓰기 전체 테이블">
		<form name="BoardWriteForm" method="post" action="Board_Write_action.jsp" 
														onsubmit="return boardWriteCheck();" >
		
   		<colgroup>
   			<col width="20%">
   			<col width="80%">
   		</colgroup>
   	

		<table summary="테이블 구성" >
		<caption>게시판 글쓰기</caption>	
    		<tr>
				<td>작성자</td>
				<td><input type=text name=name size=10 maxlength=8></td>
			</tr>
			<tr>
	 			<td>E-Mail</td>
	 			<td><input type=text name=email size=30></td>
    		</tr>
    		<tr>
     			<td>홈페이지</td>
     			<td><input type=text name=homepage size=30></td>
    		</tr>
    		<tr>
     			<td>제 목</td>
     			<td><input type=text name=title></td>
    		</tr>
    		<tr>
     			<td>내 용</td>
     			<td><textarea name=content rows ="10" cols="100"></textarea></td>
    		</tr>
    		<tr>
     			<td>비밀번호</td> 
     			<td><input type=password name=password size=15 maxlength=15></td>
    		</tr>
    		<tr>
     			<td colspan=2><hr size=1></td>
    		</tr>
    		<tr>
     			<td colspan="2"><div align="center">
     			<input type="submit" value="등록" >&nbsp;&nbsp;
         		<input type="button" value="뒤로" onclick="move('Board_List.jsp');"></div>
     			</td>
    		</tr> 
		</table>
	</form> 
</table>
	  
	</div>
</body>
</html>