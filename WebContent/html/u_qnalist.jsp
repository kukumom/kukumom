<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="dbCon.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>보호자 1:1 문의 목록</title>
<link rel="stylesheet" type="text/css" href="../css/table.css?ver=1">
<link rel="stylesheet" type="text/css" href="../css/button.css">
<link rel="stylesheet" type="text/css" href="../css/u_style.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<%
   try {

      /*QnA list*/

      String key_pet = request.getParameter("key_pet");
      String key_hos = request.getParameter("key_hos");
      
      /*QnA*/

      Statement stmt1 = con.createStatement();
      sql =" SELECT B.hosname, C.petname, A.q_content, A.q_date"
         +" FROM USRQNA A"
         +" LEFT JOIN HOSINFO B ON A.hoscode=B.hoscode"
         +" LEFT JOIN USRPET C ON A.petcode=C.petcode"
         +" WHERE 1=1";
      
      if (key_pet != null) {
         sql+=" AND C.petcode LIKE '%"+key_pet+"%'";
      }
      if (key_hos != null) {
         sql+=" AND B.hosname LIKE '%"+key_hos+"%'";
      }
      sql+=" ORDER BY A.q_date DESC";
      ResultSet rs1 = null;
      rs1 = stmt1.executeQuery(sql);
%>
<script>
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
   
   function showConfirm() {
      if (confirm("삭제하시겠습니까?")) {
         alert("삭제되었습니다.")
      } else {
         alert("취소되었습니다.")
      }
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
         <div class="cont-right">
            <h1>문의 목록</h1>
            <form name="search_form" method="get">
               <select name="key_pet" onchange="change_search_pet(this.form, this)">
                  <option value="">선택</option>
                  <option value="p00000001">멍멍이</option>
                  <option value="p00000002">두유</option>
                  <option value="p00000003">고양이이</option>
               </select> 
               <input type="text" name="key_hos" placeholder="찾고자 하는 병원을 입력해주세요"> 
               <input type="button" onclick="click_search_hos(this.form)" value="검색">
               <input type="button" onclick="init_search(this.form)" value="초기화">
            </form>
            <table border="1" class="table1">
               <colgroup>
                  <!-- <col width="20"> -->
                  <col width="200">
                  <col width="150">
                  <col width="">
                  <col width="110">
               </colgroup>
               <thead>
                  <tr>
                     <!-- <th>선택</th> -->
                     <th>병원</th>
                     <th>애완명</th>
                     <th>제목</th>
                     <th>날짜</th>
                  </tr>
               </thead>
               <tbody>
                  <%
                     while (rs1.next()) {
                  %>
                  <tr>
                     <!-- <td><input type="radio" value="choice"></td> -->
                     <td><%=rs1.getString("B.hosname")%></td>
                     <td><%=rs1.getString("C.petname")%></td>
                     <td><a href="u_qnadetail.jsp"><%=rs1.getString("A.q_content")%></a></td>
                     <td><%=rs1.getString("A.q_date")%></td>
                  </tr>
                  <%
                     }
                  %>
               </tbody>
            </table>
            <!-- <p>
               <input type="button" name="delete" class="btn1" value="삭제"
                  onclick="change_search_pet()" />
            </p> -->
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