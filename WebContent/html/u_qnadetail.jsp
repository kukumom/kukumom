<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="dbCon.jsp"%>
<html>
<head>
<meta charset="utf-8">
<title>보호자 문의 상세 조회</title>
<link rel="stylesheet" type="text/css" href="../css/table.css?ver=1">
<link rel="stylesheet" type="text/css" href="../css/button.css">
<link rel="stylesheet" type="text/css" href="../css/u_style.css">
<link rel="stylesheet" type="text/css" href="../css/diary.css">

<%
	try {
		/*QnA 상세조회*/
		Statement stmt1 = con.createStatement();
		
		/* JOIN 4개 - 병원 상세 내역과 병원측의 답변 조회*/
		String sql1 = "select A.Q_TITLE, B.USERNAME, C.PETNAME, A.Q_DATE, A.Q_CONTENT, D.HOSNAME , A.QNAREPLY FROM USRQNA A LEFT JOIN USRINFO B ON A.USERID=B.USERID LEFT JOIN USRPET C ON A.PETCODE=C.PETCODE LEFT JOIN HOSINFO D ON A.HOSCODE=D.HOSCODE where A.USERID= 'kukumom1'";
		/* "select A.Q_TITLE, B.USERNAME, C.PETNAME, A.Q_DATE, A.Q_CONTENT FROM USRQNA A LEFT JOIN USRINFO B ON A.USERID=B.USERID LEFT JOIN USRPET C ON A.PETCODE=C.PETCODE where A.USERID= 'kukumom1'"; */
		
		
		ResultSet rs1 = null;
		rs1 = stmt1.executeQuery(sql1);

%>

</head>

<body>
	
		<div class="container" align="center">
		<div class="topWrap">
		<div class="login" align="right">
				<a href="u_memcont.jsp" class="findButton">회원가입</a>
				<a href="u_findid.jsp" class="findButton">ID찾기</a>
				<a href="u_findpass.jsp" class="findButton">PW찾기</a>
				<span >ID
				<input type="text" style="width: 100px;" /></span>
				<span  >PW
				<input type="password" style="width: 100px;" /></span>
				<a href="#" class="logButton">LOGIN</a>
			</div>
			<div class="logo">
				<p style="display: inline;">
					<img  src="../image/logo.png" width="180" height="150" />
				</p>
			</div>
			
			
			<div class='menu'>
				<ul>
					<li><a href="u_home.jsp">Home</a></li>
					<li class='active sub'><a href='#'>MY PAGE</a>
						<ul>
							<li class='sub'><a href="u_memmod.jsp">내정보</a></li>
							<li class='sub'><a href="u_petlist.jsp">애완동물 관리</a></li>
							<li class='sub'><a href="u_memhos.jsp">MY병원</a></li>
						</ul></li>
					<li class='active sub'><a href="'#'">병원서비스</a>
						<ul>
							<li class='sub'><a href="u_hossearch.jsp">병원검색</a></li>
							<li class='sub'><a href="u_Examlist.jsp">진료내역조회</a></li>
							<li class="sub"><a href="u_qnaquary.jsp">1:1 문의하기</a></li>
							<li class='sub'><a href="u_qnalist.jsp">1:1 문의내역</a></li>
						</ul></li>
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
				<div class="wrap effect8">
					<h2>문의 내역 상세보기</h2>
					<table border="3" class="table1">
					
					<%
							while (rs1.next()) {
									out.print("<tr>");	
									%>
									
									
						<thead>
							<tr>
								<th>제목</th>
								<td colspan="5"><%=rs1.getString("A.Q_TITLE")%></td>
							</tr>
							<tr>
								<th>작성자</th>
								<td><%=rs1.getString("B.USERNAME")%></td>
								<th>애완동물</th>
								<td><%=rs1.getString("C.PETNAME")%></td>								
								<th>날짜</th>
								<td><%=rs1.getString("A.Q_DATE")%></td>	
							</tr>																							    						   										 												
						</thead>
						
						<tbody>
							<tr>
							<td colspan="6"><%=rs1.getString("A.Q_CONTENT")%></td>	
								<!-- <td colspan="6"><textarea name="text" rows="8" cols="60">어제부터 집에서 나오지도 않고 밥도 안 먹어요… 왜 그런걸까요…?</textarea></td> -->
							</tr>
							
						
						</tbody>
					</table>

					<table border="1" class="table1">
						<thead>
							<tr>
								<th>작성자</th>
								<td><%=rs1.getString("D.HOSNAME")%></td>
								<th>날짜</th>
								<td><%=rs1.getString("A.Q_DATE")%></td>
							</tr>
						</thead>
						<tbody>
						
							 <tr>
								<td colspan="4"><%=rs1.getString("A.QNAREPLY")%></td>
								<!-- <textarea name="text" rows="3" cols="60">직접 보지 않고는 원인을 모르겠습니다. 병원에 방문해주세요!</textarea> -->
								</td>
							</tr>
							
							<%
							out.print("</tr>");
								}
						%>   
											
						</tbody>
					</table>
					<p>
						&nbsp;&nbsp;&nbsp;&nbsp;<a href="u_qnalist.jsp"> <input
							type="button" name="list" class="btn1" value="목   록"></a>
					</p>
				</div>
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
	
</body>
</html>
