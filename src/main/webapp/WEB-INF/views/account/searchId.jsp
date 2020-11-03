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

<link rel="stylesheet" href="/resources/static/css/base.css">
<link rel="stylesheet" href="/resources/static/css/fonts.css">
<link rel="stylesheet" href="/resources/static/css/common.css">
<script type="text/javascript"
	src="/resources/static/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="/resources/static/js/common.js"></script>
</head>
<body>
	<div id="wrap" class="type02">
		<header>
			<div class="h-top">
				<div class="inner-wrap">
					<div class="btn-menu" style="display: none;">
						<img src="/resources/static/images/menu.png" alt="menu">
					</div>
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
						<a href="#">파이어독스</a>
					</h1>
					<div class="login-massge txt-light">
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
			<h2 class="txt-bold">스마트가스톡 서비스</h2>
		</header>
		<div id="container">
			<div class="contents">
				<div class="inner-wrap">
					<strong class="stit">아이디 찾기</strong>
				</div>
				<form class="form-area" role="form" id="forms">
					<label><span class="form-tit">사용자명</span><input type="text" id = "user_name" name = "user_name" placeholder = "사용자명"></label>
					<label><span class="form-tit">휴대폰번호</span><input
						type="text" class="form-tit" id="phone_no" name = "phone_no" placeholder = "전화번호('-'없이)"><!-- <a href="#" class="btn-nor">본인인증</a>--></label>
					
				</form>
			</div>
		</div>
		<div class="progress-btn-area">
			<div class="inner-wrap">
				<!-- <a href="#" class="prev">이전</a> -->
				<a href="#" class="next" onclick="search_id()">아이디 찾기</a>
			</div>
		</div>
	</div>
	
	<script>
		function search_id() {
			var user_name = document.getElementById("user_name").value;
			var phone_no = document.getElementById("phone_no").value;
			
			if(null == user_name || "" == user_name || null == phone_no || "" == phone_no) {
				alert("정보를 입력해주세요.");
			} else {
				$.ajax({
					type:"post",
					url:"/account/api/searchId",
					data : $("#forms").serialize(),
					contentType : "application/x-www-form-urlencoded; charset=UTF-8",
					success : function(data) {
						if(data == "no data") {
							alert("조회된 데이터가 없습니다.");
						} else {
							window.location.href = '/account/searchIdResult?user_id='+data;
						}
					}
					, error : function(jqXHR, textStatus, errorThrown) {
		                console.log('jqXHR', jqXHR);
		                console.log('textStatus', textStatus);
		                console.log('errorThrown', errorThrown);
		            }
				});
			}
		}
	</script>
</body>
</html>