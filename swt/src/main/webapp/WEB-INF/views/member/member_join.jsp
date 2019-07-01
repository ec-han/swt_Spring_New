<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${path}/resources/css/common.css?v=1"> 
<title>회원가입</title>
<!-- favicon -->
<link rel="icon" type="image/png" href="${path}/resources/images/logoswt_trans.png"> 
<style type="text/css">
		* { 
			box-sizing: border-box; 
			font-family: 'Noto Serif KR', serif;
		}
		body, h1, ul, p, h3 {
			margin: 0;
			padding: 0;
		}
		body { background-color: #e9eaee; }
		ul {list-style: none;}
		a { text-decoration: none; color: white; }
		input {
			outline: none;
		}
		select {
			outline: none;
		}
		button {
			outline: none;
		}

		.header, .container {
			width: 768px;
			margin: auto;
			box-sizing: border-box;
			border-left: 3px double #dee2e6;
   			border-right: 3px double #dee2e6;
   			background-color: #f5f6f7;
		}
		.header {
			height: 200px;
			padding-top: 62px;
			position: rlative;
			border-left: 3px double #dee2e6;
			border-right: 3px double #dee2e6;
		}
		.container {
			position: relative;
			margin: 0 auto;
			max-width: 768px;
			min-width: 460px;
			padding-top: 20px;
			height: 1150px;
			border-left: 3px double #dee2e6;
			border-right: 3px double #dee2e6;
		}
	
		.n_logo {
			display: block;
			width: 240px;
			height: 44px;
			background: url('${path}/resources/images/pc_sp_join.png') 0 -106px;
			margin: auto;
		}
		/* 회원가입 정보 */
		.join_content {
			width: 600px;
			margin: 0 auto;
		}
		.join_box_wrap{
			width: 550px;
			padding: 15px 15px;
			margin: 0 auto;
			margin-bottom: 20px;
			background-color: white;
			border: 3px double #dee2e6;
		}
		.row_group {
			overflow: hidden;
			width: 100%;
		}
		.join_title {
			margin: 19px 0 8px;
			padding-left: 5px;
			font-size: 16px;
			font-weight: 700;
			color: black;
		}
		.ps_box {
			display: block;
			position: relative;
			width: 100%;
			height: 51px;
			/* border-bottom: 1px solid #dadada; */
			border: none;
			padding: 10px 14px;
			/*background: #fff;*/
			vertical-align: top;
		}
		.int_id {
			/* padding-right: 110px; */
		}
		.int {
			display: block;
			position: relative;
			width: 100%; /* 자기가 가질수있는 영역의 처음부터 끝까지 100%. 얘의 영역을 알려면 얘의 부모를 봐야함.  */
			height: 29px;
			/* padding-right: 25px; */
			line-height: 29px;
			/* border-bottom: 1px solid #dadada; */
			border: none;
			border-bottom: 1px solid #dadada;;
			background: transparent;
			font-size: 16.5px;
			z-index: 10;
		}
		#id {
			width: 95%;
		}
		.step_url {
			position: absolute;
			top: 16px;
			right: 13px;
			font-size: 13px;
			line-height: 18px;
			color: #8e8e8e;
			padding-right: 30px;
		}
		.step_addr {
			
		}
		#step_mail {
			/* display: none; */
			font-size: 13px;
			line-height: 18px;
			color: #8e8e8e;
		} 
		/* 유효성 체크:나중에 block으로 바꿔야 함  */
		/* .error_next_box {
			display: none; 
			margin: 9px 0 -2px;
			font-size: 12px;
			line-height: 14px;
			color: red;
			height: 15px;
			padding-left: 12px;
		} */
		.int_pass {
			padding-right: 40px;
		}
		.bir_wrap {
			display: table;
			width: 100%;
		}
		.bir_dd, .bir_mm, .bir_yy {
			display: table-cell;
			table-layout: fixed;
			width: 147px;
			vertical-align: middle;
		}
		.bir_mm+.bir_dd, .bir_yy+.bir_mm {
			padding-left: 10px;
		}
		/* .bir_mm {
			width: 30%;
		} */
		.join_birthday .ps_box {
			padding: 11px 14px;
		}
		.sel {
			/* background: #fff url('img/sel_arr.gif') 100% 50% no-repeat; */
			background: transparent;
			/* width: 100%; */
			height: 29px;
			font-size: 15px;
			line-height: 18px;
			color: #000;
			border: none;
			-webkit-appearance: none;
			position: relative;
		}

		/* 가입하기 버튼 */
		.btn_double_area {
			margin: 30px -5px 0px;
			overflow: hidden;
		}
		.btn_double_area > span {
			display: block;
		    width: 90%;
    		margin: 0 auto;
		}
		a:hover {
			color: white;
			text-decoration: none;
		}
		#join_btn_type {
			width: auto;
			font-size: 20px;
			font-weight: 600;
			line-height: 50px;
			display: block;
			height: 61px;
			padding-top: 1px;
			text-align: center;
			color: #dee2e6;
			border: 3px double #dee2e6;
			background-color: #816288;
			transition: color 0.4s linear;
		}
		#join_btn_type:hover {
			color: black;
		    background-color: #dee2e6;
		    border: 3px double black;
		    outline: none;
		}
		
		.s_logo > img {
		    position: relative;
		    left: 25%;
		    height: 130px;
		    margin: 0 auto;
		    box-sizing: border-box;
		}
		#wrap_email {
			
			padding: 5px;
		}
		#wrap_email > * {
			float: left;
			margin-right: 10px;
			padding-top: 10px;
			display: flex;
		}
		.ps_email {
			display: block;
			position: relative;
			width: 100%;
			height: 51px;
			/* border-bottom: 1px solid #dadada;  */
			padding: 10px 14px;
			background: transparent;
			vertical-align: top;
			box-sizing: border-box;
		}
		#mailsel {
			position: relative;
			top: 14px;
			right: 0;
			width: 50%;
		}
		#selmail {
			font-weight: 400px;
			width: 100%;
			padding: 6px 8px 5px 7px;
			background: url('${path}/resources/images/sel_arr.gif') 100% 50% no-repeat;
			-webkit-appearance: none; 
		}
		.ps_mm {
			/* display: block; */
			position: relative;
			/* width: 30%; */
			height: 51px;
			/* border-bottom: 1px solid #dadada; */
			border: none;
			padding: 10px 14px;
			/*background: #fff;*/
			vertical-align: top;
		}
		#mm {
			width: 80%;
			padding: 6px 8px 5px 7px;
			background: url('${path}/resources/images/sel_arr.gif') 100% 50% no-repeat;
			-webkit-appearance: none; 
		}
		#mm > option {
			border: 1px solid #dadada;
			font-weight: 400px;
		}
		
		#idemail {
			width: 44%;
		}
		#urlemail{
			width: 45%;
		}
		
		#star {
			color: #b30000;
		}
		
		
		.addr_wrap > input{
			display: block;
			position: relative;
			width: 90%; /* 자기가 가질수있는 영역의 처음부터 끝까지 100%. 얘의 영역을 알려면 얘의 부모를 봐야함.  */
			height: 29px;
			margin: 10px 14px;
			line-height: 29px;
			background: transparent;
			font-size: 15px;
			z-index: 10;
			outline: none;
			border: none;
			border-bottom: 1px solid #dadada;
		}
		#addr_btn > input{
			display: block;
			position: relative;
			height: 29px;
			margin: 10px 14px;
			/* line-height: 29px; */
			background: transparent;
			font-size: 15px;
			z-index: 10;
			outline: none;
			background-color: #816288;
			border: 3px double #dee2e6;
			color: white;
		}
		.chenked_btn {
			display: none;
		}
		#name {
			width: 95%;
		}
		#phone {
			width: 95%;
		}
		#dd {
			width: 84%;
		}
		.addr_wrap{
			position: relative;
		}
		.birth_check_btn {
			position: absolute;
		    top: 1rem;
		    right: 2rem;
		    display: none;
		}
