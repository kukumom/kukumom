<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>꾸꾸맘</title>

<link rel="stylesheet" type="text/css" href="../css/u_style.css">
<link rel="stylesheet" type="text/css" href="../css/table.css">

<script>

</script>
<style>
  .cont-right td {
      text-decoration: none;
      padding: 0px;
      width: 100px;
      height: 100px;
      
  }
  .cont-right th{
  	font-size: 18;
  }
  
  .cont-right  font {
      text-decoration: none;
      line-height: 130%;
      
  }
  
  .cont-right A:link,
  .cont-right A:active,
  .cont-right A:visited {
      text-decoration: none;
      color: '#333333';
  }
  
  .cont-right A:hover {
      text-decoration: none;
      color: 'ff9900'
  }
  
</style>
<script>
var monthName = new Array("1월", "2월", "3월", "4월", "5월", "6월", "7월",
        "8월", "9월", "10월", "11월", "12월")
    var monthDays = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)
    var now = new Date()
    var nowd = now.getDate()
    var nowm = now.getMonth()
    var nowy = now.getFullYear()

    function showCalendar(day, month, year) {
        if ((year % 4 == 0 || year % 100 == 0) && (year % 400 == 0)) monthDays[1] = 29;
        else monthDays[1] = 28 //leap year test
        var firstDay = new Date(year, month, 1).getDay()
        var calStr = "<table  border=0 cellpadding=5 cellspacing=1  bgcolor=#CCCCCC><form action='u_callist.jsp' method='post'>"
        calStr += "		<tr bgcolor=white><td colspan=7>"
        calStr += "			<table border=0 cellpadding=0 cellspacing=0  width=100%><tr>"
        calStr += "			<td><font size='2'><a href='javascript:;' onClick='nowm--; if (nowm<0) { nowy--; nowm=11; } showCalendar(nowd,nowm,nowy)' title='이전 월'> ◀ </a></font></td>"
        calStr += "			<th align=center><font size='4'> <label name='year'>" + year + "</label>년<label name='momth'>" + monthName[month].toUpperCase() + "</label></font></th>"
        calStr += "			<td align=right><font size='2'><a href='javascript:;'  onClick='nowm++; if (nowm>11) { nowy++; nowm=0; } showCalendar(nowd,nowm,nowy)' title='다음 월'> ▶ </a></font></td>"
        calStr += "		</tr></table>"
        calStr += "		</td></tr>"
        calStr += "		<tr align=center bgcolor='#656565'>"
        calStr += "			<th><font color='red' size='2'>일</font></th>"
        calStr += "			<th><font color='white' size='2'>월</font></th>"
        calStr += "			<th><font color='white' size='2'>화</font></th>"
        calStr += "			<th><font color='white' size='2'>수</font></th>"
        calStr += "			<th><font color='white' size='2'>목</font></th>"
        calStr += "			<th><font color='white' size='2'>금</font></th>"
        calStr += "			<th><font color='#66CCFF' size='2'>토</font></th>"
        calStr += "		</tr>"
        var dayCount = 1
        calStr += "<tr bgcolor=white>"
        for (var i = 0; i < firstDay; i++) calStr += "<td> " //공백
        for (var i = 0; i < monthDays[month]; i++) {

            if (dayCount == nowd) {
                calStr += "<td align=left bgcolor='#DFE7DE'><font size='3'><b>" // 오늘 날짜일때 배경색 지정,글자 진하게
            } else {
                calStr += "<td align=left><font size='3' >" // 오늘 날짜가 아닐때 배경색 지정
            }
            calStr += "<a href='u_callist.jsp'>" //날짜에~~링크설정
            calStr += dayCount++ // 날짜
			calStr += "</a>"
            if (dayCount == nowd) {
                calStr += "</b>" // 오늘 날짜일때 글자 진하게
            } else {
                calStr += "" // 오늘 날짜가 글자 진하게 안함
            }
            calStr += "</font>"
            if ((i + firstDay + 1) % 7 == 0 && (dayCount < monthDays[month] + 1)) calStr += "<tr bgcolor=white>"
        }
        var totCells = firstDay + monthDays[month]
        for (var i = 0; i < (totCells > 28 ? (totCells > 35 ? 42 : 35) : 28) - totCells; i++) calStr += "<td> "
        calStr += "</form></table><BR>"
        calendar.innerHTML = calStr
    }
     
</script>
</head>
<body>
	<center>
		<div class="container" align="center">
		<div id = "topbar"></div>
	<div id = "header">
   <img src="../image/hlogo.png" id="logo" width="310" height="130">
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
						<td><a href="u_findcode.jsp" class="findButton">ID찾기</a></td>
						<td><a href="u_findpass.jsp" class="findButton">PW찾기</a></td>
				</table>
			</div> -->
			<div class="cont-right" style="background-color: white;">
				<span ID=calendar STYLE="position: relative;">
				 	<script>
						showCalendar(nowd, nowm, nowy);
					</script>
				</span>
			</div>
		</div>
	</center>
	<div id="footer">Blog is powered by <a href="#"	onclick="window.open(this.href); 
					return false" title="Daum 바로가기" style="text-decoration: none">건강하조</a>
					 / Designed by <a href="#" title="Tistory 바로가기" style="text-decoration: none">꾸꾸맘</a>
	</div>
  </div>
</body>
</html>