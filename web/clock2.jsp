<%-- 
    Document   : clock2
    Created on : 31.10.2012, 18:42:29
    Author     : Jaroslav Srp, Vladimir Klimes
--%>

<table> 
	<tr>
		<td style = "background-color: black;">
			<p class = "big" style = "color: cyan; font-size: 3em;
			   font-weight: bold;">

				<%-- script to determine client local and --%>
				<%-- format date accordingly --%>
				<%
					// get client locale
					java.util.Locale locale = request.getLocale();

					// get DateFormat for client's Locale
					java.text.DateFormat dateFormat =
						java.text.DateFormat.getDateTimeInstance(
						java.text.DateFormat.LONG,
						java.text.DateFormat.LONG, locale);

				%> <%-- end script --%>

				<%-- output date --%>
				<%= dateFormat.format(new java.util.Date())%>
			</p>
		</td>
	</tr>
</table>
