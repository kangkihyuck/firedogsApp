<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<!-- style & font -->
	<link rel="icon" href="/img/favicon.ico">
	<title>FIREDOGS</title>

	<link rel="stylesheet" href="/resources/static/css/base.css">
	<link rel="stylesheet" href="/resources/static/css/fonts.css">
	<link rel="stylesheet" href="/resources/static/css/common.css">
	<script type="text/javascript" src="/resources/static/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="/resources/static/js/common.js"></script>
</head>
<body>
	<div id="wrap">
		<header>
			<div class="h-top">
				<div class="inner-wrap">
					<div class="btn-menu">
						<img src="/resources/static/images/menu.png" alt="menu">
					</div>
					<nav id="gnb" style="display:none">
						<h2 class="invisible">navigation</h2>
						<ul>
							<li>
								<a href="#">차량찾기</a>
								<ul class="sub-menu">
									<li><a href="#">국산차 찾기</a></li>
									<li><a href="#">수입차 찾기</a></li>
									<li><a href="#">SUV/RV 차량</a></li>
									<li><a href="#">LPG차량</a></li>
									<li><a href="#">화물특징차량</a></li>
									<li><a href="#">승합버스차량</a></li>
								</ul>
							</li>
						</ul>
					</nav>
					<h1 class="txt-black"><a href="#">파이어독스</a></h1>
					<div class="login-massge txt-light"><span class="usear-name txt-bold">파이어독스</span>님 반갑습니다.</div>
				</div>
			</div>
			<h2 class="txt-bold">스마트가스톡 서비스</h2>
		</header>
		<div id="container">
			<div class="scroll-hide">
				<div class="inner-wrap">
					<div class="banner">
						<a href="#">
							<span class="txt-light">LPG 경영관리 프로그램 / 원격검침 최강 서비스</span>
							<span>앱으로 신청하시면 <span class="txt-black">3개월 무료</span> 서비스!</span>
						</a>
					</div>
					<div class="quick-menu">
						<ul>
							<li><a href="#">
								<span class="quick-icon"><img src="/resources/static/images/icon-quick01.png" alt=""></span>
								<span class="quick-tit">탱크잔량</span></span>
							</a></li>
							<li><a href="#">
								<span class="quick-icon"><img src="/resources/static/images/icon-quick02.png" alt=""></span>
								<span class="quick-tit">절체기</span>
							</a></li>
							<li><a href="#">
								<span class="quick-icon"><img src="/resources/static/images/icon-quick03.png" alt=""></span>
								<span class="quick-tit">벌크로리</span>
							</a></li>
						</ul>
						<ul>
							<li class="type02"><a href="#">
								<span class="quick-icon"><img src="/resources/static/images/icon-quick04.png" alt=""></span>
								<span class="quick-tit">계량기<br>검침</span>
							</a></li>
							<li><a href="/tankinspect/tankInspectMain">
								<span class="quick-icon"><img src="/resources/static/images/icon-quick05.png" alt=""></span>
								<span class="quick-tit">탱크검사</span>
							</a></li>
							<li><a href="#">
								<span class="quick-icon"><img src="/resources/static/images/icon-quick06.png" alt=""></span>
								<span class="quick-tit">누설경보</span>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
			<ul class="m-category">
				<li><a href="/order/orderMain">주문</a></li>
				<li><a href="/job/jobMain">구인/구직</a></li>
				<li><a href="/market/marketMain">사고/팔고</a></li>
				<li class="current"><a href="/lpgdisclosure/lpgDisclosureMain">LPG 공시가</a></li>
				<li><a href="/inspect/inspectMain">검사기관</a></li>
				<li><a href="/lpginsandorg/lpginsandorgMain">LPG기관<br>및 단체</a></li>
				<li><a href="/press/pressMain">언론<br>및 신문사</a></li>
			</ul>
			<div class="notice">
				<div class="inner-wrap">
					<strong class="badge badge-b">필독</strong>
					<select class="txt-light">
						<option>직거래 이용시 주의사항 공지.....</option>
						<option>직거래 이용시 주의사항 공지.....</option>
						<option>직거래 이용시 주의사항 공지.....</option>
					</select>
				</div>
			</div>
			<div id="ctab" class="ctab">
				<ul class="tabs type02">
					<li class="current"><a href="#">전체</a></li>
					<li><a href="#">특정설비</a></li>
					<li><a href="#">LPG용기</a></li>
				</ul>
				<div class="panels">
					<div class="tabCon tab-cont01 current">
						<ul>
							<li><a href="#">
								<strong class="badge">특정설비</strong>
								<span class="list-tit">
									<span>씨스텍(주) 덕평검사소</span>
									<span class="date">2020-01-27<span class="bar">|</span>조회 : 157<span class="bar">|</span>파이**</span>
								</span>
								<span class="list-frt">
									<span class="btn-right"><img src="/resources/static/images/btn-right02.png" alt="button"></span>
								</span>
							</a></li>
							<li><a href="#">
								<strong class="badge badge-b">LPG용기</strong>
								<span class="list-tit">
									<span>씨스텍(주) 덕평검사소</span>
									<span class="date">2020-01-27<span class="bar">|</span>조회 : 157<span class="bar">|</span>파이**</span>
								</span>
								<span class="list-frt">
									<span class="btn-right"><img src="/resources/static/images/btn-right02.png" alt="button"></span>
								</span>
							</a></li>
							<li><a href="#">
								<strong class="badge">특정설비</strong>
								<span class="list-tit">
									<span>씨스텍(주) 덕평검사소</span>
									<span class="date">2020-01-27<span class="bar">|</span>조회 : 157<span class="bar">|</span>파이**</span>
								</span>
								<span class="list-frt">
									<span class="btn-right"><img src="/resources/static/images/btn-right02.png" alt="button"></span>
								</span>
							</a></li>
						</ul>
					</div>
					<div class="tabCon tab-cont02"></div>
					<div class="tabCon tab-cont03"></div>
				</div>
			</div>
		</div>
		<div id="cs-num">
			<a href="tel:1577-2361" class="cs-inner">
				<span class="badge badge-w">대표번호</span>
				<span class="cs-num"><img src="/resources/static/images/txt-csnum.png" alt="1577-2361"></span>
				<span class="cs-icon"><img src="/resources/static/images/icon-csnum.png" alt="1577-2361"></span>
			</a>
		</div>
	</div>
</body>
</html>