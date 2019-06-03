<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${path}/css/common.css?v=1"> 
<title>회원탈퇴</title>
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
		input,select,button {
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
			height: 800px;
			border-left: 3px double #dee2e6;
			border-right: 3px double #dee2e6;
		}
		
		.n_logo {
			display: block;
			width: 240px;
			height: 44px;
			background: url('${path}/images/pc_sp_join.png') 0 -106px;
			margin: auto;
		}
		/* 회원가입 정보 */
		.join_content {
			width: 460px;
			margin: 0 auto;
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
			width: 95%; /* 자기가 가질수있는 영역의 처음부터 끝까지 100%. 얘의 영역을 알려면 얘의 부모를 봐야함.  */
			height: 29px;
			padding-left: 8px;
			line-height: 29px;
			/* border-bottom: 1px solid #dadada; */
			border: none;
			border-bottom: 1px solid #dadada;;
			background: transparent;
			font-size: 16.5px;
			z-index: 10;
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
		
		.int_pass {
			padding-right: 40px;
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

		/* 버튼 */
		.btn_double_area {
			margin: 30px -5px 0px;
			overflow: hidden;
			position: relative;
			text-align: center;
		}
		.btn_double_area > span {
			display: block;
			width: 100%;
		}
		.dropmem_btn_type {
			width: 215px;
			margin: 0 5px;
			font-size: 20px;
			font-weight: 600;
			line-height: 52px;
			display: inline-block;
			height: 61px;
			padding-top: 1px;
			text-align: center;
			color: #fff;
			background-color: #816288;
			border: 3px double #dee2e6;
		}
		
		#btn_cancel {
			background-color: #696D98;
			border: 3px double #dee2e6;
			color: #dee2e6;
		}
		#btn_memout {
			color: #dee2e6;
		}
		.s_logo > img {
			position: relative;
		    left: 25%;
		    height: 130px;
		    margin: 0 auto;
		    box-sizing: border-box;
		}
		
		#star {
			color: #b30000;
		}
		.check_container {
		    border: 3px double #eee;
   			background-color: white;
    		padding: 15px 15px;
		}
		.terms_wrap {
			font-size: 18px;
			padding: 10px 15px 10px;
		}
		.focus_text {
			font-weight: bold;
		    color: #2d2d77;
			font-size: 1.1em;
		}
		#terms_h {
			font-weight: bold;
			font-size: 22px;
		}
		/* 탈퇴 확인 모달창 */
		#modal_all {
			border: 3px solid black;
			position: fixed;
			z-index: 50;
			top: 0;
			left: 0;
			width: 100%;
			height: 100%;
			overflow: auto; /* 넘어가면 스크롤 만들어줌  */
			background-color: rgba(0,0,0,0.5);
			align-items: center;
			justify-content: center;
			display: none;
		}
		#modal {
			border-radius: 3px;
			background-color: #eee;
			width: 450px;
    		height: 250px;
    		margin: 220px auto;
			box-shadow: 0 3px 10px 0 rgba(0,0,0,0.2),
						0 3px 15px 0 rgba(0,0,0,0.15);   
		}
		.modal_txt {
			border: none;
		    color: black;
			outline: none;
			font-weight: bold;
			font-size: 22px; 
			line-height: 40px;
		    height: 55px;
		}

		.wrap{
			width: 450px;
			height: 240px;
			display: flex;
			justify-content: center;
			align-items: center;
			position: relative;
		}
		#h_wrap {
			float: left;
			position: absolute;
			top: 0;
			left: 0;
			display: inline-block;
			width: 450px;
			height: 30px;
			background-color: #252851;
		}
		#h_wrap > h3 {
			font-weight: bold;
			font-size: 20px;
			color: #eee;
		}

		.btn_wrap {
			position: absolute;
			bottom: 0;
			display: flex;
			padding-left: 10px;
		}
		.modal_btn{
			width: 105px;
			margin: 0 5px;
			font-size: 20px;
			font-weight: 600;
			line-height: 23px;
			height: 50px;
			padding-top: 1px;
			text-align: center;
			color: #fff;
			justify-content: center;
			align-items: center;
			text-decoration: none;
			flex-direction: row;
		}
		#btn_no{
			order: 1;
			padding: 10px;
			background-color: #696D98;
			color: #dee2e6;
			border: 3px double #dee2e6;
		}
		#btn_no:hover, #btn_yes:hover {
			text-decoration: none;
		}
		#btn_yes {
			order: 2;
			padding: 10px;
			background-color: #816288;
			color: #dee2e6;
			border: 3px double #dee2e6;
		}
		
		
		#close_modal {
			position: absolute;
			top: 0;
			left: 100%;
			background-color: #A7AFCC;
			color: white;
			font-weight: bold;
			width: 30px;
		    height: 30px;
		    border: none;
		    cursor: pointer;
		    box-shadow: 0 3px 10px 0 rgba(0,0,0,0.1),
		    				0 3px 15px 0 rgba(0,0,0,0.05);
		}
	
	
