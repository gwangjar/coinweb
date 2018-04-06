
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<title>COIN.COM</title>
 	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- COIN.CSS -->	
	<link rel="stylesheet" type="text/css" href="http://localhost:8080/coinweb/css/coin.css">
	<!-- favicon coin - ref : https://www.cmsfactory.net/node/10463 -->
	<link rel="shortcut icon" href="http://localhost:8080/coinweb/images/favicon.ico">
	 
</head>
<body>

	<jsp:include page="../header.jsp"></jsp:include> 
		<div class="div_header">
			 <h2>Freeboard</h2>
		</div>
		<div class="container">	  
		  <table class="table table-bordered table-striped">	
		      <tr>
		     		<th>NO</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
					<th>좋아요</th>
		      </tr>
		      <tr> <!--10개 for 문 // 작성일 순으로 -->
					<td>1</td>
					<a href="#"><td>제목</td></a>
					<td>작성자</td>
					<td>작성일</td>
					<td>조회수</td>
					<td>좋아요</td>
			  </tr>
		      <tr>
					<td>2</td>
					<a href="#"><td>제목</td></a>
					<td>작성자</td>
					<td>작성일</td>
					<td>조회수</td>
					<td>좋아요</td>
			 </tr>	
			</table>
			<!-- 검색 후 추출 기능 만들기communityBoardProcess.jsp -->							
			<form action="#"  method="get">
				 <div class="form-group">
					<select class="form-control input-sm" name="tableContents">
						<option value=title>제목</option>
						<option value=contents>내용</select>
					<input type="text" class="form-control form-group-search">
					<button type="submit" class="btn btn-success ">검색</button>
					<a href="http://localhost:8080/coinweb/community/freeboard_write.jsp"><button type="button" class="btn btn-warning form-group-write">글쓰기</button></a>
				</div>
			</form>
			<div class="text-center">
			<ul class="pagination">
				<li><a href="#"> < </a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#"> > </a></li>
			</ul>
			</div>	  
		</div>
<!-- 	safasdffd -->
		
	<jsp:include page="../footer.jsp"></jsp:include>  
</body>

</html>