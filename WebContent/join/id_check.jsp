<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "coinweb.dao.*" %>  

<%
	String id = request.getParameter("id");

	MemberDAO dao = new MemberDAO();
	int result = dao.getIdCheckResult(id);
	out.print(result);

%> 
