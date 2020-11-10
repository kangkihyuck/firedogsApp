<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<!-- style & font -->
<link rel="icon" href="/img/favicon.ico">
<title>FIREDOGS</title>

<link rel="stylesheet" href="../resources/static/css/base.css">
<link rel="stylesheet" href="../resources/static/css/fonts.css">
<link rel="stylesheet" href="../resources/static/css/common.css">
<script type="text/javascript"
	src="../resources/static/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="../resources/static/js/common.js"></script>
<title>Insert title here</title>
</head>
<style>
.ieOverflowY {
	overflow-y: scroll;
	overflow-x: hidden;
}
</style>
<body>
	<div id="wrap" class="wrap">
		<header>
			<div class="h-top">
				<div class="inner-wrap">
					<!--<div class="btn-menu" onClick="javascript:topmenu()">
               <img src="/app/images/menu.png" alt="menu">
            </div>-->
					<nav id="gnb" style="display: none">
						<h2 class="invisible">navigation</h2>
						<ul>
							<li><a href="#">차량찾기</a>
								<ul class="sub-menu">
									<li><a href="#">국산차 찾기</a></li>
									<li><a href="#">수입차 찾기</a></li>
									<li><a href="#">SUV/RV 차량</a></li>
									<li><a href="#">LPG차량</a></li>
									<li><a href="#">화물특징차량</a></li>
									<li><a href="#">승합버스차량</a></li>
								</ul></li>
						</ul>
					</nav>
					<h1 class="txt-black">
						<a href="/market/marketMain">파이어독스</a>
					</h1>

					<div class="login-massge txt-light" id="userAC">
						<!-- <span class="user-name txt-bold"
							style="margin-top: -10px; display: none;" v-if="seen">{{username}}님
							반갑습니다.</span>
						<button onclick="logOut();" style="font-weight:bold;margin-left:10px" v-if="seen">로그아웃</button>
						<a href=""
							style="font-weight: bold; margin-left: 10px; display: none;">로그아웃</a>
						<a href="/account/login" v-if="false"
							style="font-weight: bold; margin-left: 10px">로그인</a> -->
						<c:choose>

							<c:when test="${sessionScope.username != null}">
								<span class="user-name txt-bold" style="margin-top: -10px;">${sessionScope.username}님
									반갑습니다.</span>
								<a href="/account/logout"
									style="font-weight: bold; margin-left: 10px;">로그아웃</a>
							</c:when>
							<c:otherwise>
								<a href="/account/login" v-if="false"
									style="font-weight: bold; margin-left: 10px">로그인</a>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
			<div class="inner-wrap">
				<h2 class="txt-bold" id="txt-title">&nbsp;</h2>
				<button class="btn btn-sm btn-default"
					style="float: right; margin: -30px 0px 0 0; font-weight: bold; color:#FFF"
					id="btn_menu" onClick="topScroll()";>
					맨위로 <i class="fa fa-angle-double-up"></i>
				</button>
			</div>
		</header>
		<div id="top"></div>

		<div id="container">
			<div id="topdiv" class="topdiv">
				<div class="scroll-hide">
					<div class="inner-wrap">
						<div class="banner" style="display: none">
							<a href="#"> <span class="txt-light">LPG 경영관리 프로그램 /
									원격검침 최강 서비스</span> <span>앱으로 신청하시면 <span class="txt-black">3개월
										무료</span> 서비스!
							</span>
							</a>
						</div>
						<div class="quick-menu">
							<ul>
								<li><a
									href="http://gas.smartgastok.co.kr/mobile/agency?p=agency&l=2">
										<span class="quick-icon"><img
											src="../resources/static/images/icon-quick01.png" alt=""></span>
										<span class="quick-tit">탱크잔량</span></span>
								</a></li>
								<li><a
									href="http://gas.smartgastok.co.kr/mobile/switcher_ag"> <span
										class="quick-icon"><img
											src="../resources/static/images/icon-quick02.png" alt=""></span>
										<span class="quick-tit">절체기</span>
								</a></li>
							</ul>
							<ul>
								<li><a href="http://gas.smartgastok.co.kr/mobile/lorry_ag">
										<span class="quick-icon"><img
											src="../resources/static/images/icon-quick03.png" alt=""></span>
										<span class="quick-tit">벌크로리</span>
								</a></li>
								<li><a href="http://gas.smartgastok.co.kr/mobile/meter_ag">
										<span class="quick-icon"><img
											src="../resources/static/images/icon-quick04.png" alt=""></span>
										<span class="quick-tit">계량기</span>
								</a></li>

							</ul>
							<ul>
								<li><a href="#" onclick="modal()"> <span
										class="quick-icon"><img
											src="../resources/static/images/icon-quick05.png" alt=""></span>
										<span class="quick-tit">탱크검사</span>
								</a></li>
								<li><a href="#" onclick="modal()"> <span class="quick-icon"><img
											src="../resources/static/images/icon-quick06.png" alt=""></span>
										<span class="quick-tit">누설경보</span>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
				<ul class="m-category">
					<li id="li3"><a href="/market/marketMain">사고/팔고</a></li>
					<li id="li2"><a href="/job/jobMain">구인/구직</a></li>
					<li id="li1"><a href="/order/orderMain">주문</a></li>
					<li id="li8" style="display: none;"><a href="#"
						onclick="modal()">공지사항</a></li>
					<li id="li1" style="display: none;"><a href="#" /></li>
					<li id="li1" style="display: none;">><a href="#" /></li>
					<li id="li1" style="display: none;">><a href="#" /></li>
					<li id="li1"><a href="/notice/noticeMain">공지사항</a></li>

					<!--<li id="li1"><a href="/firedogs/order/getOrderList">주문</a></li>-->
					<!-- <li id="li4"><a href="/lpgdisclosure/lpgDisclosureMain">LPG
							공시가</a></li>
					<li id="li5"><a href="/inspect/inspectMain">검사기관</a></li>
					<li id="li6"><a href="/lpginsandorg/lpginsandorgMain">LPG기관<br>및
							단체
					</a></li>
					<li id="li7"><a href="/press/pressMain">언론<br>및 신문사
					</a></li> -->
					<!--<li id="li8"><a href="/firedogs/notice/getNoticeList">공지사항</a></li>-->

				</ul>
				<div class="notice" style="display: none">
					<div class="inner-wrap">
						<strong class="badge badge-b">필독</strong> <select
							class="txt-light">
							<option>직거래 이용시 주의사항 공지.....</option>
							<option>직거래 이용시 주의사항 공지.....</option>
							<option>직거래 이용시 주의사항 공지.....</option>
						</select>
					</div>
				</div>
			</div>

			<script>
				function modal() {
					alert("준비중입니다.\n불편을 드려 죄송합니다.");
				}
			</script>

			<script>
				function topScroll() {
					console.log("맨위로 스크롤");
					var el = document.getElementById('top');

					el.scrollIntoView(true);
				}
			</script>

		
</body>
</html>