</style>
</head>
<body>
	<header>
		<div class="header">
			<h1 class="swt_logo">
				<a href="index.swt" class="s_logo">
					<img alt="로고 이미지 "src="${path}/images/mylogo_constract2.png">
				</a>
			</h1>
		</div>
	</header>
	<section>
		<div class="container">
			<form class="join_form" id="join_frm" method="POST" action="">
				<!-- 모달 창  -->
				<div id="modal_all">
					<div id="modal">
						<div class="wrap">
							<div id="h_wrap">
								<h3>회원탈퇴</h3>
							</div>
							<p><span class="modal_txt">정말 <span class="focus_text">S.W.T</span>를 탈퇴하시겠습니까?</span></p>
							<div class="btn_wrap">
								<a class="modal_btn" id="btn_no" href="#">아니오</a>
								<a class="modal_btn" id="btn_yes" href="#">예</a>
							</div>
							<button id="close_modal">X</button>
						</div>
					</div>
				</div>

				<div class="join_content">
					<div class="check_container">
						<span class="terms_wrap" id="terms_h">
							<br><span class="focus_text">"${sessionScope.loginUser.name}님"</span> 회원탈퇴 시 아래의 조치가 취해집니다.<br><br>
						</span>
						<span class="terms_wrap">
							1. 계정정보는 <span class="focus_text">"개인 정보 보호 정책"에 따라 60일간 보관(잠김)</span>되며, 60일이 경과된 후에는
							모든 개인정보는 완전히 삭제되며 더 이상 복구할 수 없게 됩니다.<br><br>
						</span>
						<span class="terms_wrap">
							2. 작성된 게시물은 삭제되지 않으며, 익명처리 후 <span class="focus_text">S.W.T로 소유권이 귀속</span>됩니다.<br><br>
						</span>
						<span class="terms_wrap">
							3. 게시물 삭제가 필요한 경우에는 <span class="focus_text">관리자(eunchehan@gmail.com)</span>로 문의해 주시기 바랍니다.<br><br>
						</span>
						
					</div>

					<div class="row_group">
						<div class="join_row">
							
							<h3 class="join_title">
								<i class="fas fa-asterisk" id="star"></i>
								<label for="pswd1">비밀번호</label>
							</h3>
							<span class="ps_box int_pass">
								<input type="password" id="pswd1" name="pswd1" class="int" maxlength="15">
								<span class="step_url pwAjax"></span>
							</span>
						</div>
						
					</div>
				</div>
					<div class="btn_double_area">
						<span>
							<a href="#" class="dropmem_btn_type" id="btn_cancel">취소</a>
							<a href="#" class="dropmem_btn_type" id="btn_memout">회원탈퇴</a>	
						</span>
					</div>
					
				</div>
			</form>
		</div>
	</section>
	<%@ include file="../include/mem_footer.jsp" %>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript" src="js/validation.js"></script> 
	<script type="text/javascript">
	$(document).ready(function(){
			/* $('.dropmem_btn_type').click(function(){
				$('#join_frm').submit();
			}); */
			var state = false;
			
			$("#pswd1").blur(function(){
				var nowId = "${sessionScope.loginUser.id}";
				var nowPw = $(this).val();
				state = ajaxPwCheck(nowId,nowPw);
				
			});

			//모달 탈퇴확인 창 
			$('#btn_memout').click(function(){
//				alert(state);
				if(state){
					$('#modal_all').css('display','block');
				} else {
					$('#pswd1').focus();				
				}
			});
			$('#close_modal').click(function(){
				$('#modal_all').css('display','none');
			});
			$('#btn_no').click(function(){
				$('#modal_all').css('display','none');
			});
			$('#btn_yes').click(function(){
				// 아이디값 가져오고 이동하는 방법 중 하나 
				/* var id = "${sessionScope.loginUser.id}";
				location.href="dropMember.swt?id="+id; */
				
				location.href="dropMemberPlay.swt";
			});
		});
	</script>
</body>
</html>