<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String driverClass = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
String url = "jdbc:sqlserver://localhost:1433; DatabaseName=goods";
String username = "aaa";
String password = "aaa";
Class.forName(driverClass);
Connection conn = DriverManager.getConnection(url,username,password);
Statement stmt = conn.createStatement();
String sql1 = "select * from Table_user";
String sql = "create table goods ("
		+"goodsId int IDENTITY (1, 1) primary key,"
		+"goodsName varchar(15),"
		+"goodsPrice int,"
		+"goodsType varchar(9)"+");";
	/*	 create table goods (
			goodsId int IDENTITY (1, 1) primary key,
			goodsName varchar(15),
			goodsPrice int,
			goodsType varchar(9))      */
String sql_insert = "insert into goods values(1,'yagao',18,'riyong')";
stmt.execute(sql);
//stmt.executeUpdate(sql_insert);
/*   ResultSet rs = stmt.executeQuery(sql1);
while(rs.next()){
	out.println(rs.getInt(3));
}  */ 
%>
</body>
</html>