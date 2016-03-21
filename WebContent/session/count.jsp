<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% String id = (String)session.getAttribute("id");
	out.println("会员卡号是："+id);
	
	String tls[] = request.getParameterValues("tl");
	for(String tl:tls){
		byte b[] = tl.getBytes("ISO-8859-1");
		String a = new String(b);
		out.println(a);
	}
	
	%>
</body>
</html>