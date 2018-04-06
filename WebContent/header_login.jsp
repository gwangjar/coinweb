<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="http://localhost:8080/coinweb/CSS/coin.css">

<body>
<header>

<!-- Navigation -->
<div class="topnav shadow" id="navbar">
	<div class="nav">
  <a class="activea" href="http://localhost:8080/coinweb/index.jsp"><span>Coinweb<span></a>
  <div class="topnav-right">
    <a href="#contact">거래하기</a>
 <div class="dropdown">
 	<button  class="dropbtn" href="#contact">닉네임<i class="fa fa-caret-down"></i></button>
 	 <div class="dropdown-content">
      <a href="http://localhost:8080/coinweb/wallet/wallet.jsp">내 지갑</a>
      <a href="http://localhost:8080/coinweb/index.jsp">로그아웃</a>
    </div>
    </div>
      <div class="dropdown">
 	<button  class="dropbtn" href="#contact">커뮤니티<i class="fa fa-caret-down"></i></button>
 	 <div class="dropdown-content">
      <a href="http://localhost:8080/coinweb/Rangking/Rangk.jsp">랭킹</a>
      <a href="#">자유게시판</a>
  	<a href="#">코인소식</a>
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
<!-- Navigation 끝 -->

</header>

<script>
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
}
</script>
</body>
</html>
