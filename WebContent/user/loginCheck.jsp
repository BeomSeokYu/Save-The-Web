<%@page import="jdbc.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html;charset=UTF-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");
	System.out.println(id);
	System.out.println(password);
	
	switch(UserDAO.login(id, password)) {
	case 0:	// 아이디 비번 모두 없을 경우
			response.getWriter().write("bothFail");
			break;
	case 1:	// 아이디 비번 모두 있을 경우
			session.setAttribute("sid", id);
			response.getWriter().write("success");
			break;
	case 2:	// 아이디만 존재할 경우
			response.getWriter().write("fail");
			break;
	}
%>