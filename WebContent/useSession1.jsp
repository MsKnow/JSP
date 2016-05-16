<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<html>
  <head>
    <title>useSession.jsp</title>
  </head>
  <body>
   <form action="sendMyName1" method="post">
    	<table>
    		<tr>
    			<td>用户名：</td>
    			<td><input type="text" name="user"/></td>
    		</tr>
    		<tr>
    			<td><input type="submit" value="提交"/></td>
    		</tr>
    	</table>	
    </form>
    <form action=<%=response.encodeURL("sendMyName1")%> method="post">
    	<table>
    		<tr>
    			<td>用户名：</td>
    			<td><input type="text" name="user"/></td>
    		</tr>
    		<tr>
    			<td><input type="submit" value="提交"/></td>
    		</tr>
    	</table>	
    </form>
  </body>
</html>
