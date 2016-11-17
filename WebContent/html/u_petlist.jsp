<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.text.*"%>
<%@page import="java.sql.*"%>
<%@ include file="dbCon.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>꾸꾸맘</title>
<link rel="stylesheet" type="text/css" href="../css/u_style.css?ver=3">
<link rel="stylesheet" type="text/css" href="../css/table.css?ver=1">
<link rel="stylesheet" type="text/css" href="../css/button.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<%
	try {
		/*펫관리*/
		Statement stmt1 = con.createStatement();

		String sql1 = "select * FROM USRPET WHERE USERID='kukumom1'";

		ResultSet rs1 = null;
		rs1 = stmt1.executeQuery(sql1);
%>


<script language="javascript">
	function pet_del() {
		if (confirm("삭제하시겠습니까?")) {
			var PETCODE = $('input[name=PETCODE]:checked', '#petListForm').val();
			if (PETCODE) {
				document.getElementById("PETCODE_ID").value = PETCODE;
				document.getElementById("petDelForm").submit();
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

				<h2>애완동물 목록</h2>
				<form name="listForm" id="petListForm">
				<table class="table1">
					<colgroup>
						<col width="8%" />
						<col width="20%" />
						<col width="27%" />
						<col width="15%" />
						<col width="30%" />
					</colgroup>
					<thead>
						<tr>
							<th>선택</th>
							<th>종류</th>
							<th>품종</th>
							<th>이름</th>
							<th>생년월일</th>
							<th>성별</th>
						</tr>
					</thead>
					<tbody>

						<!-- <tr>
								<td><input type="radio" name="pet"></td>
								<td>고양이</td>
								<td class="left">미미</td>
								<td>수컷</td>
								<td>2010.08.28</td>
							</tr>
							<tr>
								<td><input type="radio" name="pet"></td>
								<td>개</td>
								<td class="left">꾸꾸</td>
								<td>수컷</td>
								<td>2016.07.14</td>
							</tr> -->

						<%
							while (rs1.next()) {
									out.print("<tr>");
						%>
						<td><input type="radio" name="PETCODE" value="<%=rs1.getString("PETCODE")%>"></td>
						<td><%=rs1.getString("PETCATE")%></td>
						<td><%=rs1.getString("PETKIND")%></td>
						<td><%=rs1.getString("PETNAME")%></td>
						<td><%=rs1.getString("PETBIRTH")%></td>
						<td><%=rs1.getString("PETGENDER")%></td>
						<%
							out.print("</tr>");
								}
						%>

					</tbody>
				</table>
				</form>
				<p>
					<a href="u_petadd.jsp" class="btn1">추 가</a>&nbsp;&nbsp;&nbsp;
					<a href="u_petmod.jsp" class="btn1" style="color: fff;">수 정</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#" onclick="pet_del();" class="btn1">삭 제</a>
				</p>
		<form name="pet_del_form" id="petDelForm" action="u_petdel.jsp" method="get">
			<input type="hidden" name="PETCODE" id="PETCODE_ID">
		</form>
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

	</div>

</body>
</html>