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
	<div id="wrap" class="type02">
		<header>
			<div class="h-top">
				<div class="inner-wrap">
					<div class="btn-menu" style="display:none;">
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
					<h1 class="txt-black"><a href="/job/jobMain">파이어독스</a></h1>
					<div class="login-massge txt-light"><span class="usear-name txt-bold">파이어독스</span>님 반갑습니다.</div>
				</div>
			</div>
			<h2 class="txt-bold">스마트가스톡 서비스</h2>
		</header>
		<div id="container">
			<div class="contents">
				<div class="checked-page">
					<strong>아이디 찾기</strong>
					<p>사용자 ID : ${user_id }<br></p>
					<a href="/job/jobMain" class="btn-nor02 type02">메인으로 이동</a>
					<a href="/account/login" class="btn-nor02 type02 ">로그인하기</a>
					<a href="/account/searchPw" class="btn-nor02 type02">비밀번호 찾기</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>