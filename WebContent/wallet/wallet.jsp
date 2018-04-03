<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="http://localhost:8080/coinweb/CSS/coin.css">

<title>Insert title here</title>
</head>
<body>


	<jsp:include page="../header_login.jsp" />


<section class="wallet">

<button class="tablink" onclick="openPage('mywallet', this, '#e8e8e8')" id="defaultOpen">내 지갑</button>
<button class="tablink" onclick="openPage('mybusiness', this, '#e8e8e8')">거래내역</button>
<button class="tablink" onclick="openPage('myreturn', this, '#e8e8e8')">수익률</button>

<div id="mywallet" class="tabcontent">
  <h1>내지갑</h1>
  <h3>현재 총합 보유 자산</h3>
  <div class="mywalletcoin btc">
  <p style="font-weight: bold;">BTC </p> <p>10.055829774</p>
  </div>
  <div class="mywalletcoin ubs">
  <p style="font-weight: bold;">USD </p> <p>10.055829774</p>
  </div>
  <div class="mywalletcoin krw">
  <p style="font-weight: bold;">KRW </p> <p>10.055829774</p>
  </div>
    <h3>화폐별 지갑</h3>
     <table>
     		<tr>
     			<td>코인</td>
     			<td>이름</td>
     			<td>보유량</td>
     			<td>거래 대기중</td>
     			<td>BTC 가치</td>
     		</tr>
     		<tr>
     			<th colspan="5">거래내역이 없습니다.</th>
     		</tr>
     </table>
</div>

<div id="mybusiness" class="tabcontent">
   <h1>거래내역</h1>
  <h3>대기중인 거래</h3>
     <table>
     		<tr>
     			<td>코인</td>
     			<td>시간</td>
     			<td>종류</td>
     			<td>가격</td>
     			<td>거래량</td>
     			<td>상태</td>
     		</tr>
     		<tr>
     			<th colspan="6">거래내역이 없습니다.</th>
     		</tr>
     </table>

  <h3>채결된 거래</h3>
      <table>
     		<tr>
     			<td>코인</td>
     			<td>시간</td>
     			<td>종류</td>
     			<td>가격</td>
     			<td>거래량</td>
     			<td>상태</td>
     		</tr>
     		<tr>
     			<th colspan="6">거래내역이 없습니다.</th>
     		</tr>
     </table>

</div>
</div>

<div id="myreturn" class="tabcontent">
   <h1>수익률</h1>
  <h3>자금 및 현재 자산</h3>
  <p>USD를 기반으로 계산됩니다.</p>
  <p>월 수익률 랭킹 1위에겐 상금이 지급됩니다.</p>
</div>

</section>
 	<jsp:include page="../footer.jsp" />


<script>
function openPage(pageName,elmnt,color) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablink");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].style.backgroundColor = "";
    }
    document.getElementById(pageName).style.display = "block";
    elmnt.style.backgroundColor = color;

}
// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>

	

</body>
</html>