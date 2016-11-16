<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="dbCon.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>성장일기 조회</title>
<link rel="stylesheet" type="text/css" href="../css/u_style.css">
<link rel="stylesheet" type="text/css" href="../css/diary.css">
<link rel="stylesheet" type="text/css" href="../css/button.css">

<%
	try {
		/*diarydetail*/
		Statement stmt1 = con.createStatement();
		
		/* 2개 JOIN - 성장일기와 펫정보*/
		String sql1 = "select A.D_DATE, B.PETNAME, A.D_CONTENT, A.UPROAD, A.HGHT, A.WEIGHT FROM USRDIARY A JOIN USRPET B ON A.PETCODE=B.PETCODE WHERE B.PETCODE='P00000007'";
		/* "select A.Q_TITLE, B.USERNAME, C.PETNAME, A.Q_DATE, A.Q_CONTENT FROM USRQNA A LEFT JOIN USRINFO B ON A.USERID=B.USERID LEFT JOIN USRPET C ON A.PETCODE=C.PETCODE where A.USERID= 'kukumom1'"; */
		
		
		ResultSet rs1 = null;
		rs1 = stmt1.executeQuery(sql1);

%>

</head>
<body>
	
			<div class="container" align="center">
		<div class="topWrap">
		
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
			
			<div class="cont-right"  style="font-size:17px;">
				<div class="wrap effect8">
				
				<%
							while (rs1.next()) {
									out.print("<tr>");	
									%>

					<h1>오늘의 일기를 조회합니다~^^</h1>
					<br>
					<p>
						날짜선택:&nbsp;
						<input type="date" name="A.D_DATE" value="<%=rs1.getString("A.D_DATE")%>">
						<%-- <input type="date" name="A.D_DATE" value="<%=rs1.getString("A.D_CONTENT")%>"> --%>&nbsp;&nbsp;&nbsp;
						동물선택:&nbsp;<select name="petchoice">							
							<option value="1111">꾸꾸</option>
							<option value="1112">두유</option>
							<option value="1113">멍멍이</option>
						</select>
					</p>
					<br>
					<p>
					<textarea rows="5" cols="80" ><%=rs1.getString("A.D_CONTENT")%></textarea>
						<!-- <textarea name="D_CONTENT" rows="5" cols="80">오늘은 꾸꾸 덕분에 많이 웃을 수 있는 하루인 듯ㅋㅋㅋㅋ너무 귀여움헤헤헤헿 먹이도 잘 먹고 앞에서 얼마나 재롱을 부리던지…정말 귀엽다ㅠㅠㅠㅠㅠ계속 이대로만 건강하게 자라다오ㅠㅠ!!!사랑해 꾸꾸야><♥</textarea> -->
					</p>
					<p>
					<h4>★애완동물의 사진을 올려주세요★</h4>
					<input type="file" name="A.UPROAD"><%=rs1.getString("A.UPROAD")%>
					</p>
					<p>
						<img src="..\image\puppy01.png" alt="애완동물 사진" />;
					</p>


					<p>
						신장:&nbsp;
						<input type="number" min="0" max="900" name="HGHT" value="<%=rs1.getString("A.HGHT")%>">&nbsp;cm						
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 체중:&nbsp;
						<input type="number" min="0" max="99" name="WEIFHT" value="<%=rs1.getString("A.WEIGHT")%>">&nbsp;kg
						<br>
					</p>

							<%
							out.print("</tr>");
								}
						%>   
						
					<br>
					<p>
						<input type="submit" name="save" class="btn1" value="  저  장  " onclick="alert('저장 되었습니다.')">
						<a href="u_diarylist.jsp"><input type="button" name="cancel"
							class="btn1" value="  취  소  " onclick="alert('취소 되었습니다.')"></a>
					</p>
				</div>
			</div>
			<div>
			<div>
			
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
