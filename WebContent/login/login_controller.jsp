<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="coinweb.vo.*,coinweb.dao.*"%>
    
    <%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="vo" class="coinweb.vo.MemberVO"></jsp:useBean>
<jsp:setProperty property="*" name="vo"/>


<%	
	
	MemberDAO dao = new MemberDAO();
	int result = dao.getLoginResult(vo);
	System.out.println(result);
	dao.close();
	
	if(result == 1){
		//로그인성공
		session.setAttribute("sid", vo.getEmail()); //sid=test@naver.com
		session.setAttribute("id", vo.getId()); //id=1001
		response.sendRedirect("http://localhost:8080/coinweb/index.jsp");
	}else{
		//로그인 실패 
		response.sendRedirect("http://localhost:8080/coinweb/index.jsp");
	}



%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>