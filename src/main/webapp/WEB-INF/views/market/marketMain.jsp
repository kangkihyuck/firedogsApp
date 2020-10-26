<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>

<div id="ctab" class="ctab">
	<ul class="tabs">
		<li class="current"><a href="#">전체</a></li>
		<li><a href="#">팝니다</a></li>
		<li><a href="#">삽니다</a></li>
		<li><a href="/board/boardWrite">글쓰기</a></li>
	</ul>
	<div class="panels">
		<div class="tabCon tab-cont01 current">
			<ul>
				<c:forEach var="marketList" items="${marketList}" varStatus="status">
					<li><a href="#" onclick="handle_toggle(${status.index} + 1)"> <strong class="badge">${marketList.deal_type}</strong>
							<span class="list-tit"> <span>${marketList.deal_title}</span>
								<span class="date">${marketList.deal_reg_date}<span
									class="bar">|</span>조회 : ${marketList.deal_hit}<span
									class="bar">|</span>${marketList.deal_reg_id}
							</span>
						</span> <span class="list-frt"> <span class="btn-right"><img
									src="../resources/static/images/btn-right02.png" alt="button"></span>
						</span>
					</a></li>
					<div id="boardLi${status.index + 1}" class="listMainClass"
						style="display: none;">
						작성자
						<p class="reg_id">${marketList.deal_reg_id}</p>
						제목
						<p class="title">${marketList.deal_title}</p>
						내용
						<p class="content" html="${marketList.deal_memo}">${marketList.deal_memo}</p>
						<button @click="handle_toggle" type="button">확인</button>
					</div>
				</c:forEach>
			</ul>
		</div>
		<div class="tabCon tab-cont01">
			<ul>
				<c:forEach var="marketList1" items="${marketList1}" varStatus="status">
					<li><a href="#" onclick="handle_toggle1(${status.index} + 1)"> <strong class="badge">${marketList1.deal_type}</strong>
							<span class="list-tit"> <span>${marketList1.deal_title}</span>
								<span class="date">${marketList1.deal_reg_date}<span
									class="bar">|</span>조회 : ${marketList1.deal_hit}<span
									class="bar">|</span>${marketList1.deal_reg_id}
							</span>
						</span> <span class="list-frt"> <span class="btn-right"><img
									src="../resources/static/images/btn-right02.png" alt="button"></span>
						</span>
					</a></li>
				</c:forEach>
			</ul>
		</div>
		<div class="tabCon tab-cont01">
			<ul>
				<c:forEach var="marketList2" items="${marketList2}" varStatus="status">
					<li><a href="#" onclick="handle_toggle2(${status.index} + 1)"> <strong class="badge badge-b">${marketList2.deal_type}</strong>
							<span class="list-tit"> <span>${marketList2.deal_title}</span>
								<span class="date">${marketList2.deal_reg_date}<span
									class="bar">|</span>조회 : ${marketList2.deal_hit}<span
									class="bar">|</span>${marketList2.deal_reg_id}
							</span>
						</span> <span class="list-frt"> <span class="btn-right"><img
									src="../resources/static/images/btn-right02.png" alt="button"></span>
						</span>
					</a></li>
				</c:forEach>
			</ul>
		</div>
		<div class="tabCon tab-cont04"></div>
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
	$(document).ready(function() {
		$('#li3').addClass('current');
	});

	$(document).ready(function() {
		$("#txt-title").text("사고/팔고");
	});
</script>

<script>
	var listIndex = 0;
	function handle_toggle(index) {
		console.log("boardLi"+index);
    	$(".listMainClass").hide();
    	
    	if(listIndex == index) {
    		$("#boardLi" + index).hide();
    		listIndex = 0;
    	} else {
    		$("#boardLi"+index).show();
    		listIndex = index;
    	}
	}
</script>

<script>
	var listIndex = 0;
	function handle_toggle1(index) {
		console.log("boardLi-"+index);
    	$(".listMainClass").hide();
    	
    	if(listIndex == index) {
    		$("#boardLi-" + index).hide();
    		listIndex = 0;
    	} else {
    		$("#boardLi-"+index).show();
    		listIndex = index;
    	}
	}
</script>

<script>
	var listIndex = 0;
	function handle_toggle2(index) {
		console.log("boardLi_"+index);
    	$(".listMainClass").hide();
    	
    	if(listIndex == index) {
    		$("#boardLi_" + index).hide();
    		listIndex = 0;
    	} else {
    		$("#boardLi_"+index).show();
    		listIndex = index;
    	}
	}
</script>
</body>
</html>