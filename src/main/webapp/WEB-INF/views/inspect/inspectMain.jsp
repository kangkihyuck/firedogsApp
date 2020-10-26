<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<div id="ctab" class="ctab">
	<ul class="tabs type02">
		<li class="current"><a href="#">전체</a></li>
		<li><a href="#">특정설비</a></li>
		<li><a href="#">LPG용기</a></li>
	</ul>
	<div class="panels">
		<div class="tabCon tab-cont01 current">
			<ul>
				<c:forEach var="inspectionList" items="${inspectionList}"
					varStatus="status">
					<li><a href="#" onclick="handle_toggle(${status.index} + 1)"
						id="'listLi' + ${status.index } + 1"> <strong class="badge">${inspectionList.gas_cat}</strong>
							<span class="list-tit"> <span>${inspectionList.gas_title}</span>
								<span class="date">${inspectionList.gas_reg_date}<span
									class="bar">|</span>조회 : ${inspectionList.gas_hit}<span
									class="bar">|</span>${inspectionList.gas_reg_id }</span>
						</span> <span class="list-frt"> <span class="btn-right"><img
									src="../resources/static/images/btn-right02.png" alt="button"></span>
						</span>
					</a></li>
					<div id="boardLi${status.index + 1}" class="listMainClass"
						style="display: none;">
						작성자
						<p class="reg_id">${inspectionList.gas_reg_id}</p>
						제목
						<p class="title">${inspectionList.gas_title}</p>
						내용
						<p class="content" html="${inspectionList.gas_memo}">${inspectionList.gas_memo}</p>
						<button @click="handle_toggle" type="button">확인</button>
					</div>
				</c:forEach>
			</ul>
		</div>
		<div class="tabCon tab-cont01">
			<ul>
				<c:forEach var="inspectionList1" items="${inspectionList1}"
					varStatus="status">
					<li><a href="#" onclick="handle_toggle1(${status.index} + 1)"
						id="'listLi' + ${status.index } + 1"> <strong class="badge">${inspectionList1.gas_cat}</strong>
							<span class="list-tit"> <span>${inspectionList1.gas_title}</span>
								<span class="date">${inspectionList1.gas_reg_date}<span
									class="bar">|</span>조회 : ${inspectionList1.gas_hit}<span
									class="bar">|</span>${inspectionList1.gas_reg_id }</span>
						</span> <span class="list-frt"> <span class="btn-right"><img
									src="../resources/static/images/btn-right02.png" alt="button"></span>
						</span>
					</a></li>
					<div id="boardLi-${status.index + 1}" class="listMainClass"
						style="display: none;">
						작성자
						<p class="reg_id">${inspectionList1.gas_reg_id}</p>
						제목
						<p class="title">${inspectionList1.gas_title}</p>
						내용
						<p class="content" html="${inspectionList1.gas_memo}">${inspectionList1.gas_memo}</p>
						<button @click="handle_toggle1" type="button">확인</button>
					</div>
				</c:forEach>
			</ul>
		</div>
		<div class="tabCon tab-cont01">
			<ul>
				<c:forEach var="inspectionList2" items="${inspectionList2}"
					varStatus="status">
					<li><a href="#" onclick="handle_toggle2(${status.index} + 1)"
						id="'listLi' + ${status.index } + 1"> <strong class="badge badge-b">${inspectionList2.gas_cat}</strong>
							<span class="list-tit"> <span>${inspectionList2.gas_title}</span>
								<span class="date">${inspectionList2.gas_reg_date}<span
									class="bar">|</span>조회 : ${inspectionList2.gas_hit}<span
									class="bar">|</span>${inspectionList2.gas_reg_id }</span>
						</span> <span class="list-frt"> <span class="btn-right"><img
									src="../resources/static/images/btn-right02.png" alt="button"></span>
						</span>
					</a></li>
					<div id="boardLi_${status.index + 1}" class="listMainClass"
						style="display: none;">
						작성자
						<p class="reg_id">${inspectionList2.gas_reg_id}</p>
						제목
						<p class="title">${inspectionList2.gas_title}</p>
						내용
						<p class="content" html="${inspectionList2.gas_memo}">${inspectionList2.gas_memo}</p>
						<button @click="handle_toggle2" type="button">확인</button>
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
		$('#li5').addClass('current');
	});
	
	$(document).ready(function() {
		$("#txt-title").text("검사기관");
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

<script>
	function setFlag(i) {
		console.log("i : " + i);
		$.ajax({
            type: "get" ,
            url: '/inspect/inspectMain?flag=' + i,
            data : $("#forms").serialize(),
            contentType : "application/x-www-form-urlencoded; charset=UTF-8",
            success: function(data){
               console.log("성공");
               
              /*  $("#listDiv").fadeOut('fast').load(window.location + ' #listDiv').fadeIn("fast"); */
               /* $("#listDiv1").fadeOut('fast').load(window.location + ' #listDiv1').fadeIn("fast"); */
              
            }
            ,error: function(jqXHR, textStatus, errorThrown) {
                console.log('jqXHR', jqXHR);
                console.log('textStatus', textStatus);
                console.log('errorThrown', errorThrown);
            }
        });
	}
</script>
</body>
</html>