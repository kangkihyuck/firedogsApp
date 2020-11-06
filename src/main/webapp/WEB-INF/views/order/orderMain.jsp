<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>

<div id="ctab" class="ctab02">
	<div class="sub-menu">
		<span class="btn-tab-next"></span>
		<div class="scroll-view">
			<ul class="tabs">
				<li class="current"><a href="#">전체</a></li>
				<li><a href="#">절체기</a></li>
				<li><a href="#">계량기</a></li>
				<li><a href="#">게이지(인디게이터)</a></li>
				<li><a href="#">소형저장탱크</a></li>
				<li><a href="#">배터리</a></li>
				<li><a href="#">액서사리</a></li>
				<li><a href="#">장바구니</a></li>
				<li><a href="#">주문현황</a></li>
			</ul>
		</div>
	</div>
	<div class="panels">
		<div class="tabCon tab-cont01 current">
			<div class="inner-wrap">
				<div class="search-area">
					<input type="text" placeholder="제품검색" id = "keywordInput"> <a href="#" onclick = search_orderList()><img
						src="/resources/static/images/btn-search.png" alt="검색"></a>
				</div>
				<ul class="pdt-lists">
				<c:forEach var="orderList" items="${orderList}" varStatus="status">
					<li><a href="/order/orderDetail?order_seq=${orderList.order_seq }"> <span class="pdt-img"><img
								src="..\resources\static\images/${orderList.image }" alt="${orderList.item }"></span>
							<span class="pdt-name txt-bold">${orderList.reg_id }</span>
							<dl>
								<dt>${orderList.item }</dt>
								<dd class="txt-light">${orderList.contents }</dd>
							</dl>
					</a></li>
				</c:forEach>
				</ul>
			</div>
		</div>
		<div class="tabCon tab-cont02">
			<div class="inner-wrap">
				<!-- <div class="search-area">
					<input type="text" placeholder="제품검색"> <a href="#"><img
						src="/resources/static/images/btn-search.png" alt="검색"></a>
				</div> -->
				<ul class="pdt-lists">
				<c:forEach var="orderList1" items="${orderList1}" varStatus="status">
					<li><a href="/order/orderDetail?order_seq=${orderList1.order_seq }"> <span class="pdt-img"><img
								src="..\resources\static\images/${orderList1.image }" alt="${orderLis1t.item }"></span>
							<span class="pdt-name txt-bold">${orderList1.reg_id }</span>
							<dl>
								<dt>${orderList1.item }</dt>
								<dd class="txt-light">${orderList1.contents }</dd>
							</dl>
					</a></li>
				</c:forEach>
				</ul>
			</div>
		</div>
		<div class="tabCon tab-cont03">
			<div class="inner-wrap">
				<!-- <div class="search-area">
					<input type="text" placeholder="제품검색"> <a href="#"><img
						src="/resources/static/images/btn-search.png" alt="검색"></a>
				</div> -->
				<ul class="pdt-lists">
				<c:forEach var="orderList2" items="${orderList2}" varStatus="status">
					<li><a href="/order/orderDetail?order_seq=${orderList2.order_seq }"> <span class="pdt-img"><img
								src="..\resources\static\images/${orderList2.image }" alt="${orderList2.item }"></span>
							<span class="pdt-name txt-bold">${orderList2.reg_id }</span>
							<dl>
								<dt>${orderList2.item }</dt>
								<dd class="txt-light">${orderList2.contents }</dd>
							</dl>
					</a></li>
				</c:forEach>
				</ul>
			</div>
		</div>
		<div class="tabCon tab-cont04">
			<div class="inner-wrap">
				<!-- <div class="search-area">
					<input type="text" placeholder="제품검색"> <a href="#"><img
						src="/resources/static/images/btn-search.png" alt="검색"></a>
				</div> -->
				<ul class="pdt-lists">
				<c:forEach var="orderList3" items="${orderList3}" varStatus="status">
					<li><a href="/order/orderDetail?order_seq=${orderList3.order_seq }"> <span class="pdt-img"><img
								src="..\resources\static\images/${orderList3.image }" alt="${orderList3.item }"></span>
							<span class="pdt-name txt-bold">${orderList3.reg_id }</span>
							<dl>
								<dt>${orderList3.item }</dt>
								<dd class="txt-light">${orderList3.contents }</dd>
							</dl>
					</a></li>
				</c:forEach>
				</ul>
			</div>
	    </div>
		<div class="tabCon tab-cont05">
			<div class="inner-wrap">
				<!-- <div class="search-area">
					<input type="text" placeholder="제품검색"> <a href="#"><img
						src="/resources/static/images/btn-search.png" alt="검색"></a>
				</div> -->
				<ul class="pdt-lists">
				<c:forEach var="orderList4" items="${orderList4}" varStatus="status">
					<li><a href="/order/orderDetail?order_seq=${orderList4.order_seq }"> <span class="pdt-img"><img
								src="..\resources\static\images/${orderList4.image }" alt="${orderList4.item }"></span>
							<span class="pdt-name txt-bold">${orderList4.reg_id }</span>
							<dl>
								<dt>${orderList4.item }</dt>
								<dd class="txt-light">${orderList4.contents }</dd>
							</dl>
					</a></li>
				</c:forEach>
				</ul>
			</div>
		</div>
		<div class="tabCon tab-cont06">
			<div class="inner-wrap">
				<!-- <div class="search-area">
					<input type="text" placeholder="제품검색"> <a href="#"><img
						src="/resources/static/images/btn-search.png" alt="검색"></a>
				</div> -->
				<ul class="pdt-lists">
				<c:forEach var="orderList5" items="${orderList5}" varStatus="status">
					<li><a href="/order/orderDetail?order_seq=${orderList5.order_seq }"> <span class="pdt-img"><img
								src="..\resources\static\images/${orderList5.image }" alt="${orderList5.item }"></span>
							<span class="pdt-name txt-bold">${orderList5.reg_id }</span>
							<dl>
								<dt>${orderList5.item }</dt>
								<dd class="txt-light">${orderList5.contents }</dd>
							</dl>
					</a></li>
				</c:forEach>
				</ul>
			</div>
		</div>
		<div class="tabCon tab-cont07">
			<div class="inner-wrap">
				<!-- <div class="search-area">
					<input type="text" placeholder="제품검색"> <a href="#"><img
						src="/resources/static/images/btn-search.png" alt="검색"></a>
				</div> -->
				<ul class="pdt-lists">
				<c:forEach var="orderList6" items="${orderList6}" varStatus="status">
					<li><a href="/order/orderDetail?order_seq=${orderList6.order_seq }"> <span class="pdt-img"><img
								src="..\resources\static\images/${orderList6.image }" alt="${orderList6.item }"></span>
							<span class="pdt-name txt-bold">${orderList6.reg_id }</span>
							<dl>
								<dt>${orderList6.item }</dt>
								<dd class="txt-light">${orderList6.contents }</dd>
							</dl>
					</a></li>
				</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</div>
</div>
<!-- <div id="cs-num">
	<a href="tel:1577-2361" class="cs-inner"> <span
		class="badge badge-w">대표번호</span> <span class="cs-num"><img
			src="../resources/static/images/txt-csnum.png" alt="1577-2361"></span>
		<span class="cs-icon"><img
			src="../resources/static/images/icon-csnum.png" alt="1577-2361"></span>
	</a>
</div> -->
<%@include file="../include/footer.jsp"%>
</div>

<script>
	function search_orderList(){
		self.location = "/order/orderMain?keyword=" + $('#keywordInput').val();
	}
</script>

<script>
	$(document).ready(function() {
		$('#li1').addClass('current');
	});

	$(document).ready(function() {
		$("#txt-title").text("주문");
	});
	</script>
	</body>
	</html>
