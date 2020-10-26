<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>

<div id="ctab" class="ctab">
	<ul class="tabs type02">
		<li class="current"><a href="#">전체</a></li>
	</ul>
	<div class="panels">
		<div class="tabCon tab-cont01 current">
			<ul>
				<c:forEach var="lpgDisclosureList" items="${lpgDisclosureList}"
					varStatus="status">
					<li><a href="#" onclick="handle_toggle(${status.index} + 1)"
						id="'listLi' + ${status.index } + 1"> <strong class="badge">전체</strong>
							<span class="list-tit"> <span>${lpgDisclosureList.initial_title}</span>
								<span class="date">${lpgDisclosureList.initial_reg_date}<span
									class="bar">|</span>조회 : ${lpgDisclosureList.initial_hit}<span
									class="bar">|</span>${lpgDisclosureList.initial_reg_id }</span>
						</span> <span class="list-frt"> <span class="btn-right"><img
									src="../resources/static/images/btn-right02.png" alt="button"></span>
						</span>
					</a></li>
					<div id="boardLi${status.index + 1}" class="listMainClass"
						style="display: none;">
						작성자
						<p class="reg_id">${lpgDisclosureList.initial_reg_id}</p>
						제목
						<p class="title">${lpgDisclosureList.initial_title}</p>
						내용
						<p class="content" html="${inspectionList.gas_memo}">${lpgDisclosureList.initial_memo}</p>
						<button @click="handle_toggle" type="button">확인</button>
					</div>
				</c:forEach>
			</ul>
		</div>
		<!-- <div class="tabCon tab-cont02"></div>
		<div class="tabCon tab-cont03"></div> -->
	</div>
</div>
</div>
<%@include file="../include/footer.jsp"%>
</div>
<script>
	$(document).ready(function() {
		$('#li4').addClass('current');
	});

	$(document).ready(function() {
		$("#txt-title").text("LPG 공시가");
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
</body>
</html>