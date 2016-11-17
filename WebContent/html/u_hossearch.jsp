
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.text.*"%>
<%@page import="java.sql.*"%>
<%@ include file="dbCon.jsp"%> 
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>병원서비스-검색</title>
<link rel="stylesheet" type="text/css" href="../css/button.css">
<link rel="stylesheet" type="text/css" href="../css/u_style.css">
<link rel="stylesheet" type="text/css" href="../css/diary.css?ver=2">
<link rel="stylesheet" type="text/css" href="../css/table.css">
<script>
function Show(){
	if (document.all.searchcont.style.display=="none") {
		document.all.searchcont.style.display = "block";
	}
	else {
		document.all.searchcont.style.display = "none";
	}
}
</script>
<style>
.b{
font-size: 20px;
}
#local{
	width: 100px;
	height: 30px;
	font-size: 18px;
}
#a{
	width: 200px;
	height: 30px;
	font-size: 18px;
}
</style>
</head>
<body>
	<center>
		<div class="container" align="center">
		 <div id = "topbar"></div>
	<div id = "header">	
     <img src="..\image\hlogo.png" id="logo" width="310" height="130">
     <div class='menu'>
	 <ul>
	  <li><a href="u_home.jsp">Home</a></li>
	  <li class='active sub'><a href='#'>MY PAGE</a>
		<ul>
		 <li class='sub'><a href="u_memmod.jsp">내정보</a></li>
		 <li class='sub'><a href="u_petlist.jsp">애완동물 관리</a></li>
		 <li class='sub'><a href="u_memhos.jsp">MY병원</a></li>
	 	</ul>
	  </li>
	  <li class='active sub'><a href="'#'">병원서비스</a>
		<ul>
		 <li class='sub'><a href="u_hossearch.jsp">병원검색</a></li>
		 <li class='sub'><a href="u_Examlist.jsp">방문내역조회</a></li>
		 <li class="sub"><a href="u_qnaquary.jsp">1:1 문의하기</a></li>
		 <li class='sub'><a href="u_qnalist.jsp">1:1 문의내역</a></li>
		</ul>
	  </li>
	  <li><a href="u_calendar.jsp">일정관리</a></li>
	  <li class='last'><a href="u_diarylist.jsp">성장일기</a></li>
	</ul>
   </div>
  </div>
		<div class="cont">
			<!-- <div class="cont-left">
				입력
				<table>
					<tr>
						<th>ID</th>
						<td><input type="text" style="width: 100px;" /></td>
						<td rowspan="2"><a href="#" class="logButton">Login</a></td>
					</tr>
					<tr>
						<th>PW</th>
						<td><input type="password" style="width: 100px;" /></td>
					</tr>
				</table>
				버튼
				<table>
					<tr>
						<td><a href="u_memcont.jsp" class="findButton">회원가입</a></td>
						<td><a href="u_findid.jsp" class="findButton">ID찾기</a></td>
						<td><a href="u_findpass.jsp" class="findButton">PW찾기</a></td>
				</table>
			</div> -->
			
			<div class="wrap effect8">
			<div class="cont-right" style="font-size:17px;">
				
					<h2>병원 검색</h2>
					<br> <br>
					<p>
						<input type="checkbox" class="b" name="kind"> 병원명 : 
						<textarea name="text" id="a" rows="1" cols="26"></textarea>
						
					</p>
					<p>
						<input type="checkbox" class="b" name="kind"> 지역별 :
						<select name="city" id="local">
						    <option value="">===================</option>
						    <option value="지 역 별">지 역 별</option>
							<option value="서 울 특 별 시">서 울 특 별 시</option>
							<option value="경 기 도">경 기 도</option>
							<option value="강  원  도">강 원 도</option>
							<option value="충 청 도">충 청 도</option>
							<option value="전 라 도">전 라 도</option>
							<option value="대 구 광 역 시">대 구 광 역 시</option>
							<option value="광 주 광 역 시">광 주 광 역 시</option>
							<option value="인 천 광 역 시">인 천 광 역 시</option>
							<option value="제 주 도">제 주 도</option>
							</select> 
						
						
						<select name="borough" id="local">
						    <option value="">====================</option>
						    <option value="강 남 구">강 남 구</option>
						    <option value="관 악 구">관 악 구</option>
						    <option value="동 대 문 구">동 대 문 구</option>
						    <option value="마 포 구">마 포 구</option>
						    <option value="서 대 문 구">서 대 문 구</option>
						    <option value="서 초 구">서 초 구</option>						    
							<option value="성 동 구">성 동 구</option>
							<option value="송 파 구">송 파 구</option>
							<option value="영 등 포 구">영 등 포 구</option>
							<option value="은 평 구">은 평 구</option>
							<option value="종 로 구">종 로 구</option>
							<option value="중 구">중 구</option>
							<option value="중 랑 구">중 랑 구</option>
						</select>
						
					</p>
					<br>
					<p>
						<!-- <a href="u_hossearchlist.jsp"> -->
						<input type="button" name="search" class="btn1" value="검  색  하  기" onclick="Show();">
						<!-- </a> -->
					</p>
				</div>
				
				
				<span id=searchcont style="display:none;">
				
				<hr/>
				<form name="reg01" action="u_hossearchinsert.jsp" method="get">
				
				<table border="1" class="table1">
				<colgroup>
						<col width="5%" />
						<col width="18%" />
						<col width="32%" />
						<col width="28%" />
						<col width="17%" />
					</colgroup>
					<thead>
						<tr>
							<th>선택</th>
							<th>병원명</th>
							<th>병원소개</th>
							<th>주소</th>
							<th>전화번호</th>
						</tr>
					</thead>
					<tbody>
					<%
					try {
						/*병원검색 리스트*/
						Statement stmt1 = con.createStatement();
						
						/* String sql1 = "select * from HOSINFO A left join USRMYHOS B on A.hoscode=B.hoscode"; */
						String sql1 = "select B.userid,A.hoscode,A.hosname,A.hosinfo,A.hosadd,A.hostel from HOSINFO A left join USRMYHOS B on A.hoscode=B.hoscode";
						ResultSet rs1 = null;
						rs1 = stmt1.executeQuery(sql1);
						
					%>
					<%
						while (rs1.next()) {
								out.print("<tr>");
								
					%>
					
					
						<td><input type="radio" name="HOSCODE" name="<%=rs1.getString("HOSCODE")%>"></td>					
						<td><%=rs1.getString("hosname")%></td>
						<td><%=rs1.getString("hosinfo")%></td>		
						<td><%=rs1.getString("hosadd")%></td>					    
						
						<% String hostel=rs1.getString("hostel"); 
						String a=hostel.substring(0,2);
						String b=hostel.substring(3,7);
						String c=hostel.substring(6);
						/* System.out.println(a); */
						%>
							
						<td><%=a+"-"+b+"-"+c%></td>
						
					<%
						out.print("</tr>");
							}
					%> 
					</tbody>
				</table>
				
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;
					
					<input type="submit" class="btn1" value="병원등록">
					</form>	
					
				</p>
				
			</span>
			</div>
			</div>
			 <%
		} catch (Exception e) {

			out.println("DB연결에 문제 발생 <hr>");

			out.println(e.getMessage());

			e.printStackTrace();

		} finally{
			if (con != null && !con.isClosed()) {
			con.close();
			}
		}
      %>
</body>
</html>
