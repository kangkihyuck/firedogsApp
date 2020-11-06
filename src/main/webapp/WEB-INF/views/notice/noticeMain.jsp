<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>

<div id="ctab" class="ctab">
	<ul class="tabs">
		<li class="current"><a href="#">전체</a></li>
	</ul>
	<div class="panels">
		<div class="tabCon tab-cont01 current">
			<ul>
				<c:forEach var="noticeList" items="${noticeList}" varStatus="status">
					<li><a href="#" onclick="handle_toggle(${status.index} + 1)">
							<strong class="badge">${noticeList.notice_type}</strong> <span
							class="list-tit"> <span>${noticeList.notice_title}</span> <span
								class="date">${noticeList.notice_reg_date}<span class="bar">|</span>조회
									: ${noticeList.notice_hit}<span class="bar">|</span>${notice.deal_reg_id}
							</span>
						</span> <span class="list-frt"> <span class="btn-right"><img
									src="../resources/static/images/btn-right02.png" alt="button"></span>
						</span>
					</a></li>
					<div id="boardLi${status.index + 1}" class="listMainClass"
						style="display: none;">
						작성자
						<p class="reg_id">${noticeList.notice_reg_id}</p>
						제목
						<p class="title">${noticeList.notice_title}</p>
						내용
						<p class="content" html="${noticeList.notice_memo}">${noticeList.notice_memo}</p>
						<%-- <c:set var="file1" value="${noticeList.file1 }" />
						<c:if test="${file1 ne null}">
						파일1
						<img src="..\resources\static\upload/${marketList.file1 }"
								width:"25%" height:"25%" alt="표시할 수 없음" />
						</c:if>

						<c:set var="file2" value="${marketList.file2 }" />
						<c:if test="${file2 ne null}">
						파일2
						<img src="..\resources\static\upload/${marketList.file2 }"
								width:"25%" height:"25%" alt="표시할 수 없음" />
						</c:if>
						<c:set var="file3" value="${marketList.file3 }" />
						<c:if test="${file3 ne null}">
						파일3
						<img src="..\resources\static\upload/${marketList.file3 }"
								width:"25%" height:"25%" alt="표시할 수 없음" />
						</c:if> --%>
						<button @click="handle_toggle" type="button">확인</button>
					</div>
				</c:forEach>
			</ul>
		</div>
	</div>
</div>
</div>
<%@include file="../include/footer.jsp"%>
</div>
<script>
	$(document).ready(function() {
		$('#li8').addClass('current');
	});

	$(document).ready(function() {
		$("#txt-title").text("공지사항");
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