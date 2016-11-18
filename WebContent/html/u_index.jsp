<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
body{
	background-color: #fff;
	color: #353535;
}

#container{
	background-color: #e0f1ff;
	width: 500px;
	height: 450px;
	margin-left: 30%;
	margin-top: 10%;
	
}
/* #cont1{
	float:left;
	padding-right:3%;
	padding-left:5%;
} */
#cont2{
	float:left;
	padding-left:30%;
}

.txtbox{
	width: 200px;
	height: 30px;
	font-size: 20px;
	margin-bottom: 5px;
}
/*로그인버튼*/
.login {
	background-color: #C0C0C0;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Arial;
	font-size: 20px;
	font-weight: bold;
	padding: 10px 70px;
	text-decoration: none;
	text-shadow: 2px 2px 3px #778899;
}

.login:hover {
	background-color: #778899;
}

.login:active {
	position: relative;
	top: 1px;
}
/*가입&찾기버튼*/
.find {
	background-color:;
	display: inline-block;
	cursor: pointer;
	color: #000;
	font-family: Arial;
	font-size: 15px;
	font-weight: bold;
	padding: 5px 5px;
	text-decoration: none;
	text-shadow: 2px 2px 3px #778899;
}

.find:hover {
	background-color:;
}

.find:active {
	position: relative;
	top: 1px;
}
</style>
</head>
<body>
	<div id="container" align="center">
	<br>
	<br>
	<image src="../image/logo.png" style="width:100px; height:100px;">
	<h2></h2>
		<!-- <div id="cont1">
			<h3>병원 로그인</h3>
			<input type="text" class="txtbox" placeholder="아이디"/><br/>
			<input type="text" class="txtbox" placeholder="비밀번호"/><br/>
			<a href="u_findid.jsp" class="find">ID찾기</a>
			<a href="u_findpass.jsp" class="find">PW찾기</a>
			<a href="u_memcont.jsp" class="find">회원가입</a><br/>
			<a href="#" class="login">Login</a>
		</div> -->
		<div id="cont2" align="center" >
			<h3>로그인</h3>
			<input type="text" class="txtbox" placeholder="아이디"/><br/>
			<input type="text" class="txtbox" placeholder="비밀번호"/><br/>
			<a href="u_findid.jsp" class="find">ID찾기</a>
			<a href="u_findpass.jsp" class="find">PW찾기</a>
			<a href="u_memcont.jsp" class="find">회원가입</a><br/>
			<a href="u_home.jsp" class="login">Login</a>
		</div>
	</div>

	
</body>
</html>