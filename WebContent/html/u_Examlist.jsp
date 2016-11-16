<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.util.*,java.text.*"%>
	<%@page import="java.sql.*"%>
	 <%@ include file="dbCon.jsp"%> 
<!doctype html>
<html lang='ko'>

<head>
<meta charset="utf-8" />
<title>진료 방문 내역</title>
<link rel="stylesheet" type="text/css" href="../css/u_style.css">
<link rel="stylesheet" type="text/css" href="../css/table.css?ver=1">
<link rel="stylesheet" type="text/css" href="../css/button.css">
<%
	try {
		/*성장일기*/
		Statement stmt1 = con.createStatement();
		
		String sql1 = "select A.E_DATE, B.HOSNAME, C.PETNAME, A.E_CONTENT FROM USREXAM A LEFT JOIN HOSINFO B ON A.HOSCODE=B.HOSCODE LEFT JOIN USRPET C ON A.PETCODE=C.PETCODE";
		ResultSet rs1 = null;
		rs1 = stmt1.executeQuery(sql1);

%>

</head>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="http://malsup.github.com/jquery.cycle2.js"></script>
<script type="text/javascript">
	function move(url) {
		location.href = url;
	}
</script>

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

			<br>
			<br>
			

				<p>
					병원선택 : <select name="hosname">
					<option></option>
					<option></option>
					<option></option>
					<option></option>
					<option></option>
					</select>
					     
					    	
					애완동물선택 :  <select name="petname">
					<option></option>
					<option></option>
					<option></option>
					<option></option>
					<option></option>
					</select>
						
					
				</p>
				<table border style="" class="table1">
					<thead>
						<tr>
							<th width=15%>날짜</th>
							<th width=20%>병원명</th>
							<th width=10%>애완명</th>
							<th width=40%>내용</th>
						</tr>
					</thead>

					<tbody>
					
						<!-- <tr>

							<td>2016.08.30</td>
							<td>그랜드동물병원</td>
							<td>꾸꾸</td>
							<td>경과체크</td>
						</tr>
						<tr>

							<td>2016.07.30</td>
							<td>그랜드동물병원</td>
							<td>꾸꾸</td>
							<td><a href="u_Examlist_detail.jsp">건강검진</td>
						</tr>
						<tr>

							<td>2016.06.01</td>
							<td>소망동물병원</td>
							<td>두유</td>
							<td>정기검진2차</td>
						</tr>
						<tr>

							<td>2016.03.01</td>
							<td>소망동물병원</td>
							<td>도치</td>
							<td>정기검진1차</td>
						</tr>
						<tr>

							<td>2016.01.30</td>
							<td>행복동물병원</td>
							<td>꾸꾸</td>
							<td>예방접종1차</td>
						</tr> -->
							
						<%
							while (rs1.next()) {
									out.print("<tr>");
									
						%>
										
						<td><%=rs1.getString("A.E_DATE")%></td>
						<td><%=rs1.getString("B.HOSNAME")%></td>		
						<td><%=rs1.getString("C.PETNAME")%></td>					    
						<td><%=rs1.getString("A.E_CONTENT")%></td>
						
						<%
							out.print("</tr>");
								}
						%>   
					</tbody>


				</table>
			</div>
		</div>
	<%
		

		} catch (Exception e) {

			out.println("DB연결에 문제 발생 <hr>");

			out.println(e.getMessage());

			e.printStackTrace();
			
		} finally {
    		if (con != null && !con.isClosed()) {
     	         con.close();
    	}

		}
		
	%> 
	<footer> </footer>
	</div>
</body>

</html>
