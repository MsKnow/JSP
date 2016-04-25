<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.bean.Selection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="sel" class="com.bean.Selection" scope="session"/>

	<jsp:setProperty property="*" name="sel"/>
	学号：<jsp:getProperty property="id" name="sel"/>
	姓名：<jsp:getProperty property="name" name="sel"/>
	<% /* String id = request.getParameter("id");
		String name = request.getParameter("name");
		session.setAttribute("id",id);
		session.setAttribute("name",name);
		out.println("学号："+session.getAttribute("id"));
		out.println("姓名："+session.getAttribute("name")); */%>
	
	请选课。
	<form action="show.jsp" method="post">
		
		<input type="checkbox" name="tl" value="语文"/>
		语文
		<input type="checkbox" name="tl" value="英语"/>
		英语
		<input type="checkbox" name="tl" value="思想品德"/>
		思想品德
		<input type="checkbox" name="tl" value="离散数学"/>
		离散数学
		<br><input type="submit" value="提交" name=submit/>
	</form>
	
</body>
</html>