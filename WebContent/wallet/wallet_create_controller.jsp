<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="coinweb.vo.*, coinweb.dao.*"%> 
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="vo" class="coinweb.vo.WalletVO" scope="session" />
<jsp:setProperty property="*" name="vo"/>    

<%

	WalletDAO dao = new WalletDAO();
	//dao.getStatement();

	int result = dao.getInsertResult(vo);
	dao.close();
	
	
	if(result == 1){
		response.sendRedirect("http://localhost:8080/coinweb/index.jsp");
	}

%>