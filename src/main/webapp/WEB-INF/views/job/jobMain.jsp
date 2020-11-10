<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>
<div id="ctab" class="ctab">
	<ul class="tabs">
		<li class="current"><a href="#">전체</a></li>
		<li><a href="#">구인</a></li>
		<li><a href="#">구직</a></li>
		<li><a href="/board/boardWrite">글쓰기</a></li>
	</ul>
	<div class="panels">
		<div class="tabCon tab-cont01 current">
			<ul>
				<c:forEach var="jobList" items="${jobList}" varStatus="status">
					<li><a href="#" onclick="handle_toggle(${status.index} + 1)">
							<strong class="badge">${jobList.job_type }</strong> <span
							class="list-tit"> <span>${jobList.job_title }</span> <span
								class="date">${jobList.job_reg_date }<span class="bar">|</span>조회
									: ${jobList.job_hit }<span class="bar">|</span>${jobList.job_reg_id }
							</span>
						</span> <span class="list-frt"> <span class="btn-right"><img
									src="../resources/static/images/btn-right02.png" alt="button"></span>
						</span>
					</a></li>
					<div id="boardLi${status.index + 1}" class="listMainClass"
						style="display: none;">
						작성자
						<p class="reg_id">${jobList.job_reg_id}</p>
						제목
						<p class="title">${jobList.job_title}</p>
						내용
						<p class="content" html="${jobList.job_memo}">${jobList.job_memo}</p>
						<c:set var="file1" value="${jobList.file1 }" />
						<c:if test="${file1 ne null}">
						파일1
						<img src="..\resources\static\upload/${jobList.file1 }"
								width:"25%" height:"25%" alt="표시할 수 없음" />
						</c:if>

						<c:set var="file2" value="${jobList.file2 }" />
						<c:if test="${file2 ne null}">
						파일2
						<img src="..\resources\static\upload/${jobList.file2 }"
								width:"25%" height:"25%" alt="표시할 수 없음" />
						</c:if>
						<c:set var="file3" value="${jobList.file3 }" />
						<c:if test="${file3 ne null}">
						파일3
						<img src="..\resources\static\upload/${jobList.file3 }"
								width:"25%" height:"25%" alt="표시할 수 없음" />
						</c:if>
						<button @click="handle_toggle" type="button">확인</button>
					</div>
				</c:forEach>
			</ul>
		</div>
		<div class="tabCon tab-cont01">
			<ul>
				<c:forEach var="jobList1" items="${jobList1}" varStatus="status">
					<li><a href="#" onclick="handle_toggle1(${status.index} + 1)">
							<strong class="badge">${jobList1.job_type }</strong> <span
							class="list-tit"> <span>${jobList1.job_title }</span> <span
								class="date">${jobList1.job_reg_date }<span class="bar">|</span>조회
									: ${jobList1.job_hit }<span class="bar">|</span>${jobList1.job_reg_id }
							</span>
						</span> <span class="list-frt"> <span class="btn-right"><img
									src="../resources/static/images/btn-right02.png" alt="button"></span>
						</span>
					</a></li>
					<div id="boardLi-${status.index + 1}" class="listMainClass"
						style="display: none;">
						작성자
						<p class="reg_id">${jobList1.job_reg_id}</p>
						제목
						<p class="title">${jobList1.job_title}</p>
						내용
						<p class="content" html="${jobList1.job_memo}">${jobList1.job_memo}</p>
						<c:set var="file1" value="${jobList1.file1 }" />
						<c:if test="${file1 ne null}">
						파일1
						<img src="..\resources\static\upload/${jobList1.file1 }"
								width:"25%" height:"25%" alt="표시할 수 없음" />
						</c:if>

						<c:set var="file2" value="${jobList1.file2 }" />
						<c:if test="${file2 ne null}">
						파일2
						<img src="..\resources\static\upload/${jobList1.file2 }"
								width:"25%" height:"25%" alt="표시할 수 없음" />
						</c:if>
						<c:set var="file3" value="${jobList1.file3 }" />
						<c:if test="${file3 ne null}">
						파일3
						<img src="..\resources\static\upload/${jobList1.file3 }"
								width:"25%" height:"25%" alt="표시할 수 없음" />
						</c:if>
						<button @click="handle_toggle1" type="button">확인</button>
					</div>
				</c:forEach>
			</ul>
		</div>
		<div class="tabCon tab-cont01">
			<ul>
				<c:forEach var="jobList2" items="${jobList2}" varStatus="status">
					<li><a href="#" onclick="handle_toggle2(${status.index} + 1)">
							<strong class="badge badge-b">${jobList2.job_type }</strong> <span
							class="list-tit"> <span>${jobList2.job_title }</span> <span
								class="date">${jobList2.job_reg_date }<span class="bar">|</span>조회
									: ${jobList2.job_hit }<span class="bar">|</span>${jobList2.job_reg_id }
							</span>
						</span> <span class="list-frt"> <span class="btn-right"><img
									src="../resources/static/images/btn-right02.png" alt="button"></span>
						</span>
					</a></li>
					<div id="boardLi_${status.index + 1}" class="listMainClass"
						style="display: none;">
						작성자
						<p class="reg_id">${jobList2.job_reg_id}</p>
						제목
						<p class="title">${jobList2.job_title}</p>
						내용
						<p class="content" html="${jobList2.job_memo}">${jobList2.job_memo}</p>
						<c:set var="file1" value="${jobList2.file1 }" />
						<c:if test="${file1 ne null}">
						파일1
						<img src="..\resources\static\upload/${jobList2.file1 }"
								width:"25%" height:"25%" alt="표시할 수 없음" />
						</c:if>

						<c:set var="file2" value="${jobList2.file2 }" />
						<c:if test="${file2 ne null}">
						파일2
						<img src="..\resources\static\upload/${jobList2.file2 }"
								width:"25%" height:"25%" alt="표시할 수 없음" />
						</c:if>
						<c:set var="file3" value="${jobList2.file3 }" />
						<c:if test="${file3 ne null}">
						파일3
						<img src="..\resources\static\upload/${jobList2.file3 }"
								width:"25%" height:"25%" alt="표시할 수 없음" />
						</c:if>
						<button @click="handle_toggle2" type="button">확인</button>
					</div>
				</c:forEach>
			</ul>
		</div>
		<div class="tabCon tab-cont01"></div>
	</div>
</div>

<%@include file="../include/footer.jsp"%>
</div>

<script>
	$(document).ready(function() {
		$('#li2').addClass('current');
	});

	$(document).ready(function() {
		$("#txt-title").text("구인/구직");
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

<!-- <script>
$(document).ready(function() {
	$("#txt-title").text("구인/구직");
	document.querySelector('.cs-num').scrollIntoView(true);
	setTimeout(function() { 
		$('#topdiv').fadeIn();
		document.querySelector('.cs-num').scrollIntoView(true);
	}, 100);

});
</script> -->

</body>
</html>