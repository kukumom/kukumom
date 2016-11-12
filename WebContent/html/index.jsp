<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
        @import url(http://fonts.googleapis.com/css?family=Cookie);
        [class*="icon-"] {
            font-family: 'Cookie';
            font-style: normal;
            font-size: 2em;
            speak: none;
        }
        
        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        
        html {
            color: #444;
            font-size: 100%;
            background: #e9f1db;
        }
        
        body {
            font-family: Cambria, Georgia, "Times New Roman", Times, serif;
            text-rendering: optimizeLegibility;
            -webkit-font-smoothing: antialiased;
            font-size: 18px;
            font-size: 1.125rem;
            line-height: 1.5;
           
        }
        
        a {
            text-decoration: none;
            color: #DD6C4F;
        }
        
        a:hover {
            text-decoration: underline;
        }
        
        a:focus {
            outline: none;
        }
        
        .page-wrap {
            width: 960px;
            margin: 80px auto;
        }
        
        .nav {
            list-style: none;
            text-align: center;
        }
        
        .nav li {
            position: relative;
            display: inline-block;
            margin-right: -4px;
        }
        
        .nav li:before {
            content: "";
            display: block;
            border-top: 1px solid #ddd;
            border-bottom: 1px solid #fff;
            width: 100%;
            height: 1px;
            position: absolute;
            top: 50%;
            z-index: -1;
        }
        
        .nav a {
            display: block;
            background-color: #f7f7f7;
            background-image: -webkit-gradient(linear, left top, left bottom, from(#f7f7f7), to(#e7e7e7));
            background-image: -webkit-linear-gradient(top, #f7f7f7, #e7e7e7);
            background-image: -moz-linear-gradient(top, #f7f7f7, #e7e7e7);
            background-image: -ms-linear-gradient(top, #f7f7f7, #e7e7e7);
            background-image: -o-linear-gradient(top, #f7f7f7, #e7e7e7);
            color: #555555;
            margin: 36px;
            width: 144px;
            height: 144px;
            position: relative;
            text-align: center;
            line-height: 144px;
            border-radius: 50%;
            box-shadow: 0px 3px 8px #aaa, inset 0px 2px 3px #fff;
        }
        /*테두리원*/
        
        .nav a:before {
            content: "";
            display: block;
            background: #fff;
            border-top: 2px solid #ddd;
            position: absolute;
            top: -18px;
            left: -18px;
            bottom: -18px;
            right: -18px;
            z-index: -1;
            border-radius: 50%;
            box-shadow: inset 0px 8px 48px #ddd;
        }
        /*안의 원*/
        
        .nav a:hover {
            text-decoration: none;
            color: #555;
            background: #fff;
        }
    </style>
</head>

<body>
    <div class="page-wrap">
        <header>
            <p style="text-align:center;"> <img src="../image/logo.png" width="180" height="150" /> </p>
        </header>
        <nav>
            <ul class="nav">
                <li> <a href="h_home.jsp" class="icon-home">병원</a> </li>
                <li> <a href="u_home.jsp" class="icon-cog">보호자</a> </li>
            </ul>
        </nav>
    </div>
</body>

</html>