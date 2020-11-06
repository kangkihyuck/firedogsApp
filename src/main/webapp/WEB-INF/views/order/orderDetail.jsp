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
					<div class="btn-menu"  style="display: none">
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
						<a href="/market/marketMain">파이어독스</a>
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
		<div id="container" class="type02">
			<div id="ctab" class="ctab03">
				<ul class="tabs">
					<li class="current"><a href="#">구매요청</a></li>
					<li><a href="#">주문현황</a></li>
				</ul>
				<div class="panels">
					<div class="tabCon tab-cont01 current">

						<div class="pdt-img">
							<img src="..\resources\static\images/${orderDetail.image }"
								alt="${orderDetail.item}">
						</div>
						<dl class="pdt-desc">
							<dt>
								${orderDetail.reg_id }<em>${orderDetail.item}</em>
							</dt>
							<dd>${orderDetail.contents}</dd>
						</dl>

						<div class="cs-num-s">
							<a href="tel:1577-2361"><span class="cs-icon"><img
								src="/resources/static/images/icon-csnum-s.png" alt="1577-2361"></span>
							<span class="cs-num"><img
								src="/resources/static/images/txt-csnum-s.png" alt="1577-2361"></span></a>
						</div>
						<div class="sell-form">
							<input class="form-input" type="text" placeholder="구매자명"
								id="register_name"> <input class="form-input"
								type="text" placeholder="연락처(-제외)" id="phone_no">
							<div>
								<div class="num-pdt">
									<span class="minus"><a href="#"><img
											src="/resources/static/images/btn-minus.png" alt="minus" onclick="minus()"></a></span>
									<span id="num" ref="num">1</span> <span class="plus"><a href="#"><img
											src="/resources/static/images/btn-plus.png" alt="plus" onclick="add()"></a></span>
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
							<div class="btn-radio" style="display:none;">
								<label><input type="radio" name="lookup" checked><span
									class="checkmark">날짜</span></label> <label><input type="radio"
									name="lookup"><span class="checkmark">시간</span></label> <label><input
									type="radio" name="lookup"><span class="checkmark">모델명</span></label>
							</div>
							<div class="search-area date" style="display:none;">
								<input type="text"> <a href="#"><img
									src="/resources/static/images/btn-date.png" alt="날짜검색"></a>
							</div>
						</div>
						<ul class="order-list">
							<c:forEach items="${orderRegisterHistory}" var="orderRegisterHistory" varStatus = "status">
								<li>
									<div class="order-details">
										<span class="thmb-img"><img
											src="..\resources\static\images/${orderRegisterHistory.image }" alt="thmb"></span>
										<div>
											<div class="dtl-top">
												<em>${status.count}</em><span><c:out
														value="${orderRegisterHistory.reg_date }" /><span class="bar">
												</span>
											</div>
											<div class="dtl-bot">
												<strong><c:out value="${orderRegisterHistory.item }" /></strong><span><c:out
														value="${orderRegisterHistory.cnt }" />개</span>
											</div>
										</div>
									</div>
									<div class="btn-area">
										<a href="#" class="btn-nor02" onclick="order_update()">교환요청</a><a href="#"
											class="btn-nor02" onclick="order_cancel(${orderRegisterHistory.order_his_seq})">구매취소</a>
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
								var num =  document.getElementById('num').innerText;

								console.log(register_name);
								console.log(phone_no);
								console.log(num);

								$.ajax({
									url : '/order/api/order_register',
									type : 'POST',
									data : "register_name=" + register_name
											+ "&phone_no=" + phone_no
											+ "&num=" + num
											+ "&order_seq=" + ${orderDetail.order_seq},
									success : function(result) {
										if("200" == result) {
											alert("주문이 완료되었습니다.");
											window.location.href = "/order/orderDetail?order_seq=" + ${orderDetail.order_seq}
										} else {
											alert("주문이 정상 수행되지 않았습니다.");
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
	
	<script>
		function order_cancel(order_his_seq) {
			
			if(confirm("주문을 취소하시겠습니까?")) {
				$.ajax({
					type:"post",
					url:'/order/api/order_cancel?order_his_seq=' + order_his_seq,
					data : order_his_seq,
					success : function(data) {
						if("200" == data) {
							alert("주문 취소가 정상 처리 되었습니다.");
							window.location.href = "/order/orderDetail?order_seq=" + ${orderDetail.order_seq}
						} else {
							alert("주문 취소를 실패하였습니다.\n잠시후 다시 시도해주세요.");
						}
					},
					error : function(jqXHR, textStatus, errorThrown) {
						console.log('jqXHR', jqXHR);
						console.log('textStatus', textStatus);
						console.log('errorThrown', errorThrown);
					}
				});
			} else {
				alert("취소되었습니다.");
			}
		}
	</script>
	
	<script>
		function order_update() {
			console.log("주문 업데이트 관련 로직 추가되어야 함. (div태크 활용한 modal창)");
			alert("현재 준비중입니다.");
		}
	</script>
	
	<script>
	function add() {
		
		var num = document.getElementById('num').innerHTML;
		console.log("num : " + num);
	
		var add = parseInt(num) + parseInt("1");
		
		console.log("add = " +add);
		
		$("#num").text(add).val();
	}
	
	function minus() {
		
		var num = document.getElementById('num').innerHTML;
		console.log("num : " + num);
		
		if(parseInt(num) <= 1) {
			alert("수량을 감소할 수 없습니다.");
		} else {
			var add = parseInt(num) - parseInt("1");
		
			console.log("add = " +add);
		
			$("#num").text(add).val();
		}
		
		
	}
</script>
</body>
</html>