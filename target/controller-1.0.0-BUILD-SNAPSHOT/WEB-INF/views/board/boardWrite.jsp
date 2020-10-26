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
			<div class="contents">
				<div class="inner-wrap">
					<strong class="stit">글쓰기</strong>
				</div>
				<form class="form-area">
					<label><span class="form-tit">제목</span><input type="text"></label>
					<div class="col-2">
						<div class="select-wrap">
							<label><span class="form-tit">분류</span></label>
							<div class="select-ui">
								<em>팝니다</em>
								<!-- display:block 시 option 노출 -->
								<ul style="display:none">
									<li>팝니다</li>
									<li>팝니다</li>
									<li>팝니다</li>
								</ul>
							</div>
						</div>
						<label><span class="form-tit">닉네임</span><input type="text"></label>
					</div>
					<label><span class="form-tit">연락처</span><input type="text"></label>
					<label><span class="form-tit">내용입력</span><textarea name="" id="" cols="30" rows="7"></textarea></label>
					<label class="type03"><span class="form-tit">파일첨부#1</span><input type="text">
						<span class="btn-area"><a href="#" class="btn-nor">등록</a><a href="#" class="btn-nor type02">삭제</a></span>
					</label>
					<label class="type03"><span class="form-tit">파일첨부#2</span><input type="text">
						<span class="btn-area"><a href="#" class="btn-nor">등록</a><a href="#" class="btn-nor type02">삭제</a></span>
					</label>
					<label class="type03"><span class="form-tit">파일첨부#3</span><input type="text">
						<span class="btn-area"><a href="#" class="btn-nor">등록</a><a href="#" class="btn-nor type02">삭제</a></span>
					</label>
				</form>
			</div>
		</div>
		<div class="progress-btn-area">
			<div class="inner-wrap">
				<a href="#" class="prev">뒤로</a>
				<a href="#" class="next">글쓰기</a>
			</div>
		</div>
	</div>
</body>
</html>