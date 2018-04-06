<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="coinweb.vo.BoardVO, coinweb.dao.BoardDAO, java.util.ArrayList"%>
<%
	request.setCharacterEncoding("EUC-KR");
%>

<%
BoardDAO dao = new BoardDAO();
ArrayList<BoardVO> list =dao.getBoardList();
dao.close();
%>

<!DOCTYPE html>
<html>
<head>

	<title>COIN.COM</title>
 	<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- COIN.CSS -->	
<link rel="stylesheet" type="text/css" href="http://localhost:8080/coinweb/CSS/coin.css">
<script type="text/javascript" src="http://localhost:8080/coinweb/js/jquery-3.3.1.min.js"></script>
	
<!-- favicon coin - ref : https://www.cmsfactory.net/node/10463 -->
<link rel="shortcut icon" href="http://localhost:8080/coinweb/images/favicon.ico">

<!-- bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>


<body>

	<jsp:include page="../header.jsp"></jsp:include> 
	
	
		<div class="commtitle">
			 <h2>Freeboard</h2>
		</div>
		<div class="container container_comm">	  
		  <table class="table table-bordered table-striped">	
		  

		      <tr>
		     		<th>NO</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
					<th>좋아요</th>
		      </tr>
		      
		      	<% for(BoardVO vo : list){%>
		  		<tr>
			  		<td><%=vo.getNo()%></td>
			  		<td> 
			  		<a href="http://localhost:8080/coinweb/community/freeboard_content.jsp?no=<%=vo.getNo()%>">
			  		<%=vo.getTitle() %></a>
			  		</td>	
			  		<td><%=vo.getName() %></td>
			  		<td><%=vo.getBdate()%></td>
			  		<td><%=vo.getHits() %></td>
			  		<td><%=vo.getLikeit() %></td>	  		
		  		</tr>	  		
		  		<% }%>
		     
			
			</table>
			<!-- 검색 후 추출 기능 만들기communityBoardProcess.jsp -->							
			<form action="#"  method="get">
				 <div class="form-group">
					<select class="form-control input-sm" name="tableContents">
						<option value=title>제목</option>
						<option value=contents>내용</select>
					<input type="text" class="form-control form-group-search">
					<button type="submit" class=" btn-success" style="width: 100px; border-radius: 10px; height: 30px;" >검색</button>
					<a href="http://localhost:8080/coinweb/community/freeboard_write.jsp"><button type="button" class=" btn-warning form-group-write" style="width: 100px; border-radius : 10px; height: 30px;">글쓰기</button></a>
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
	
		
	<jsp:include page="../footer.jsp"></jsp:include>  
</body>
</html>