<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.text.*"%>
<%-- <%@page import="java.util.regex.Pattern"%> --%>
<%@page import="java.sql.*"%>
<%@ include file="dbCon.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>꾸꾸맘</title>
<link rel="stylesheet" type="text/css" href="../css/u_style.css?ver=1">
<link rel="stylesheet" type="text/css" href="../css/table.css?ver=1">
<link rel="stylesheet" type="text/css" href="../css/button.css">
<%
	try {
		Statement stmt1 = con.createStatement();
		
		String sql1 ="SELECT USERID,CALSTIME,CALEDTIME,CALCATE,CALCONT FROM USRSCHEDULE ORDER BY CALSDATE DESC";
	    ResultSet rs1 = null;
		rs1 = stmt1.executeQuery(sql1);
		
		
%>

<script language="javascript">
	
	function cal_del() {
		if (confirm("삭제하시겠습니까?")) {
			var USERID = $('input[name=USERID]:checked', '#calListForm').val();
			
			if (USERID) {
				document.getElementById("USER_ID").value = CALCONT;
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
							<td><input type="radio" name="USERID" value="<%=rs1.getString("USERID")%>"></td>
							<td><%=rs1.getString("CALSTIME")%></td>
							<td><%=rs1.getString("CALEDTIME")%></td>
							<td><%=rs1.getString("CALCATE")%></td>
							<td><%=rs1.getString("CALCONT")%></td>
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
				</form>
			<form name="cal_del_form" id="calDelForm" action="u_caldel.jsp" method="get">
				<input type="hidden" name="USERID" id="USER_ID">
			</form>	
				
			</div>
		</div>
		
		
		<div id="footer">Blog is powered by <a href="#"	onclick="window.open(this.href); 
					return false" title="Daum 바로가기" style="text-decoration: none">건강하조</a>
					 / Designed by <a href="#" title="Tistory 바로가기" style="text-decoration: none">꾸꾸맘</a>
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