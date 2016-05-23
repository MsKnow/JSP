<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>login.jsp</title>
</head>
<body>
	<form action="loginServlet" method="post">
		<table>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="name"/></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="text" name="pwd"/></td>
			</tr>
			<tr>
				<td><input type="submit" name="提交"/></td>
				<td><input type="reset" name="重置"/></td>
			</tr>
		</table>
	</form>
</body>
</html>