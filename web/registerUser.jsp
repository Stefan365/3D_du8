<%--
    Document   : registerUser
    Created on : 15.12.2012, 11:25:07
    Author     : Jaroslav Srp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="user" scope="request" class="users.UserBean"/>
<jsp:useBean id="users" scope="application" class="users.UserDataBean"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registrace uživatele</h1>

        <jsp:setProperty name="user" property="*" />

        <% if (user.hasValidData()) {
               users.addUser(user);
        %>
        jménoB: <jsp:getProperty name="user" property="name"  /> 
        <%
        } else { //r. 27 je ekvivalentny s r.26 %>
        
        

        <form action="uzivatelia.jsp" method="post">
            Jméno: <input type="text" name="name" /> <br/>
            Prijmeni: <input type="text" name="surname" /> <br/>
            <input type="submit" value="Odeslat" />
        </form>

        <% }%>
    </body>
</html>
