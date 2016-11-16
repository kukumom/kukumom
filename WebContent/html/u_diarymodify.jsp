<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>성장일기 수정</title>
<link rel="stylesheet" type="text/css" href="../css/diary.css">
<link rel="stylesheet" type="text/css" href="../css/button.css">
<link rel="stylesheet" type="text/css" href="../css/u_style.css">
</head>
<body>
	<center>
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
				<div class="wrap effect8">

					<h1>일기를 수정해주세요~^^</h1>
					<br>
					<p>
						날짜선택:&nbsp;<input type="date" name="date">&nbsp;&nbsp;&nbsp;동물선택:&nbsp;<select
							name="petchoice">
							<option value="1111">꾸꾸</option>
							<option value="1112">두유</option>
							<option value="1113">멍멍이</option>
						</select>
					</p>
					<br>
					<p>
						<textarea name="text" rows="5" cols="80">
        오늘은 꾸꾸 덕분에 많이 웃을 수 있는 하루인 듯ㅋㅋㅋㅋ너무 귀여움헤헤헤헿 먹이도 잘 먹고 앞에서 얼마나 재롱을 부리던지…정말 귀엽다ㅠㅠㅠㅠㅠ
      계속 이대로만 건강하게 자라다오ㅠㅠ!!!사랑해 꾸꾸야><♥
      </textarea>
					</p>
					<br>
					<p>
						<input type="file" name="file" value="사진첨부">
					</p>

					<p>
						<img src="..\image\puppy01.png" alt="애완동물 사진" />
					</p>


					<p>
						신장:&nbsp;<input type="number" min="0" max="900" name="cm"
							placeholder="120">&nbsp;cm
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 체중:&nbsp;<input
							type="number" min="0" max="99" name="kg" placeholder="3.5">&nbsp;kg
					</p>
				</div>
				<p>
					<input type="submit" name="modify" class="btn1" value="  완  료  "
						onclick="alert('수정이 완료되었습니다.')"> <a
						href="u_diarydetail.jsp"><input type="button" name="cancel"
						class="btn1" value="  취  소  " onclick="alert("취소되었습니다.")"></a>
				</p>
				<br>
			</div>
		</div>
		</div>
</body>
</html>
