<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang='ko'>

<head>
    <meta charset="utf-8" />
    <title>꾸꾸맘</title>
    <link rel="stylesheet" type="text/css" href="../css/u_style.css">
    <style>
        .contracttext {
            width: 500px;
            height: 200px;
        }

        .contract {
            list-style: none;
        }
    </style>
</head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="http://malsup.github.com/jquery.cycle2.js"></script>

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
			</div>-->
            <div class="cont-right"> <img src="../image/yyak.PNG" style="width:100px;" /> <img src="../image/ginfo.PNG" style="width:100px;" /> <img src="../image/gcom.PNG" style="width:100px;" />
                <ul class="contract">
                    <li>
                        <p class="left"> 개인정보 수집 및 이용에 관한 안내 </p>
                        <textarea class="contracttext" readonly disabled> [꾸꾸맘]('www.kukumom.com'이하 '꾸꾸맘')은(는) 개인정보보호법에 따라 이용자의 개인정보 보호 및 권익을 보호하고 개인정 보와 관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 처리방침을 두고 있습니다. [꾸꾸맘]('꾸꾸맘') 은(는) 회사는 개인정보처리방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.○ 본 방침은부터 2016년 7월 1일부터 시행됩니다. 1. 개인정보의 처리 목적 [꾸꾸맘]('www.kukumom.com'이하 '꾸꾸맘')은(는) 개인정보를 다음의 목적을 위해 처리합니다. 처리한 개인정보는 다음의 목적이외의 용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전동의를 구할 예정입니다. 가. 홈페이지 회원가입 및 관리 회원 가입의사 확인 등을 목적으로 개인정보를 처리합니다. 2. 개인정보 파일 현황 ('www.kukumom.com'이하 '꾸꾸맘')가 개인정보 보호법 제32조에 따라 등록․공개하는 개인정보파일의 처리목적은 다음과 같습니 다. 1. 개인정보 파일명 : 꾸꾸맘병원 - 개인정보 항목 : 비밀번호, 회사전화번호, 회사명 - 수집방법 : 홈페이지 - 보유근거 : 꾸꾸맘 이용제한 - 보유기간 : 영구 - 관련법령 : ※ 기타('www.kukumom.com'이하 '꾸꾸맘')의 개인정보파일 등록사항 공개는 행정안전부 개인정보보호 종합지원 포털(www.privacy.go.kr) → 개인정보민원 → 개인정보열람등 요구 → 개인정보파일 목록검색 메뉴를 활용해주시기 바랍니다. 3. 개인정보처리 위탁 ① [꾸꾸맘]('꾸꾸맘')은(는) 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다. ② [꾸꾸맘]('www.kukumom.com'이하 '꾸꾸맘')은(는) 위탁계약 체결시 개인정보 보호법 제25조에 따라 위탁업무 수행목적 외 개인정보 처리금지, 기술적․관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리․감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다. ③ 위탁업무의 내용이나 수탁자가 변경될 경우에는 지체없이 본 개인정보 처리방침을 통하여 공개하도록 하겠습니다. 4. 정보주체의 권리,의무 및 그 행사방법 이용자는 개인정보주체로서 다음과 같은 권리를 행사할 수 있습니다. ① 정보주체는 꾸꾸맘(‘www.kukumom.com’이하 ‘꾸꾸맘) 에 대해 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다. 1. 개인정보 열람요구 2. 오류 등이 있을 경우 정정 요구 3. 삭제요구 4. 처리정지 요구 ② 제1항에 따른 권리 행사는꾸꾸맘(‘www.kukumom.com’이하 ‘꾸꾸맘) 에 대해 개인정보 보호법 시행규칙 별지 제8호 서식에 따 라 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며 [기관/회사명](‘사이트URL’이하 ‘사이트명) 은(는) 이에 대해 지체 없이 조치하겠습니다. ③ 정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 [기관/회사명](‘사이트URL’이하 ‘사이트명) 은(는) 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다. ④ 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정 보 보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다. 5. 처리하는 개인정보의 항목 작성 ① [꾸꾸맘]('www.kukumom.com'이하 '꾸꾸맘')은(는) 다음의 개인정보 항목을 처리하고 있습니다. 1[홈페이지 회원가입 및 관리] - 필수항목 : 비밀번호, 회사전화번호, 회사명 - 선택항목 : 6. 개인정보의 파기[꾸꾸맘]('꾸꾸맘')은(는) 원칙적으로 개인정보 처리목적이 달성된 경우에는 지체없이 해당 개인정보를 파기합 니다. 파기의 절차, 기한 및 방법은 다음과 같습니다. -파기절차이용자가 입력한 정보는 목적 달성 후 별도의 DB에 옮겨져(종이의 경우 별도의 서류) 내부 방침 및 기타 관련 법령에 따 라 일정기간 저장된 후 혹은 즉시 파기됩니다. 이 때, DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 다른 목적으로 이 용되지 않습니다.-파기기한이용자의 개인정보는 개인정보의 보유기간이 경과된 경우에는 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성, 해당 서비스의 폐지, 사업의 종료 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불 필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다. -파기방법 전자적 파일 형태의 정보는 기록을 재생할 수 없는 기술적 방법을 사용합니다. 7. 개인정보의 안전성 확보 조치 [꾸꾸맘]('꾸꾸맘')은(는) 개인정보보호법 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술 적/관리적 및 물리적 조치를 하고 있습니다. 1. 정기적인 자체 감사 실시 개인정보 취급 관련 안정성 확보를 위해 정기적(분기 1회)으로 자체 감사를 실시하고 있습니다. 2. 개인정보에 대한 접근 제한 개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여,변경,말소를 통하여 개인정보에 대한 접근통제를 위하여 필요 한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다. 3. 비인가자에 대한 출입 통제 개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다. 8. 개인정보 보호책임자 작성 ① 꾸꾸맘(‘www.kukumom.com’이하 ‘꾸꾸맘) 은(는) 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정 보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다. ▶ 개인정보 보호책임자 성명 :임소영 직책 :담당자 직급 :대표 연락처 :01027347228, gglsy0128@naver.com, ※ 개인정보 보호 담당부서로 연결됩니다. ▶ 개인정보 보호 담당부서 부서명 : 담당자 : 연락처 :, , ② 정보주체께서는 꾸꾸맘(‘www.kukumom.com’이하 ‘꾸꾸맘) 의 서비스(또는 사업)을 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수 있습니다. 꾸꾸맘(‘www.kukumom.com’이하 ‘꾸꾸맘) 은(는) 정보주체의 문의에 대해 지체 없이 답변 및 처리해드릴 것입니다. 9. 개인정보 처리방침 변경 ①이 개인정보처리방침은 시행일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 변경사항 의 시행 7일 전부터 공지사항을 통하여 고지할 것입니다. </textarea>
                    </li>
                    <input type="checkbox" />동의합니다.
                    <li>
                        <p class="left"> 이용방침 </p>
                        <textarea class="contracttext" readonly disabled></textarea>
                    </li>
                    <li>
                        <input type="checkbox" />동의합니다. </li>
                </ul>
                <input type="button" value="확인" />
                <input type="button" value="취소"> </div>
        </div>
    </center>
    <footer> </footer>
    </div>
</body>

</html>
    