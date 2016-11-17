<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.text.*"%>
<%@page import="java.sql.*"%>
<%@ include file="dbCon.jsp"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>병원서비스-병원 조회</title>
<link rel="stylesheet" type="text/css" href="../css/table.css">
<link rel="stylesheet" type="text/css" href="../css/button.css">
<link rel="stylesheet" type="text/css" href="../css/u_style.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

 <%
	try {
		/*병원검색 리스트*/
		Statement stmt1 = con.createStatement();
		
		String sql1 = "select * from HOSINFO A left join USRMYHOS B on A.hoscode=B.hoscode";

		ResultSet rs1 = null;
		rs1 = stmt1.executeQuery(sql1);

%>
</head>
<body>
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
		 <li class='sub'><a href="u_Examlist.jsp">진료내역조회</a></li>
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
			</div>-->
			<div class="cont-right">
				<h2>병원 조회 리스트</h2>
				<form name="listForm" id="hossearchListForm">
				<table border="1" class="table1">
				<colgroup>
						<col width="8%" />
						<col width="15%" />
						<col width="32%" />
						<col width="23%" />
						<col width="13%" />
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
					<!-- 
						<tr>
							<td><input type="radio" name="choice" value="choice"></td>
							<td>샤이닝스타</td>
							<td>강아지,고양이 외과 수술전문병원입니다~!</td>
							<td>성동구 응봉동 138-2</td>
							<td>02-1234-5678</td>
						</tr>
						<tr>
							<td><input type="radio" name="choice" value="choice"></td>
							<td>미래병원</td>
							<td>대체의학 주진료</td>
							<td>성동구 이천동 2001</td>
							<td>02-1234-0000</td>
						</tr>
						<tr>
							<td><input type="radio" name="choice" value="choice"></td>
							<td>그랜드동물병원</td>
							<td>16년간 길고양이 중성화 수술을 해 왔습니다!</td>
							<td>성동구 휘경동 248-3번지 2층</td>
							<td>02-1579-1633</td>
						</tr>
						 -->
						 <%
							while (rs1.next()) {
									out.print("<tr>");
									
						%>
						<td><input type="radio" name="HOSCODE" vlaue="<%=rs1.getString("HOSCODE")%>"></td>					
						<td><%=rs1.getString("hosname")%></td>
						<td><%=rs1.getString("hosinfo")%></td>		
						<td><%=rs1.getString("hosadd")%></td>					    
						<td><%=rs1.getString("hostel")%></td>
						
						<%
							out.print("</tr>");
								}
						%> 
					</tbody>
				</table>
				</form>
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="u_hossearchlist.jsp" class="btn1" value="병원등록" onclick="병원이 등록되었습니다.">병원등록</a>
					<a href="u_memhos.jsp" class="btn1" value="내 병 원">내 병 원</a>	
						
				</p>
				<form name="hossearch_del_form" id="hossearchDelForm" action="u_hossearchdel.jsp" method="get">
			<input type="hidden" name="HOSCODE" id="HOSCODE_ID">
		</form>
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
