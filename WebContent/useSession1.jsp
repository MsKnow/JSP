<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<html>
  <head>
    <title>useSession.jsp</title>
  </head>
  <body>
   <form action="sendMyName1" method="post">
    	<table>
    		<tr>
    			<td>�û�����</td>
    			<td><input type="text" name="user"/></td>
    		</tr>
    		<tr>
    			<td><input type="submit" value="�ύ"/></td>
    		</tr>
    	</table>	
    </form>
    <form action=<%=response.encodeURL("sendMyName1")%> method="post">
    	<table>
    		<tr>
    			<td>�û�����</td>
    			<td><input type="text" name="user"/></td>
    		</tr>
    		<tr>
    			<td><input type="submit" value="�ύ"/></td>
    		</tr>
    	</table>	
    </form>
  </body>
</html>
