<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html lang="ko">
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
					<div class="btn-menu">
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
						<span class="usear-name txt-bold">파이어독스</span>님 반갑습니다.
					</div>
				</div>
			</div>
			<h2 class="txt-bold">스마트가스톡 서비스</h2>
		</header>
		<div id="container" class="type02">
			<div id="ctab" class="ctab03">
				<ul class="tabs">
					<li class="current"><a href="#">구매요청</a></li>
					<li><a href="#">주문현황</a></li>
				</ul>
				<div class="panels">
					<div class="tabCon tab-cont01 current">
						<div class="pdt-img">
							<img src="/resources/static/images/img-product01.jpg"
								alt="FD-538">
						</div>
						<dl class="pdt-desc">
							<dt>
								파이어독스<em>FD-538</em>
							</dt>
							<dd>국내 모든 소형저장탱크의 가스잔량 층정이 가능한 디지털 게이지</dd>
						</dl>
						<div class="cs-num-s">
							<span class="cs-icon"><img
								src="/resources/static/images/icon-csnum-s.png" alt="1577-2361"></span>
							<span class="cs-num"><img
								src="/resources/static/images/txt-csnum-s.png" alt="1577-2361"></span>
						</div>
						<div class="sell-form">
							<input class="form-input" type="text" placeholder="구매자명"
								id="register_name"> <input class="form-input"
								type="text" placeholder="연락처(-제외)" id="phone_no">
							<div>
								<div class="num-pdt">
									<span class="minus"><a href="#"><img
											src="/resources/static/images/btn-minus.png" alt="minus"></a></span>
									<span>1</span> <span class="plus"><a href="#"><img
											src="/resources/static/images/btn-plus.png" alt="plus"></a></span>
								</div>
								<div class="btn-sell" id="orderRequest">
									<a href="#">구매요청</a>
								</div>
							</div>
						</div>
					</div>
					<div class="tabCon tab-cont02">
						<div class="lookup-area inner-wrap">
							<strong class="stit type02">주문내역 조회</strong>
							<div class="btn-radio">
								<label><input type="radio" name="lookup" checked><span
									class="checkmark">날짜</span></label> <label><input type="radio"
									name="lookup"><span class="checkmark">시간</span></label> <label><input
									type="radio" name="lookup"><span class="checkmark">모델명</span></label>
							</div>
							<div class="search-area date">
								<input type="text"> <a href="#"><img
									src="/resources/static/images/btn-date.png" alt="날짜검색"></a>
							</div>
						</div>
						<ul class="order-list">
							<c:forEach items="${orderList}" var="orderList">
								<li>
									<div class="order-details">
										<span class="thmb-img"><img
											src="/resources/static/images/img-product01.jpg" alt="thmb"></span>
										<div>
											<div class="dtl-top">
												<em>116</em><span><c:out value="${orderList.order_date }" /><span class="bar">
												</span>
											</div>
											<div class="dtl-bot">
												<strong><c:out value="${orderList.item }" /></strong><span><c:out value="${orderList.count }" />개</span>
											</div>
										</div>
									</div>
									<div class="btn-area">
										<a href="#" class="btn-nor02">교환요청</a><a href="#"
											class="btn-nor02">구매취소</a>
									</div>
								</li>
							</c:forEach>
						</ul>
						<div id="cs-num">
							<a href="tel:1577-2361" class="cs-inner"> <span
								class="badge badge-w">대표번호</span> <span class="cs-num"><img
									src="/resources/static/images/txt-csnum.png" alt="1577-2361"></span>
								<span class="cs-icon"><img
									src="/resources/static/images/icon-csnum.png" alt="1577-2361"></span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(
				function() {
					$('#orderRequest').click(
							function() {
								var register_name = $("#register_name").val();
								var phone_no = $("#phone_no").val();

								console.log(register_name);
								console.log(phone_no);

								$.ajax({
									url : '/order/orderRequest',
									type : 'GET',
									data : "register_name=" + register_name
											+ "&phone_no=" + phone_no,
									success : function(result) {
										if (result) {
											if (register_name != ""
													&& phone_no != "") {
												alert("주문이 완료되었습니다.");
											} else if (register_name != ""
													&& phone_no == "") {
												alert("전화번호를 입력해주세요.");
											} else if (register_name == ""
													&& phone_no != "") {
												alert("구매자명을 입력해주세요.");
											} else {
												alert("구매자 정보를 입력해주세요.");
											}
										} else {
											alert("잠시 후 다시 시도해 주세요.");
										}
									},
									error : function() {
										alert("에러 발생");
									}
								});// end ajax
								return false;
							});
				});
	</script>
</body>
</html>