<%@ page language="java" contentType="text/html;  charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.text.*"%>
<%@page import="java.sql.*"%>
<%@ include file="dbCon.jsp"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="utf-8">
<title>성장일기 조회</title>
<link rel="stylesheet" type="text/css" href="../css/table.css?ver=3">
<link rel="stylesheet" type="text/css" href="../css/button.css">
<link rel="stylesheet" type="text/css" href="../css/search.css">
<link rel="stylesheet" type="text/css" href="../css/u_style.css?ver=1">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

<%
	try {
		
	String key_pet = request.getParameter("key_pet");
    String key_hos = request.getParameter("key_hos");
    
	/*성장일기*/
	Statement stmt1 = con.createStatement();

	sql = "SELECT A.USERID, A.D_DATE, B.PETNAME, A.D_CONTENT, A.HGHT, A.WEIGHT FROM USRDIARY A JOIN USRPET B WHERE A.PETCODE=B.PETCODE";
	/* String sql1 = "select * FROM USRPET WHERE USERID='kukumom1'"; */


	  if (key_pet != null) {
         sql +=" AND A.PETCODE LIKE '%"+key_pet+"%'";
      }
      if (key_hos != null) {
         sql +=" AND A.D_CONTENT LIKE '%"+key_hos+"%'";
      }
      /* sql +="ORDER BY A.D_DATE DESC"; */
      ResultSet rs1 = null;
      rs1 = stmt1.executeQuery(sql);
%>
<script>
	function dia_del() {
		if (confirm("삭제하시겠습니까?")) {
			var USERID = $('input[name=USERID]:checked', '#diaryListForm')
					.val();
			if (USERID) {
				document.getElementById("USERID_ID").value = USERID;
				document.getElementById("diaryDelForm").submit();
			} else {
				alert("삭제할 일기를 선택해 주세요");
			}
		} else {
			alert("삭제를 취소 했습니다.");
		}
	}

	
   function change_search_pet(thisForm, thisElement) {
      thisForm.submit();
   }
   
   function click_search_hos(thisForm, thisElement) {
      thisForm.submit();
   }
   
   function init_search (thisForm) {
      thisForm.key_pet.value = "";
      thisForm.key_hos.value = "";
      thisForm.submit();
   }
   
 
   
   $(document).ready(function(){
	      var key_pet = "<%=key_pet%>";
	      var key_hos = "<%=key_hos%>";
	      if (key_pet != "null") {
	         if (key_pet) {
	            document.search_form.key_pet.value = key_pet;
	         }
	}
      
      
      if (key_hos != "null") {
         if (key_hos) {
            document.search_form.key_hos.value = key_hos;
         }
      }
   });
</script>
</head>

<body>
	<div class="container" align="center">
		<div id="topbar"></div>
		<div id="header">
			<img src="..\image\hlogo.png" id="logo" width="310" height="130">
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
							<li class='sub'><a href="u_Examlist.jsp">방문내역조회</a></li>
							<li class="sub"><a href="u_qnaquary.jsp">1:1 문의하기</a></li>
							<li class='sub'><a href="u_qnalist.jsp">1:1 문의내역</a></li>
						</ul></li>
					<li><a href="u_calendar.jsp">일정관리</a></li>
					<li class='last'><a href="u_diarylist.jsp">성장일기</a></li>
				</ul>
			</div>
		</div>
		<div class="cont">
			<h2>지난 성장일기를 확인해보세요!</h2>
			<form name="listForm" id="diaryListForm">
				<section>
					<form name="search_form" method="get">
		               <select name="key_pet" onchange="change_search_pet(this.form, this)">
		                  <option value="">선택</option>
		                  <option value="p00000001">깜이</option>
		                  <option value="p00000002">두유</option>
		                  <option value="p00000003">솜이</option>
		                  <option value="p00000004">야옹이</option>
		               </select> 
		               <input type="text" name="key_hos" placeholder="내용을 입력해주세요"> 
		               <input type="button" onclick="click_search_hos(this.form)" class="btn1"  value="검색">
		               <input type="button" onclick="init_search(this.form)" class="btn1"  value="초기화">
		            </form>
					<table border="1" class="table1">
						<thead>
							<tr>
								<th>선택</th>
								<th>날짜</th>
								<th>애완명</th>
								<th>내용</th>
								<th>신장(cm)</th>
								<th>체중(kg)</th>
							</tr>
						</thead>

						<tbody>
						

							<%
								while (rs1.next()) {
							%>
							<tr>
								<td><input type="radio" name="USERID"
									value="<%=rs1.getString("USERID")%>"></td>
								<td><%=rs1.getString("A.d_date")%></td>
								<td><%=rs1.getString("B.petname")%></td>
								<td><a href="u_diarydetail.jsp"><%=rs1.getString("A.d_content")%></a></td>
								<td><%=rs1.getString("A.hght")%></td>
								<td><%=rs1.getString("A.weight")%></td>
							</tr>
							<%
								}
							%>
						</tbody>
					</table>
					<br>
					<p>
						&nbsp;&nbsp;&nbsp;&nbsp; <a href="u_diaryregist.jsp"> <input
							type="button" name="add" class="btn1" value="   추   가     "></a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a href="u_diarymodify.jsp"> <input
							type="button" name="modify" class="btn1" value="  수    정    "></a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a href="#" onclick="dia_del();"
							class="btn1">삭 제</a>
						<!-- <input type="button" name="delete" class="btn1" value="    삭    제    " onclick="showConfirm();" /> -->

					</p>
				</section>
			</form>
			<form name="diary_del_form" id="diaryDelForm" action="u_diarydel.jsp" method="get">
				<input type="hidden" name="USERID" id="USERID_ID">
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
</body>
</html>
