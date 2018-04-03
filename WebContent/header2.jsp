<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="coinweb.vo.*"%>
<%String sid=(String)session.getAttribute("sid"); %>
<% request.setCharacterEncoding("EUC-KR"); %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="stylesheet" href="http://localhost:8080/coinweb/CSS/coin.css">

	
<script src="http://localhost:8080/coinweb/js/jquery-3.3.1.min.js"></script>
<script>
$(document).ready(function(){
	
	$("#btnLogin").click(function(){
		if($("#signin-email").val()==""){
			alert("아이디를 입력하세요.")
			$("#signin-email").focus();
			return false;
		}else if($("#signin-password").val()==""){
			alert("패스워드를 입력하세요.")
			$("#signin-password").focus();
			return false;
		}
		
		loginForm.submit();
		
	
	});
});
</script>

<script>
$(document).ready(function(){

	$("#btnJoin").click(function(){
		if($("#signup-email").val()==""){
			alert("이메일을 입력하세요.");
			$("#signup-email").focus();
			return false;
		}else if($("#signup-username").val()==""){
				alert("닉네임을 입력하세요");
				$("#signup-username").focus();
				return false;
			}else if($("#pass").val()==""){
			alert("비밀번호를 입력하세요.");
			$("#pass").focus();
			return false;
			}else if($("#cpass").val()==""){
				alert("비밀번호를 재입력 하세요.");
				$("#cpass").focus();
				return false;
		}else if($("#agree").is(":checked") == false){
			alert("이용약관 및 개인정보 동의를 체크하세요.");
			$("#agree").focus();
			return false;
		}
		
		//서버전송
		joinForm.submit();
		
		//비밀번호&비밀번호 확인 체크
	});
	$("#cpass").focusout(function(){
		// 1.패스워드 입력폼이 비어있는지 확인  비어있지 않은 상태에서만 비교
		// 2. 1번의 결과중 비밀번호 확인폼이 비어있지 않은 상태에서만 비교를 진행 
		if($("#pass").val()=="" ){
			alert("패스워드를 입력하세요")
			$("$pass").focus;
			return false;
			
		}else{
			if($("#cpass").val()!=""){
			
			
				//비밀번호 & 비밀번호 확인 체크
				if($("#pass").val()== $("#cpass").val()){
				$("#msg").css("font-size","12pt").css("color","blue").css("display","block");
				$("#msg").text("비밀번호가 동일합니다").css("padding","3px 0px 0px 0px");
				return false;
			}else{
				$("#msg").css("font-size","12pt").css("color","red").css("display","block").css("padding","3px 0px 0px 0px");
				$("#msg").text("비밀번호가 다릅니다. 다시 입력해주세요");
				$("#pass").val("").focus();
				$("#cpass").val("");
					return false;
		    }
				
		 }
			
	  }
		
			
	
});
	
	$("#signup-email").focusout(function(){
		//alert("아이디 중복");
		var id = $("#signup-email").val();
		//alert(id);
		
		$.ajax({
			url : 'http://localhost:8080/coinweb/join/id_check.jsp',
			type :'POST',
			data : 'id='+id,
			dataType : "json",
			success : function(data){
				if(data.length != 0){	
					//alert("있음"+data);
	
					 if(data == 1){
						$("#id_msg").css("display","block").css("font-size","12pt")
						.css("color","red").css("padding","3px 0px 0px 0px");
						$("#id_msg").text("중복된 이메일입니다.");
						$("#signup-email").val("").focus();
		
						return false;
						
					}else{
					
						if($("#signup-email").val()==""){
							$("#id_msg").css("display","block").css("font-size","12pt")
							.css("color","red").css("padding","3px 0px 0px 0px");
							$("#id_msg").text("이메일을 입력하세요.");
							$("#signup-email").val("").focus();
						}else{
							$("#id_msg").css("display","block").css("font-size","12pt")
							.css("color","blue").css("padding","3px 0px 0px 0px");
							$("#id_msg").text("사용가능한 이메일 입니다.");
							$("#signup-username").focus();
						}
						return false;
					}
			
				}
			}
		});			
	});	//end of id_check	
	
});



	
	
</script>


<body>
<header>

