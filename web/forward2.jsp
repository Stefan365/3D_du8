<%-- 
    Document   : forward2
    Created on : 1.11.2012, 13:18:12
    Author     : Jaroslav Srp
--%>

<?xml version="1.0" encoding="windows-1250"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page pageEncoding="windows-1250" %>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Zpracování přesměrované žádosti</title>
		<style type = "text/css">
			.big {
				font-family: tahoma, helvetica, arial, sans-serif;
				font-weight: bold;
				font-size: 36px;
			}
		</style>
	</head>
	<body>
		<p class="big">
			Ahoj <%= request.getParameter("name")%>, <br/>
			tvá žádost byla přijata <br/> a přesměrována v
		</p>
		<table style="border: 6px outset;"><tr>
				<td style="background-color: pink;">
					<p class="big" style="color: navy;">
						<%= request.getParameter("date")%>
					</p>
				</td>
			</tr></table>
	</body>
</html>
