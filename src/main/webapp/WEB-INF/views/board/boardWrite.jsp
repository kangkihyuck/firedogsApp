<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					<div class="btn-menu" style="display: none">
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
						<span class="usear-name txt-bold">${sessionScope.username}</span>님
						반갑습니다.
					</div>
				</div>
			</div>
			<h2 class="txt-bold">스마트가스톡 서비스</h2>
		</header>
		<div id="container">
			<div class="contents">
				<div class="inner-wrap">
					<strong class="stit">글쓰기</strong>
				</div>
				<form class="form-area" role="form" id="forms"
					enctype="multipart/form-data" action="/board/api/board_register"
					method="post">
					<label><span class="form-tit">제목</span><input type="text"
						id="title" name="title"></label>
					<div class="col-2">
						<div class="select-wrap">
							<label><span class="form-tit">분류</span></label>
							<div class="select-ui">
								<!--<em>팝니다</em>-->
								<!-- display:block 시 option 노출 -->
								<!--<ul style="display:none">
									<li>삽니다</li>
									<li>구인</li>
									<li>구직</li>
								</ul>-->
								<select name='category' id='category'
									style="width: 100%; height: 37px;">
									<option value="팝니다">팝니다</option>
									<option value="삽니다">삽니다</option>
									<option value="구인">구인</option>
									<option value="구직">구직</option>
								</select>
							</div>
						</div>
						<label><span class="form-tit">아이디</span><input type="text"
							id="user_id" name="user_id"></label>
					</div>
					<label><span class="form-tit">연락처</span><input type="text"
						id="phone_no" name="phone_no"></label> <label><span
						class="form-tit">내용입력</span> <textarea id="contents" id=""
							cols="30" rows="7" name="contents"></textarea></label> <label><span
						class="form-tit">파일첨부#1</span><input type="file" capture="camera"
						name="file1" id="file"> <!-- <span class="btn-area"><a href="#" class="btn-nor">등록</a><a href="#" class="btn-nor type02">삭제</a></span> -->
					</label> <label><span class="form-tit">파일첨부#2</span><input
						type="file" capture="camera" name="file1"> <!-- <span class="btn-area"><a href="#" class="btn-nor">등록</a><a href="#" class="btn-nor type02">삭제</a></span> -->
					</label> <label><span class="form-tit">파일첨부#3</span><input
						type="file" capture="camera" name="file1"> <!-- <span class="btn-area"><a href="#" class="btn-nor">등록</a><a href="#" class="btn-nor type02">삭제</a></span> -->
					</label>
					<div class="progress-btn-area">
						<div class="inner-wrap">
							<a href="#" class="prev" onclick="backPress()">뒤로</a> <a href="#"
								class="next" onclick="register_board()">글쓰기</a>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="progress-btn-area">
			<div class="inner-wrap">
				<a href="#" class="prev" onclick="backPress()">뒤로</a> <a href="#"
					class="next" onclick="register_board()">글쓰기</a>
			</div>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>


	<script type="text/javascript">
		function backPress() {
			window.history.back();
		}
	</script>

	<script>
		function register_board() {
			var title = document.getElementById("title").value;
			var user_id = document.getElementById("user_id").value;
			var contents = document.getElementById("contents").value;
			
			var form = $('#forms')[0];

	        // Create an FormData object 
	        var data = new FormData(form);

	        // If you want to add an extra field for the FormData
	        //data.append("file1", "gg"); 

			if (null == title || '' == title || null == user_id
					|| '' == user_id || null == contents || '' == contents) {
				alert("정보를 입력해주세요.");
			} else {
				if (confirm("게시글을 등록하시겠습니까?")) {
					$.ajax({
						type : "post",
						enctype : 'multipart/form-data',
						processData : false,
						contentType : false,
						cache : false,
						url : '/board/api/board_register',
						data : data,
						cache : false,
						contentType : false,
						processData : false,
						success : function(data) {
							if ("200" == data || "201" == data) {
								alert("'사고/팔고'에 게시글 등록이 완료되었습니다.");
								window.location.href = '/market/marketMain';
							} else if ("202" == data || "203" == data) {
								alert("'구인/구직'에 게시글 등록이 완료되었습니다.");
								window.location.href = '/job/jobMain';
							} else if ("300" == data) {
								alert("게시글 등록에 실패하였습니다.");
							} else {
								alert("알 수 없는 오류가 발생하였습니다.");
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
		}
	</script>
</body>
</html>