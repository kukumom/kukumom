<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.text.*"%>
<%-- <%@page import="java.util.regex.Pattern"%> --%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>꾸꾸맘</title>
<link rel="stylesheet" type="text/css" href="../css/u_style.css?ver=1">
<link rel="stylesheet" type="text/css" href="../css/table.css?ver=1">
<link rel="stylesheet" type="text/css" href="../css/button.css">
<script language="javascript">
	function cal_del() {
		if (confirm("삭제하시겠습니까?")) {
			var CALCONT = $('input[name=CALCONT]:checked', '#calListForm').val();
			if (CALCONT) {
				document.getElementById("CAL_CONT").value = CALCONT;
				document.getElementById("calDelForm").submit();
			} else {
				alert("삭제할 펫을 선택해 주세요");
			}
		} else {
			alert("삭제를 취소 했습니다.");
		}
	}
</script>
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
		/* out.println("제대로 연결되었습니다."); // 커넥션이 제대로 연결되면 수행된다. */
		
		String sql = "select calstime,caledtime,calcate,calcont from USRSCHEDULE order by calsdate desc";
		Statement stmt = conn.createStatement();
		
		rs = stmt.executeQuery(sql);
%>

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
			</div> -->
			<div class="cont-right">
				<br/><br/><br/>
				<h3>2016-11-18</h3>
				<form name="listForm" id="calListForm">
				<table class="table1" align="center">
					<colgroup>
							<col width="10%" />
							<col width="15%" />
							<col width="15%" />
							<col width="10%" />
							<col width="50%" />
						</colgroup>
						<thead>
							
							<tr>
								<th>선택</th>
								<th>시작시간</th>
								<th>종료시간</th>
								<th>구분</th>
								<th>내용</th>
							</tr>
						</thead>
						<tbody>
							<%
							while (rs.next()) {
									out.print("<tr>");
						%>
							<td><input type="radio" name="CALCONT"></td>
							<td><%=rs.getString("CALSTIME")%></td>
							<td><%=rs.getString("CALEDTIME")%></td>
							<td><%=rs.getString("CALCATE")%></td>
							<td><%=rs.getString("CALCONT")%></td>

							<%
							out.print("</tr>");
							}
						%>
							
						</tbody>
					</table>
				
				<br>
				<div align="center">
					<a href="u_calregst.jsp" class="btn1">추가</a> 
					<a href="#"	class="btn1" onclick="cal_del();">삭제</a>
				</div>
				
				<%-- <% 
				System.out.print("USERID");
				System.out.print("CALSDATE");
				System.out.print("CALSTIME");
				System.out.print("CALCONT");
				%> --%>
				
				</form>
			</div>
		</div>
		
		<form name="cal_del_form" id="calDelForm" action="u_caldel.jsp" method="get">
					<input type="hidden" name="CALSCONT" id="CAL_CONT">
				</form>
		<div id="footer">Blog is powered by <a href="#"	onclick="window.open(this.href); 
					return false" title="Daum 바로가기" style="text-decoration: none">건강하조</a>
					 / Designed by <a href="#" title="Tistory 바로가기" style="text-decoration: none">꾸꾸맘</a>
		</div>
	</div>
	<%
			} catch (Exception e) {

				out.println("Database Connection Something Problem. <hr>");

				out.println(e.getMessage());

				e.printStackTrace();

			} finally {
				conn.close();
			}
		%>
</body>
</html>