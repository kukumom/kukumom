<%@ page language="java"  contentType="text/html;  charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.util.*,java.text.*"%>
	<%@page import="java.sql.*"%>
	 <%@ include file="dbCon.jsp"%> 
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="utf-8">
<title>성장일기 조회</title>
<link rel="stylesheet" type="text/css" href="../css/table.css?ver=1">
<link rel="stylesheet" type="text/css" href="../css/button.css">
<link rel="stylesheet" type="text/css" href="../css/search.css">
<link rel="stylesheet" type="text/css" href="../css/u_style.css?ver=1">

 <%
	try {
		/*성장일기*/
		Statement stmt1 = con.createStatement();
		
		String sql1 = "select A.d_date, B.petname, A.d_content, A.hght, A.weight from USRDIARY A join USRPET B where A.petcode=B.petcode";

		ResultSet rs1 = null;
		rs1 = stmt1.executeQuery(sql1);

%>
<div class="cont-right">
			<script language="javascript">
				function showConfirm() {
					if (confirm("삭제하시겠습니까?")) {
						alert("삭제되었습니다.")
					} else {
						alert("취소되었습니다.")
					}
				}
			</script>
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
							<li class='sub'><a href="U_hossearch.jsp">병원검색</a></li>
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
			</div>
			-->
		
	 			  
					<h2>지난 성장일기를 확인해보세요!</h2>
					<section>
					<select name="searchoice">
						<option value="petname">애완명</option>
						<option value="text">꾸꾸</option>
						<option value="text">두유</option>
						<option value="text">도치</option>

					</select> <input type="date" name="날짜"> <input type="text"
						placeholder="내용 입력">&nbsp;&nbsp;<input type="button" class="btn1" value="검 색">
					</section>
	
					<table border="1" class="table1">
						<thead>
							<tr>
								<th>선택</th>
								<th>날짜</th>
								<th>애완명</th>
								<th>내용</th>
								<th>신장</th>
								<th>체중</th>
							</tr>
						</thead>
	 		
	 				<tbody>
	 				<!-- 
							<tr>
								<td><input type="checkbox" name="choice" value="choice"></td>
								<td>2016.07.21</td>
								<td>꾸꾸</td>
								<td><a href="u_diarydetail.jsp">오늘은 꾸꾸 덕분에 많이 웃을 수 있는
										하루인 듯.</a></td>
								<td>10cm</td>
								<td>2kg</td>
							</tr>
							<tr>
								<td><input type="checkbox" name="choice" value="choice"></td>
								<td>2016.07.13</td>
								<td>꾸꾸</td>
								<td>꾸꾸가 아픈 날 ㅠㅠ힘이 없어보인다</td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td><input type="checkbox" name="choice" value="choice"></td>
								<td>2016.07.08</td>
								<td>두유</td>
								<td>졸려보임. 잠을 못 잔듯 함.</td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td><input type="checkbox" name="choice" value="choice"></td>
								<td>2016.07.07</td>
								<td>도치</td>
								<td>배고프다고 징징대는 날</td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td><input type="checkbox" name="choice" value="choice"></td>
								<td>2016.07.04</td>
								<td>꾸꾸</td>
								<td>--ㅇㄹㄴㄹ</td>
								<td>3cm</td>
								<td>0.80kg</td>
							</tr>
							-->
							
						<%
							while (rs1.next()) {
									out.print("<tr>");
									
						%>
						<td><input type="radio" vlaue="choice"></td>					
						<td><%=rs1.getString("A.d_date")%></td>
						<td><%=rs1.getString("B.petname")%></td>		
						<td><a href="u_diarydetail.jsp"><%=rs1.getString("A.d_content")%></a></td>					    
						<td><%=rs1.getString("A.hght")%></td>
						<td><%=rs1.getString("A.weight")%></td>
						<%
							out.print("</tr>");
								}
						%> 
						</tbody>
					</table>
					<br>
					<p>	
						&nbsp;&nbsp;&nbsp;&nbsp; <a href="u_diaryregist.jsp"> <input
							type="button" name="add" class="btn1" value="     추   가     "></a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a href="u_diarymodify.jsp"> <input
							type="button" name="modify" class="btn1" value="    수    정    "></a>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="button" name="delete" class="btn1" value="    삭    제    " onclick="showConfirm();" />
							
					</p>
		</div>
		</div>
		 <%
		con.close();

		} catch (Exception e) {

			out.println("DB연결에 문제 발생 <hr>");

			out.println(e.getMessage());

			e.printStackTrace();

		}finally {
			con.close();
		}
		
	%> 
		</body>
</html>
