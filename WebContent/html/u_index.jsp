<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#container{
	padding:20%;
}
#cont1{
	float:left;
}
.text{
	width: 150px;
	height: 30px;
}
	/*로그인버튼*/
.login {
	background-color: #C0C0C0;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Arial;
	font-size: 18px;
	font-weight: bold;
	padding: 1px 10px;
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
.find{
	background-color:;
	display: inline-block;
	cursor: pointer;
	color: #000;
	font-family: Arial;
	font-size: 12px;
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
	<div id="container">
		<div id="cont1">
			<h3>병원 로그인</h3>
			<input type="text" class="text"/><br/>
			<input type="text" class="text"/><br/>
			<input type="button" value="아이디 찾기" class="find"/>
			<input type="button" value="비밀번호 찾기" class="find"/><br/>
			<input type="button" value="로그인" class="login"/>
		</div>
		<div id="cont2">
			<h3>보호자 로그인</h3>
			<input type="text" class="text"/><br/>
			<input type="text" class="text"/><br/>
			<input type="button" value="아이디 찾기" class="find"/>
			<input type="button" value="비밀번호 찾기" class="find"/><br/>
			<input type="button" value="로그인" class="login"/>
		</div>
	</div>
</body>
</html>