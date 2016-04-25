<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
	
	<% 
		 String tls[] = request.getParameterValues("tl");
		sel.setCourses(tls);
		
	
	%>
	 
	学号：<jsp:getProperty property="id" name="sel"/>
	姓名：<jsp:getProperty property="name" name="sel"/> 
	<!--  选课：<jsp:getProperty property="courses" name="sel"/>-->
	选课：
	<%
	
	for(int i=0;i<tls.length;i++){

		/* byte b[] = tls[i].getBytes("ISO-8859-1");
		String a = new String(b);
		out.println(a); */
		
		out.print(sel.getCourses()[i]);
	} 
	
	%>
	
	

</body>
</html>