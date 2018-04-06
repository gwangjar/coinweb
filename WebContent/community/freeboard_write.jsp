<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="coinweb.vo.BoardVO, coinweb.dao.BoardDAO"%>

<%
	request.setCharacterEncoding("EUC-KR");
%>      
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="http://localhost:8080/coinweb/CSS/coin.css">
<script type="text/javascript" src="http://localhost:8080/coinweb/js/jquery-3.3.1.min.js"></script>

<!-- favicon coin - ref : https://www.cmsfactory.net/node/10463 -->
<link rel="shortcut icon" href="http://localhost:8080/coinweb/images/favicon.ico">

<!-- naver smarteditor2 -->

<script type="text/javascript" src="http://localhost:8080/coinweb/se/js/service/HuskyEZCreator.js" charset="euc-kr"></script>
<title>Insert title here</title>



</head>
<body>
<jsp:include page="../header.jsp"></jsp:include> 
		
			<div class="commtitle">
				 <h2>Free Board Write</h2>
			</div>
		
		<div class="container">	 
		
			<form action="http://localhost:8080/coinweb/community/freeboard_controller.jsp"  method="post" >
		  		<table class="table table-bordered table-comm">			  
		    		 <tr>
		     			<td><input name="title" type="text" placeholder="제목을 입력하세요" style="width: 100%" ></td>
					 </tr>
		    
		      <tr>
		      
<!-- 					<td><textarea name="content" id="content" rows="10" cols="100" >내용을 입력하세요</textarea></td> -->
					<td><textarea name="content"  rows="10" cols="100">내용을 입력하세요</textarea></td>
			 </tr>
			 <tr>
			 	<td>
					<div class="communityBoard_btn">
					<button type="submit" class="btn btn-warning btn-comm">등록</button>
						<button type="reset" class="btn-comm btn">취소</button>
						<a href="http://localhost:8080/coinweb/community/freeboard.jsp"><button type="button" class="btn-comm btn">뒤로가기</button></a>
					</div>
				</td>
			 </tr>	
			</table>
				
			</form>			
		</div>
	
	<jsp:include page="../footer.jsp"></jsp:include>  
</body>
<!-- naver smarteditor2 -->
<script type="text/javascript">
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({

    oAppRef: oEditors,

    elPlaceHolder: "content",

    sSkinURI: "http://localhost:8080/coinweb/se/SmartEditor2Skin.html",

    fCreator: "createSEditor2"

});
</script>

</html>