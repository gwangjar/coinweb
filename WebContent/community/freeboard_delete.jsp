<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="coinweb.vo.BoardVO, coinweb.dao.BoardDAO"%>
    
    
<%
	request.setCharacterEncoding("EUC-KR");
	String no =request.getParameter("no");
	BoardDAO dao =new BoardDAO();
	int result=dao.deleteBoardContent(no);

	if(result==1){
		response.sendRedirect("http://localhost:8080/coinweb/community/freeboard.jsp");		
	}
	
	dao.close();
	
%>

    
 