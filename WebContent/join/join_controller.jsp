<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="coinweb.vo.*,coinweb.dao.*"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="vo" class="coinweb.vo.MemberVO" scope="session" />
<jsp:setProperty property="*" name="vo"/>

<%	

	MemberDAO m_dao = new MemberDAO();
	WalletDAO w_dao = new WalletDAO();
	//dao.getStatement();

	int result = m_dao.getInsertResult(vo);
	int id = m_dao.getJoinIdResult(vo);
	System.out.println(id);

	if(result == 1){
		w_dao.getInsertResult(id);

		m_dao.close();
		w_dao.close();
		
		response.sendRedirect("http://localhost:8080/coinweb/index.jsp");
	}

%>