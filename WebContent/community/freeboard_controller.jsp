<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="coinweb.vo.BoardVO, coinweb.dao.BoardDAO"%>
<%
request.setCharacterEncoding("EUC-KR");
String title =request.getParameter("title");
String content =request.getParameter("content");

BoardDAO dao =new BoardDAO();

int result =dao.insertBoardContent(title, content);
dao.close();
if(result==1){
	response.sendRedirect("http://localhost:8080/coinweb/community/freeboard.jsp");
}

%>