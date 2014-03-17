<%-- 
    Document   : includeAction
    Created on : 15.12.2012, 9:42:03
    Author     : Jaroslav Srp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>JSP Akce Include</h1>
		
		<table>
			<tr>
				<td>Použití JSP akce include.</td>
				<td>
					<%@include file="banner.html" %>
				</td>
			</tr>
			
			<tr>
				<td>
					
				</td>
				
				<td>
					<%@include file="clock2.jsp" %>
				</td>
			</tr>
		</table>
    </body>
</html>