<!-- Navigation -->
<%if(sid==null){ %>
<div class="topnav shadow" id="navbar">
	<div class="nav">
	
  <a class="activea" href="http://localhost:8080/coinweb/index.jsp"><span>Coinweb</span></a>
  
  <div class="topnav-right">
     <div class="cd-main-nav__list js-signin-modal-trigger">
    
    <a class="cd" href="#contact">거래하기</a>

			
				<!-- inser more links here -->
				
				<a class="cd-main-nav__item cd-main-nav__item--signin" href="#0" data-signin="login">로그인</a>
				<a class="cd-main-nav__item cd-main-nav__item--signup" href="#0" data-signin="signup">회원가입</a>
			<div class="dropdown">
 	<button  class="dropbtn" href="#contact">커뮤니티<i class="fa fa-caret-down"></i></button>
 	 <div class="dropdown-content">
      <a href="http://localhost:8080/coinweb/Rangking/Rangk.jsp">랭킹</a>
      <a href="#">자유게시판</a>
     <!--   <a href="#">코인소식</a>-->
    </div>
   </div>
 	<div class="dropdown">
 	<button  class="dropbtn" href="#contact">고객센터<i class="fa fa-caret-down"></i></button>
 	 <div class="dropdown-content">
      <a href="#">이용가이드</a>
      <a href="#">FAQ</a>
      <a href="#">문의하기</a>
      
  
    </div>
    </div>
    </div>
  </div>
</div>
		</div>
	</div>
	    <%}else{ %>
	    <div class="topnav shadow" id="navbar">
	<div class="nav">
	
  <a class="activea" href="http://localhost:8080/coinweb/index.jsp"><span>Coinweb</span></a>
  
  <div class="topnav-right">
     <div class="cd-main-nav__list js-signin-modal-trigger">
    
    <a class="cd" href="#contact">거래하기</a>

			
				<!-- inser more links here -->
				
				<a class="cd-main-nav__item cd-main-nav__item--signin" href="http://localhost:8080/coinweb/login/logout.jsp" >로그아웃</a>
				
				<div class="dropdown">
				<button  class="dropbtn" href="#contact" id="nname"><%=sid%><i class="fa fa-caret-down"></i></button>
				
				 <div class="dropdown-content">
      <a href="http://localhost:8080/coinweb/wallet/wallet.jsp">내 지갑</a>
      <a href="#">비밀번호 변경</a>
    </div>
    </div>
			<div class="dropdown">
 	<button  class="dropbtn" href="#contact">커뮤니티<i class="fa fa-caret-down"></i></button>
 	 <div class="dropdown-content">
      <a href="http://localhost:8080/coinweb/Rangking/Rangk.jsp">랭킹</a>
      <a href="#">자유게시판</a>
     <!--   <a href="#">코인소식</a>-->
    </div>
   </div>
 	<div class="dropdown">
 	<button  class="dropbtn" href="#contact">고객센터<i class="fa fa-caret-down"></i></button>
 	 <div class="dropdown-content">
      <a href="#">이용가이드</a>
      <a href="#">FAQ</a>
      <a href="#">문의하기</a>
      
  
    </div>
    </div>
    </div>
  </div>
</div>
		</div>
	</div>
	    
	    
	    
	    <%} %>
	
	<div class="cd-signin-modal js-signin-modal"> <!-- this is the entire modal form, including the background -->
		<div class="cd-signin-modal__container"> <!-- this is the container wrapper -->
			<ul class="cd-signin-modal__switcher js-signin-modal-switcher js-signin-modal-trigger">
				<li><a href="#0" data-signin="login" data-type="login">로그인</a></li>
				<li><a href="#0" data-signin="signup" data-type="signup">회원가입</a></li>
			</ul>

			<div class="cd-signin-modal__block js-signin-modal-block" data-type="login"> <!-- log in form -->
				<form name="loginForm" action="http://localhost:8080/coinweb/login/login_controller.jsp" method="post"class="cd-signin-modal__form" >
					<p class="cd-signin-modal__fieldset">
						
					
						<label class="cd-signin-modal__label cd-signin-modal__label--email cd-signin-modal__label--image-replace" for="signin-email">E-mail</label>
						<input class="cd-signin-modal__input cd-signin-modal__input--full-width cd-signin-modal__input--has-padding cd-signin-modal__input--has-border" name="email" id="signin-email"  placeholder="E-mail" >
					
					</p>

					<p class="cd-signin-modal__fieldset">
						<label class="cd-signin-modal__label cd-signin-modal__label--password cd-signin-modal__label--image-replace" for="signin-password">Password</label>
						<input class="cd-signin-modal__input cd-signin-modal__input--full-width cd-signin-modal__input--has-padding cd-signin-modal__input--has-border" name="pass"  id="signin-password" type="password"  placeholder="Password" >
						
					</p>

					<p class="cd-signin-modal__fieldset">
						<input type="checkbox" id="remember-me" checked class="cd-signin-modal__input ">
						<label for="remember-me">저장</label>
					</p>

					<p class="cd-signin-modal__fieldset">
						<button class="cd-signin-modal__input cd-signin-modal__input--full-width" id="btnLogin" type="submit" >로그인</button>
					</p>
				</form>
				
				
			</div> <!-- cd-signin-modal__block -->

			<div class="cd-signin-modal__block js-signin-modal-block" data-type="signup"> <!-- sign up form -->
				<form name="joinForm" action="http://localhost:8080/coinweb/join/join_controller.jsp" method="post" class="cd-signin-modal__form">
				
				<p class="cd-signin-modal__fieldset">
						<label class="cd-signin-modal__label cd-signin-modal__label--email cd-signin-modal__label--image-replace" for="signup-email">E-mail</label>
						<input  class="cd-signin-modal__input cd-signin-modal__input--full-width cd-signin-modal__input--has-padding cd-signin-modal__input--has-border" id="signup-email"  name="id" type="email" placeholder="이메일 입력" >
						<span id="id_msg"></span>
					</p>
				
			
					<p class="cd-signin-modal__fieldset">
						<label class="cd-signin-modal__label cd-signin-modal__label--username cd-signin-modal__label--image-replace" for="signup-username">Username</label>
						<input class="cd-signin-modal__input cd-signin-modal__input--full-width cd-signin-modal__input--has-padding cd-signin-modal__input--has-border" id="signup-username"  name="name" type="text" placeholder="이름 입력" >
						
					</p>

					

					<p class="cd-signin-modal__fieldset">
						<label class="cd-signin-modal__label cd-signin-modal__label--password cd-signin-modal__label--image-replace" for="signup-password">Password</label>
						<input class="cd-signin-modal__input cd-signin-modal__input--full-width cd-signin-modal__input--has-padding cd-signin-modal__input--has-border" id="pass" name="pass" type="password"  placeholder="비밀번호 10자 이상입력">
						<span id="msg"></span>
					</p>
					<p class="cd-signin-modal__fieldset">
						<label class="cd-signin-modal__label cd-signin-modal__label--password cd-signin-modal__label--image-replace" for="signup-password">Password</label>
						<input class="cd-signin-modal__input cd-signin-modal__input--full-width cd-signin-modal__input--has-padding cd-signin-modal__input--has-border" id="cpass" type="password"  placeholder="비밀번호 재입력">
						
					</p>

					<p class="cd-signin-modal__fieldset">
						<input type="checkbox" id="agree" name="agree" class="cd-signin-modal__input ">
						<label for="accept-terms">이용약관 및 개인정보 동의</a></label>
					</p>

					<p class="cd-signin-modal__fieldset">
						<button class="cd-signin-modal__input cd-signin-modal__input--full-width cd-signin-modal__input--has-padding"  id="btnJoin" type="submit" >회원까입</button>
					</p>
					
				</form>
			</div> <!-- cd-signin-modal__block -->
			
		
			
		</div> <!-- cd-signin-modal__container -->
	</div> <!-- cd-signin-modal -->
	
      


<!-- Navigation 끝 -->



<!--<script>
//네비게이션 sticky 사용.. 실패함 
window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset > sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}-->
</header>

</body>
<script src="http://localhost:8080/coinweb/js/main.js"></script>
<script src="http://localhost:8080/coinweb/js/test2.js"></script>


</html>
