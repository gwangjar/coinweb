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

	<jsp:include page="../header.jsp" />
	
	<!-- 랭킹  -->
	<section class="rangking">
		<div class="rangk_header">
			<h1 class="rangking_header_h1">
			<img src="http://localhost:8080/coinweb/images/iconmonstr-award-24-120.png" style="width: 50px; height: 50px;">
			<br>수익률 랭킹</h1>
			<p>수익률은 USD를 기준으로 계산됩니다.<br>
				랭킹은 1시간마다 매겨집니다.<br>
				<br>
				어뷰징이 발견될 시 롤백처리 될 수 있습니다.</p></div>
		<!-- 순위 -->
		<div class="rangking_main">
		<!-- 123위 -->
			<div class="rangking_1">
				<img src="http://localhost:8080/coinweb/images/rank1.png" style="width: 150px; height: 150px;">
					<h3>1위</h3><p>닉네임</p><p>총자산: 500원</p><p>수익률 : 500%</p></div>
			<div class="rangk_top2 rangking_2">
				<img src="http://localhost:8080/coinweb/images/rank2.png" style="width: 150px; height: 150px;">
					<h3>2위</h3><p>닉네임</p><p>총자산: 500원</p><p>수익률 : 500%</p></div>
			<div class="rangk_top2 rangking_3">
				<img src="http://localhost:8080/coinweb/images/rank3.png" style="width: 150px; height: 150px;">
					<h3>3위</h3><p>닉네임</p><p>총자산: 500원</p><p>수익률 : 500%</p></div>
			
			
			
			
		<!-- 나머지20위 -->	
			<table class="rangking_4_20">
				
			  <tr>
			    <th>순위</th>
			    <th>닉네임</th>
			    <th>총자산</th>
			    <th>수익률</th>
			  </tr>
			  <tr>
			    <td>4</td>
			    <td>Griffin</td>
			    <td>$95,613,449</td>
			    <td>100%</td>
			  </tr>
			  <tr>
			    <td>5</td>
			    <td>Griffin</td>
			    <td>$150</td>
			    <td>100%</td>
			  </tr>
			  <tr>
			    <td>6</td>
			    <td>Swanson</td>
			    <td>$300</td>
			    <td>100%</td>
			  </tr>
			  <tr>
			    <td>7</td>
			    <td>Brown</td>
			    <td>$250</td>
			    <td>100%</td>
			  </tr>
			  	  <tr>
			    <td>8</td>
			    <td>Griffin</td>
			    <td>$100</td>
			    <td>100%</td>
			  </tr>
			  <tr>
			    <td>9</td>
			    <td>Griffin</td>
			    <td>$150</td>
			    <td>100%</td>
			  </tr>
			  <tr>
			    <td>10</td>
			    <td>Swanson</td>
			    <td>$300</td>
			    <td>100%</td>
			  </tr>
			  <tr>
			    <td>11</td>
			    <td>Brown</td>
			    <td>$250</td>
			    <td>100%</td>
			  </tr>
			  	  <tr>
			    <td>12</td>
			    <td>Griffin</td>
			    <td>$100</td>
			    <td>100%</td>
			  </tr>
			  <tr>
			    <td>13</td>
			    <td>Griffin</td>
			    <td>$150</td>
			    <td>100%</td>
			  </tr>
			  <tr>
			    <td>14</td>
			    <td>Swanson</td>
			    <td>$300</td>
			    <td>100%</td>
			  </tr>
			  <tr>
			    <td>15</td>
			    <td>Brown</td>
			    <td>$250</td>
			    <td>100%</td>
			  </tr>
			  	  <tr>
			    <td>16</td>
			    <td>Griffin</td>
			    <td>$100</td>
			    <td>100%</td>
			  </tr>
			  <tr>
			    <td>17</td>
			    <td>Griffin</td>
			    <td>$150</td>
			    <td>100%</td>
			  </tr>
			  <tr>
			    <td>18</td>
			    <td>Swanson</td>
			    <td>$300</td>
			    <td>100%</td>
			  </tr>
			  <tr>
			    <td>19</td>
			    <td>Brown</td>
			    <td>$250</td>
			    <td>100%</td>
			  </tr>
			   <tr>
			    <td>20</td>
			    <td>Brown</td>
			    <td>$250</td>
			    <td>100%</td>
			  </tr>
			</table>
			
		
		
		</div> 
	
	
	</section>
	
	
	
	
	<!-- 랭킹끝 -->
	
	
	
	 	<jsp:include page="../footer.jsp" />

</body>
</html>