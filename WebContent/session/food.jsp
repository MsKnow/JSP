<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	这里是调料柜台，选择调料。
	<form action="count.jsp" method="post">
		<input type="checkbox" name="tl" value="调和油"/>
		调和油
		<input type="checkbox" name="tl" value="强化盐"/>
		强化盐
		<input type="checkbox" name="tl" value="多维醋"/>
		多维醋
		<input type="checkbox" name="tl" value="绿色调料"/>
		绿色调料
		<br><input type="submit" value="购物" name=submit/>
	</form>
</body>
</html>