</style>
</head>
<body>
	<header>
		<div class="header">
			<h1 class="swt_logo">
				<a href="${path}/" class="s_logo">
					<img alt="로고 이미지 "src="${path}/resources/images/mylogo_constract2.png">
				</a>
			</h1>
		</div>
	</header>

	<section>
		<div class="container">
		<!-- 주소 똑같아도 method 다르면 다르게 인식 -->
			<form class="join_form" id="join_frm" method="POST" action="${path}/member/create">
				<div class="join_content">
					<div class="join_box_wrap">
						<div class="row_group">
							<div class="join_row">
								<h3 class="join_title">
									<i class="fas fa-asterisk" id="star"></i>
									<label for="id">아이디</label>
								</h3>
								<span class="ps_box int_id">
									<input type="text" id="id" name="id" class="int" maxlength="15">
									<span class="step_url" id="error_id"></span>
								</span>
							</div>
	
							<div class="join_row">
	
								<h3 class="join_title">
									<i class="fas fa-asterisk" id="star"></i>
									<label for="pswd1">비밀번호</label>
								</h3>
								<span class="ps_box int_pass">
									<input type="password" id="pswd1" name="pw" class="int" maxlength="12">
									<span class="step_url"></span>
								</span>
	
								<h3 class="join_title">
									<i class="fas fa-asterisk" id="star"></i>
									<label for="pswd2">비밀번호 재확인</label>
								</h3>
								<span class="ps_box int_pass">
									<input type="password" id="pswd2" name="pswd2" class="int" maxlength="12">
									<span class="step_url"></span>
								</span>
	
							</div>
						</div>
							
						<div class="row_group">
							<div class="join_row">
								<h3 class="join_title">
									<i class="fas fa-asterisk" id="star"></i>
									<label for="name">이름</label>
								</h3>
								<span class="ps_box">
									<input type="text" id="name" name="name" class="int" maxlength="10">
									<span class="step_url"></span>
								</span>
							</div>
	
							<div class="join_row join_birthday">
								<h3 class="join_title">
									<label for="yy">생년월일</label>
								</h3>
							</div>
							<div class="bir_wrap">
								<div class="bir_yy">
									<span class="ps_box">
										<input type="text" id="yy" name="bir_yy" placeholder="년(4자,Year)" class="int" maxlength="4">
										<i class="fas fa-times birth_check_btn"></i>
										<i class="fas fa-check birth_check_btn"></i>
									</span>
								</div>
								<div class="bir_mm">
									<span class="ps_mm">
										<select id="mm" class="sel" name="bir_mm">
											<option value="0">월(Month)</option>
											<option value="1">01(Jan.)</option>
											<option value="2">02(Feb.)</option>
											<option value="3">03(Mar.)</option>
											<option value="4">04(Apr.)</option>
											<option value="5">05(May)</option>
											<option value="6">06(Jun)</option>
											<option value="7">07(Jul.)</option>
											<option value="8">08(Aug.)</option>
											<option value="9">09(Sep.)</option>
											<option value="10">10(Oct.)</option>
											<option value="11">11(Nov.)</option>
											<option value="12">12(Dec.)</option>
										</select>
									</span>
								</div>
								<div class="bir_dd">
									<span class="ps_box">
										<input type="text" id="dd" name="bir_dd" placeholder="일(ex.05,Day)" class="int" maxlength="2">
										<i class="fas fa-times birth_check_btn"></i>
										<i class="fas fa-check birth_check_btn"></i>
									</span>
								</div>
							</div>
							
							<div class="daumaddr">
								<h3 class="join_title">
									<i class="fas fa-asterisk" id="star"></i>
									<label for="addr">주소</label>
								</h3>
							
								<span class="addr_wrap">
									<input type="text" class="addrbtn" name="zipcode" id="sample6_postcode" placeholder="우편번호" readonly="readonly">
								</span>
							
							
								<span id="addr_btn">
									<input type="button" id="addr_btn2" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
								</span>
							
								<span class="addr_wrap">
									<input type="text" class="addrbtn" id="sample6_address" name="addr1" placeholder="주소" readonly="readonly">
									
									<input type="text" id="sample6_detailAddress" name="addr2" placeholder="상세주소">
									<span class="step_addr"></span> 
									
								</span>
								
							</div>
							<div class="join_row">
								<h3 class="join_title">
									<i class="fas fa-asterisk" id="star"></i>
									<label for="phone">휴대전화</label>
								</h3>
								<span class="ps_box int_id">
									<input type="text" id="phone" name="phone" class="int" maxlength="11" placeholder="- 제외하고 입력">
									<span class="step_url"></span>
								</span>
								<h3 class="join_title">
									<i class="fas fa-asterisk" id="star"></i>
									<label for="email">이메일</label>
								</h3>
								<div id="wrap_email">
									<span class="ps_box int_id">
										<input type="text" id="email" name="email" class="int" placeholder="ex)id@email.com">
										<span class="step_url"></span>
									</span>
									<!-- <span class="ps_email" id="idemail">
										<input type="text" class="int" id="email_id" placeholder="E-mail">
									</span> -->
									<!-- <span id="at">@</span>
									<span class="ps_email" id="urlemail">
										<input type="text" class="int" id="email_url" placeholder="URL">
									</span>
									<span class="ps_email int" id="mailsel">
										<select class="sel" id="selmail">
											<option value="">
												Email 선택
											</option>
											<option value="directVal">직접입력</option>
											<option value="naver.com">naver.com(네이버)</option>
											<option value="daum.net">daum.net(다음카카오)</option>
											<option value="gmail.com">gmail.com(구글)</option>
											<option value="nate.com">nate.com(네이트)</option>
										</select>
									</span> -->
								</div>
							</div>
						</div>
					</div>
					<div class="btn_double_area">
						<span>
							<a href="#" id="join_btn_type">Join Us</a>
						</span>
					</div>

				</div>
			</form>
		</div>
	</section>
	<%@ include file="../include/mem_footer.jsp" %>
	
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript" src="${path}/resources/js/validation.js"></script> 
	<script type="text/javascript">
	$(document).ready(function(){
		var flag = 0;
		var addrflag = 0;
		var idflag = 0;
		var pwflag = 0;
		var repwflag = 0;
		var nameflag = 0;
		var yearflag = 0;
		var dayflag = 0;
		var monthflag = 0;
		var phoneflag = 0;
		var mailflag = 0;
			//우편번호, 주소 클릭시 다음주소API 창 출력
			$('.addrbtn').click(function(){
				var zipcode = $('.addrbtn').eq(0).val();
				var addr = $('.addrbtn').eq(1).val();
//				alert(zipcode+","+addr);
				if(zipcode == ""|| addr == ""){
					$('#addr_btn2').click();
				}
				
			});
			
			$('#sample6_detailAddress').keyup(function(){
				var dAddr = $(this).val();
				if(dAddr==""||dAddr.length==0){
					$(this).next().text("필수입력 정보입니다").css("display","block").css("color","#b30000").css("font-size","13px").css("padding-left","15px");
					addrflag = 0;
					return false;
				} else {
					addrflag = 1;
					return true;
				}
			});
			// 1. input(#id)에 값을 입력 후 blur()하면 이벤트 발생
			$("#id").keyup(function(){
				// 2. input(#id) value값을 가져와 memId에 담음 
				var memId = $.trim($("#id").val());
				// 3. joinValidate의 checkId() 함수를 실행, memId를 매개변수로 보냄 
				// 7. checkId() 함수를 실행 후 결과값(code, desc)을 변수 checkResult에 담음 
				var checkResult  = joinValidate.checkId(memId); // code, desc를 가져와서 변수에 담음 
				
				if(checkResult.code != 0) { 
					// 8-1(실패). code값이 0이 아닌 경우 => 유효한 값 아님 
					// 			  경고 메시지 출력!
					$(this).next().text(checkResult.desc).css('display','block').css('color','#b30000');
					idflag = 0;
					return false;
				} else if(checkResult.code == 0) { 
					// 8-2(성공). code값이 0인 경우 => 유효한 값 
					//			 중복값인지 Ajax(에이젝스)로 검증 시작!
					// 9. ajaxCheck() 메서드 실행, memId를 매개변수로 보냄 
					// 31. ajaxCheck(memId)의 return값이 true이면 return true; (유효성체크완료, 사용가능한 아이디) 
					// 유효한 ID: True, 중복 Check: False 인 상태
					result = ajaxCheck(memId); // 중복 check해주는 함수 호출  
					// undefined 가져옴 
					alert(result);
					if(result==true) {
						idflag = 1;
						return true;
					} else{
						idflag = 0;
						return true;
					}
				} 
				idflag = 0;
				return false; // if(ajaxCheck(memId)=="1") 제외하고는 return false;해서 종료
				
			});
			
			$("#pswd1").keyup(function(){
				var memPw = $.trim($("#pswd1").val());
				var memRpw = $.trim($("#pswd2").val());
				var checkResult  = joinValidate.checkPw(memPw,memRpw); // code, desc를 가져와서 변수에 담음 
				
				if(checkResult.code != 0) { //실패했을때
					$(this).next().text(checkResult.desc).css('display','block').css('color','#b30000');
					pwflag = 0;
					return false;
				} else { // code = 0일때. 즉, 성공했을때 success
					$(this).next().text(checkResult.desc).css('display','block').css('color','dodgerblue');
					if(memRpw!=null||memRpw.length!=0){
						if(memPw==memRpw){
							$(".step_url").eq(2).text('사용가능한 비밀번호입니다').css("display","block").css("color","dodgerblue");
						} else {
							$(".step_url").eq(2).text('입력하신 비밀번호와 일치하지 않습니다').css("display","block").css("color","#b30000");
							pwflag = 0;
							return false;
						}
					}
					pwflag = 1;
					return true;
				}
				//pwflag = 0;
				return false;
			});
			
			$("#pswd2").keyup(function(){
				var memPw = $.trim($("#pswd1").val());
				var memRpw = $.trim($("#pswd2").val());
				var checkResult  = joinValidate.checkRpw(memPw,memRpw); // code, desc를 가져와서 변수에 담음 
				
				if(checkResult.code != 0) { //실패했을때
					$(this).next().text(checkResult.desc).css('display','block').css('color','#b30000');
					repwflag = 0;
					return false;
				} else { // code = 0일때. 즉, 성공했을때 success
					$(this).next().text(checkResult.desc).css('display','block').css('color','dodgerblue');
					if(memPw!=null||memPw.length!=0){
						if(memPw==memRpw){
							$(".step_url").eq(2).text('비밀번호가 일치합니다').css("display","block").css("color","dodgerblue");
						} else {
							$(".step_url").eq(2).text('입력하신 비밀번호와 일치하지 않습니다').css("display","block").css("color","#b30000");
							repwflag = 0;
							return false;
						}
					}
					pwflag = 1;
					repwflag = 1;
					return true;
				}
				repwflag = 0;
				return false;
			});
			
		//이름 1널값체크2중간에공백체크3length 4자제한 
		$("#name").keyup(function(){
				var name = $.trim($(this).val());
				var regEmpty = /\s/g; // 공백 문자 
				var nameReg = RegExp(/^[가-힣]{2,4}$/);
				if(name == ""||name.length==0){
					$(this).next().text("필수입력 정보입니다").css("display","block").css("color","#b30000");
					nameflag = 0;
					return false;
				} else if(name.match(regEmpty)) {
					$(this).next().text("이름은 공백없이 입력해주세요").css("display","block").css("color","#b30000");
					nameflag = 0;
					return false;
				} else if(!nameReg.test(name)) {
					$(this).next().text("이름은 표준한글만 입력가능합니다").css("display","block").css("color","#b30000");
					nameflag = 0;
					return false;
				} else if(name.length<2||name.length>4) {
					$(this).next().text("이름은 공백없이 2자 이상~4자 이하만 가능합니다").css("display","block").css("color","#b30000");
					nameflag = 0;
					return false;
				} else {
					$(this).next().text("멋진 이름이네요").css("display","block").css("color","dodgerblue");
					nameflag = 1;
					return true;
				}
				
			});
		
		/* 숫자만 들어오게 일수랑 달은 1~31 년은 
		2월은 28일까지만 
		년도도 2019년 new 데이터 현재년도 계속 받아와서 그거보다 크지 않게 
		1900년도부터  */
		
		$("#yy").keyup(function(){
			var regEmpty = /\s/g; // 공백 문자 
			var year = $(this).val();
			var format = /^(19[0-9][0-9]|2000)$/;
			/* var format = /^(19[0-9][0-9]|20\d{2})-(0[0-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/; */
			//alert(year);
			
			if(year==''||year.length==0){
				$(this).next().next().css('display','none');
				$(this).next().css('display','block').css('color','#b30000');
				year.val('');
				year.focus();
				yearflag = 0;
				return false;
			} else if(year.match(regEmpty)) {
				$(this).next().next().css('display','none');
				$(this).next().css("display","block").css("color","#b30000");
				year.focus();
				yearflag = 0;
				return false;
			} else if(isNaN(year)) {
				$(this).next().next().css('display','none');
				// isNaN : 숫잔지 아닌지 판단. 숫자가 아닌 값이 들어오면 true 
				$(this).next().css('display','block').css('color','#b30000');
				year.focus();
				yearflag = 0;
				return false;
			} else if(!format.test(year)) {
				$(this).next().next().css('display','none');
				$(this).next().css('display','block').css('color','#b30000');
				year.focus();
				yearflag = 0;
				return false;
			} else {
				$(this).next().css('display','none');
				$(this).next().next().css('display','block').css('color','#50d2bb');
				yearflag = 1;
				return true;
			}
			
		});
		
		$("#mm").blur(function(){
			var regEmpty = /\s/g; // 공백 문자 
			var day = $('#dd').val();
			var month = $(this).val();
			var dFormat = /^(0[1-9]|[1-2][0-9]|3[0-1])$/;
			var sFormat = /^(0[1-9]|[1-2][0-9]|30)$/;
			var feFormat = /^(0[1-9]|1[0-9]|2[0-9])$/;
			/* var format = /^(19[0-9][0-9]|20\d{2})-(0[0-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/; */
		    //alert(day+","+month);
			
			//홀수달일땐 30일 짝수달엔 31일 2월은 28일이거나 29일 
			
			if(month==''||month.length==0){
				$(this).next().next().css('display','none');
				$(this).next().css('display','block').css('color','#b30000');
				day.val('');
				day.focus();
				monthflag = 0;
				dayflag = 0;
				return false;
			} else if(isNaN(month)) {
				// isNaN : 숫잔지 아닌지 판단. 숫자가 아닌 값이 들어오면 true 
				$(this).next().next().css('display','none');
				$(this).next().css('display','block').css('color','#b30000');
				day.focus();
				monthflag = 0;
				dayflag = 0;
				return false;
			} 
			
			if(month!=0) {
				if(month%2 == 1) {
					$(this).next().css('display','none');
					if(!sFormat.test(day)){
						$(this).next().next().css('display','none');
						$(this).next().css('display','block').css('color','#b30000');
						day.focus();
						monthflag = 0;
						dayflag = 0;
						return false;
					} else {
						$(this).next().css('display','none');
						$(this).next().next().css('display','block').css('color','#50d2bb');
						dayflag = 1;
						monthflag = 1;
						return true;
					}
				} else if(month%2 == 0 && month != 2) {
					$(this).next().css('display','none');
					if(!dFormat.test(day)) {
						$(this).next().next().css('display','none');
						$(this).next().css('display','block').css('color','#b30000');
						day.focus();
						monthflag = 0;
						dayflag = 0;
						return false;
					} else {
						$(this).next().css('display','none');
						$(this).next().next().css('display','block').css('color','#50d2bb');
						dayflag = 1;
						monthflag = 1;
						return true;
					}
				} else if(month == 2) {
					$(this).next().css('display','none');
					if(!feFormat.test(day)) {
						$(this).next().next().css('display','none');
						$(this).next().css('display','block').css('color','#b30000');
						day.focus();
						monthflag = 0;
						dayflag = 0;
						return false;
					} else {
						$(this).next().css('display','none');
						$(this).next().next().css('display','block').css('color','#50d2bb');
						dayflag = 1;
						monthflag = 1;
						return true;
					}
				} 
				
			} else {
				$(this).next().css('display','none');
				$(this).next().next().css('display','none');
				$(this).next().css('display','block').css('color','#b30000');
				$("#mm").css('border','lpx solid #b30000');
				monthflag = 0;
				dayflag = 0;
				return false;
			}
			
		});
		
		$("#dd").blur(function(){
			var regEmpty = /\s/g; // 공백 문자 
			var day = $(this).val();
			var month = $("#mm").val();
			var dFormat = /^(0[1-9]|[1-2][0-9]|3[0-1])$/;
			var sFormat = /^(0[1-9]|[1-2][0-9]|30)$/;
			var feFormat = /^(0[1-9]|1[0-9]|2[0-9])$/;
			/* var format = /^(19[0-9][0-9]|20\d{2})-(0[0-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/; */
		    alert(day+","+month);
			
			//홀수달일땐 30일 짝수달엔 31일 2월은 28일이거나 29일 
			
			if(day==''||day.length==0){
				$(this).next().next().css('display','none');
				$(this).next().css('display','block').css('color','#b30000');
				day.val('');
				day.focus();
				monthflag = 0;
				dayflag = 0;
				return false;
			} else if(day.match(regEmpty)) {
				$(this).next().next().css('display','none');
				$(this).next().css("display","block").css("color","#b30000");
				day.focus();
				monthflag = 0;
				dayflag = 0;
				return false;
			} else if(isNaN(day)) {
				// isNaN : 숫잔지 아닌지 판단. 숫자가 아닌 값이 들어오면 true 
				$(this).next().next().css('display','none');
				$(this).next().css('display','block').css('color','#b30000');
				day.focus();
				monthflag = 0;
				dayflag = 0;
				return false;
			} 
			
			if(month!=0) {
				if(month%2 == 1) {
					$(this).next().css('display','none');
					if(!sFormat.test(day)){
						$(this).next().next().css('display','none');
						$(this).next().css('display','block').css('color','#b30000');
						day.focus();
						monthflag = 0;
						dayflag = 0;
						return false;
					} else {
						$(this).next().css('display','none');
						$(this).next().next().css('display','block').css('color','#50d2bb');
						dayflag = 1;
						monthflag = 1;
						return true;
					}
				} else if(month%2 == 0 && month != 2) {
					$(this).next().css('display','none');
					if(!dFormat.test(day)) {
						$(this).next().next().css('display','none');
						$(this).next().css('display','block').css('color','#b30000');
						day.focus();
						monthflag = 0;
						dayflag = 0;
						return false;
					} else {
						$(this).next().css('display','none');
						$(this).next().next().css('display','block').css('color','#50d2bb');
						dayflag = 1;
						monthflag = 1;
						return true;
					}
				} else if(month == 2) {
					$(this).next().css('display','none');
					if(!feFormat.test(day)) {
						$(this).next().next().css('display','none');
						$(this).next().css('display','block').css('color','#b30000');
						day.focus();
						monthflag = 0;
						dayflag = 0;
						return false;
					} else {
						$(this).next().css('display','none');
						$(this).next().next().css('display','block').css('color','#50d2bb');
						dayflag = 1;
						monthflag = 1;
						return true;
					}
				} 
				
			} else {
				$(this).next().css('display','none');
				$(this).next().next().css('display','none');
				$(this).next().css('display','block').css('color','#b30000');
				$("#mm").css('border','lpx solid #b30000');
				monthflag = 0;
				dayflag = 0;
				return false;
			}
			
		});
		
		$("#phone").keyup(function(){
			
			var regEmpty = /\s/g; // 공백 문자 
			var phone = $.trim($(this).val());
			var phoneReg = RegExp(/^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/);
			if(phone==''||phone.length==0){
				$(this).next().css('display','block').text('필수입력 정보입니다').css('color','#b30000');
				phone.val('');
				phone.focus();
				phoneflag = 0;
				return false;
			} else if(phone.match(regEmpty)) {
				$(this).next().text("공백없이 입력해주세요").css("display","block").css("color","#b30000");
				phone.select();
				phoneflag = 0;
				return false;
			} else if(isNaN(phone)) {
				// isNaN : 숫잔지 아닌지 판단. 숫자가 아닌 값이 들어오면 true 
				$(this).next().css('display','block').text('숫자만 입력해주세요').css('color','#b30000');
				phone.select();
				phoneflag = 0;
				return false;
			} else if(!phoneReg.test(phone)) {
				$(this).next().css('display','block').text('유효하지 않은 휴대폰 번호입니다').css('color','#b30000');
				phone.select();
				phoneflag = 0;
				return false;
			} else {
				$(this).next().css('display','block').text('좋은 휴대폰 번호네요').css('color','dodgerblue');
				phoneflag = 1;
				return true;
			}
		});
		
		$("#email").keyup(function(){
			
			var email = $.trim($("#email").val());
			var regEmpty = /\s/g; // 공백 문자 
			var regEmail = RegExp(/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i);
			if(email==''||email.length==0) {
				$(this).next().css("display","block").text('필수입력 정보입니다').css('color','#b30000');
				mailflag = 0;
				return false;
			} else if(email.match(regEmpty)){
				$(this).next().css("display","block").text('공백없이 입력해주세요').css('color','#b30000');
				mailflag = 0;
				return false;
			} else if(!regEmail.test(email)){
				$(this).next().css("display","block").text('올바른 값을 입력해주세요').css('color','#b30000');
				mailflag = 0;
				return false;
			} else{
				$(this).next().css("display","block").text('멋진 이메일이네요').css('color','dodgerblue');
				mailflag = 1;
				return true;
			}  
		});
		
		//change함수: 값(value)이 변화 됐을 때 적용
		//메일 주소 선택 값 입력 
		/* $('#selmail').change(function(){
			//input(키보드 입력값) select(선택값)는 val로 가져와야함. 나머지는 text로 가져 옴 
			var selmail = $(this).val();
			//alert(selmail);
			if(selmail == 'directVal'){
				//그전에 값이 있을 땐 지워줘야함 
				$('#email_url').val("");
				$('#email_url').focus();
				$('#email_url').removeAtrr('readonly');
			} else {
				$('#email_url').val(selmail);
				$('#email_url').prop('readonly',true);
				$('#email_url').blur();
			}
			//alert(selmail);
		}); */
		
		$('#join_btn_type').click(function(){
			// email이 두 줄일 경우 email을 합치고 input(hidden) 담아야 전송가능
		 /* var email_id = $('#email_id').val();
			var email_url = $('#email_url').val();
			var email = email_id+"@"+email_url;
			$('#email').val(email); */
			
			flag = nameflag + idflag + mailflag + phoneflag + pwflag + repwflag + yearflag + monthflag + dayflag + addrflag;
			alert("총: "+flag+", name: "+nameflag + ", id: " + idflag + ", mail: " + mailflag + ", phone: " + phoneflag + 
					", pw: " + pwflag + ", repw: " + repwflag + ", year: " + yearflag + ", month: " + monthflag + ", day: " + dayflag + ", addr: " + addrflag);
			if(flag == 10){
				$('#join_frm').submit();
			} else{
				alert("모두 정확한 값을 입력하였는지 확인해주세요.");
//				$('.err_msg').css('color', '#ff1212').text('* 모두 정확한 값을 입력하였는지 확인해주세요.');
				if(nameflag < 1){
					$('#name').focus();
				} else if(idflag < 1){
					$('#id').focus();
				} else if(mailflag < 1){
					$('#email').focus();
				} else if(phoneflag < 1){
					$('#phone').focus();
				} else if(pwflag < 1){
					$('#pswd1').focus();
				} else if(repwflag < 1){
					$('#pswd2').focus();
				} else if(yearflag < 1){
					$('#yy').focus();
				} else if(monthflag < 1){
					$('#mm').select();
				} else if(dayflag < 1){
					$('#dd').focus();
				} else if(addrflag < 1){
					$('#sample6_detailAddress').focus();
				}
				return false;		    
			} 
			
		});
	});
		
		// 다음 지도 api
		 function sample6_execDaumPostcode() {
			new daum.Postcode({
				oncomplete: function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
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
						
					} 
	
					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('sample6_postcode').value = data.zonecode;
					document.getElementById("sample6_address").value = addr;
					// 커서를 상세주소 필드로 이동한다.
					document.getElementById("sample6_detailAddress").focus();
				}
			}).open();
		}
		
		
	</script>
</body>
</html>