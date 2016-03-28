<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="showTriangle.jsp" method="post">
		输入三角形三边：<br>
		边A:<input type="text" id="side" name="sideA"><br>
		边B:<input type="text" id="sideB" name="sideB"><br>
		边C:<input type="text" id="sideC" name="sideC"><br>
		<input type="submit" name="submit">
	</form>
</body>
</html>