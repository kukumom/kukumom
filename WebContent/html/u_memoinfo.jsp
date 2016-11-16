<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang='ko'>

<head>
    <meta charset="utf-8" />
    <title>꾸꾸맘</title>
    <link rel="stylesheet" type="text/css" href="../css/u_style.css"> </head>
	<link rel="stylesheet" type="text/css" href="../css/button.css">
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
            
            <form action="" name="" >
            <table>
            <br>
            <tr>
                <th>아이디</th>
                <td>
                    <input type="text" name="USERID" /> </td>
            </tr>
            <tr>
                <th>비밀번호</th>
                <td>
                    <input type="password" name="USERPW" /> </td>
            </tr>
            <tr>
                <th>비밀번호 확인</th>
                <td>
                    <input type="text"  /> </td>
            </tr>
            <tr>
                <th>이름</th>
                <td>
                    <input type="text" name="USERNAME" /> </td>
            </tr>
            <tr>
                <th>생년월일</th>
                <td>
                <% 
                /* String year1=year.valueOf(year);
                String month1=month.valueOf(month);
                String day1=day.valueOf(day);
                 */
                
                
               /*  String USERBIRTH= year+month+day; */ %>
                    <select name="year" >
                        <option name= value="1990" selected>1990</option>
                        <option value="1991" selected>1991</option>
                        <option value="1992" selected>1992</option>
                        <option value="1993" selected>1993</option>
                        <option value="1994" selected>1994</option>
                        <option value="1995" selected>1995</option>
                        <option value="1996" selected>1996</option>
                        <option value="2000" selected>2000</option>
                        <option value="2001" selected>2001</option>
                        <option value="2002" selected>2002</option>
                        <option value="2003" selected>2003</option>
                        <option value="2004" selected>2004</option>
                    </select>년
                    <select name="month">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                    </select>월
                    <select name="day">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                        <option value="13">13</option>
                        <option value="14">14</option>
                        <option value="15">15</option>
                        <option value="16">16</option>
                        <option value="17">17</option>
                        <option value="18">18</option>
                        <option value="19">19</option>
                        <option value="20">20</option>
                        <option value="21">21</option>
                        <option value="22">22</option>
                        <option value="23">23</option>
                        <option value="24">24</option>
                        <option value="25">25</option>
                        <option value="26">26</option>
                        <option value="27">27</option>
                        <option value="28">28</option>
                        <option value="29">29</option>
                        <option value="30">30</option>
                        <option value="31">31</option>
                    </select>일 </td>
            </tr>
            <tr>
                <th>연락처 </th>
                <td>
                    <select>
                        <option>010</option>
                        <option>02</option>
                    </select>-
                    <input type="text" maxlength="4" style="width:45px;" />-
                    <input type="text" maxlength="4" style="width:45px;" /> </td>
            </tr>
            <tr>
                <th>애완동물 유무 :</th>
                <td>
                    <input type="radio" name="pet" value="Y" onclick="LayerView()">Yes
                    <input type="radio" name="pet" value="N" onclick="LayerView()">No </td>
            </tr>
            
        </table>
       
        
        
        <script>
        function LayerView() {
           var checkValue = $("input[type:radio][name=pet]:checked").val();
           if (checkValue == "Y") {
              /* petinfo.style.visibility = "visible"; */
              
           }
           else if (checkValue == "N") {
              /* petinfo.style.visibility = "hidden"; */
              
           }
        }
        </script>
        <table id="petinfo">  
            <tr>
            
                <th>애완명 :</th>
                <td>
                    <input type="text"> </td>
            </tr>
            <tr>
                <th>동물 종류 :</th>
                <td>
                    <select>
                        <option>개</option>
                        <option>고양이</option>
                        <option>햄스터</option>
                        <option>고슴도치</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>생년월일 :</th>
                <td>
                    <input type="date"> </td>
            </tr>
            <tr>
                <th>성별 :</th>
                <td>
                    <input type="radio" name="pets">암컷
                    <input type="radio" name="pets">수컷 </td>
            </tr> 
        </table>
        <input type="submit" class="btn1" name="submit" value="다음단계로" />
        <input type="reset" class="btn1" name="reset" value="취소" />
        </form>
        </div>
        </div>
    
    <footer> </footer>

    </div>
</body>

</html>
    