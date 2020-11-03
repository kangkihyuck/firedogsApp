<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
					<strong class="stit">가입신청</strong>
				</div>
				<form class="form-area" role="form" id="forms">
					<label><span class="form-tit">판매점명</span><input type="text" name = "company_name"></label>
					<label><span class="form-tit">사용자명</span><input type="text" name = "user_name"></label>
					<label><span class="form-tit">휴대폰번호</span><input
						type="text" class="form-tit" name = "phone_no"><!-- <a href="#" class="btn-nor">본인인증</a>--></label>
					<label><span class="form-tit">아이디</span><input type="text"
						class="type02" id = "checkid" name="checkid"><a href="#" class="btn-nor" onclick = "checkID()">중복체크</a></label> 
						<label><span class="form-tit">비밀번호</span><input type="password" id="pw" name = "pw"></label>
						<label><span class="form-tit">비밀번호 확인</span><input type="password" id = "pwok" name = "pwok"></label>
						<label class="type02"><span class="form-tit">사업장주소</span> <input
						type="text" disabled class="type02" id="sample4_postcode"
						placeholder="우편번호"><a href="#" class="btn-nor"
						onclick="sample4_execDaumPostcode()">우편번호검색</a> <input type="text"
						id="sample4_roadAddress" placeholder="도로명주소" name = "addr1"> <input
						type="text" id="sample4_jibunAddress" placeholder="지번주소"
						style="display: none;"> <input type="text"
						id="sample4_detailAddress" placeholder="상세주소" name = "addr2"> </label>
					<div id="postnum"
						style="display: none; border: 1px solid; width: 100%; height: 30%; margin: 5px 0; position: relative"></div>
				</form>
			</div>
		</div>
		<div class="progress-btn-area">
			<div class="inner-wrap">
				<!-- <a href="#" class="prev">이전</a> -->
				<a href="#" class="next" onclick="register_member()">가입신청서 전송</a>
			</div>
		</div>
	</div>
	
	<!-- 아이디 중복검사 체크 -->
	<script>
		function checkID() {
			var checkID = document.getElementById("checkid").value;
			console.log(checkID);
			
			if(checkID == '' || checkID == null) {
				alert("아이디를 입력하세요.");
			} else {
				$.ajax({
					type:"post",
					url : "/account/api/checkID",
					data : $("#forms").serialize(),
					contentType : "application/x-www-form-urlencoded; charset=UTF-8",
					success : function(data) {
						if(data == "200") {
							alert("사용가능한 아이디 입니다.");
						} else {
							alert("사용 불가능한 아이디 입니다.");
							document.getElementById("checkid").value = '';
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

	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		
	<!-- kakao 주소 api 관련 -->
	<script>
		var element_postnum = document.getElementById('postnum');

		function foldDaumPostcode() {
			// iframe을 넣은 element를 안보이게 한다.
			element_postnum.style.display = 'none';
		}
		//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
		 function sample4_execDaumPostcode() {
        // 현재 scroll 위치를 저장해놓는다.
        var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample4_roadAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample4_roadAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample4_detailAddress").focus();

                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_postnum.style.display = 'none';

                // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
                document.body.scrollTop = currentScroll;
            },
            // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
            onresize : function(size) {
            	element_postnum.style.height = size.height+'px';
            },
            width : '100%',
            height : '100%'
        }).embed(element_postnum);

        // iframe을 넣은 element를 보이게 한다.
        element_postnum.style.display = 'block';
    }
	</script>
	
	<!-- 가입신청 완료 -->
	<script>
		function register_member() {
			$.ajax({
				type:"post",
				url:'/account/api/register_member',
				data : $("#forms").serialize(),
				success : function(data) {
					if(data == "200") {
						window.location.href = '/account/registerComplete';
					} else if(data == "201") {
						alert("판매점명을 입력하세요.");
					} else if(data == "202") {
						alert("사용자명을 입력하세요.");
					} else if(data == "203") {
						alert("휴대폰번호를 입력하세요.");
					} else if(data == "204") {
						alert("아이디를 입력하세요.");
					} else if(data == "205") {
						alert("비밀번호를 입력하세요.");
					} else if(data == "206") {
						alert("비밀번호 확인을 입력하세요.");
					} else if(data == "207") {
						alert("주소를 입력하세요.");
					} else {
						alert("비밀번호 / 비밀번호 확인이 일치하지 않습니다.");
					}
					
				}
				, error : function(jqXHR, textStatus, errorThrown) {
	                console.log('jqXHR', jqXHR);
	                console.log('textStatus', textStatus);
	                console.log('errorThrown', errorThrown);
	            }
			});
		}
	</script>
</body>
</html>