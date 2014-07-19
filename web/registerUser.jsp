
<%--
    Document   : registerUser
    Created on : 19.03.2014
    Author     : Stefan Veres
--%>

<%@page import="users.UserBean"%>
<%@page import="users.Pom"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="user" scope="request" class="users.UserBean"/>
<jsp:useBean id="users" scope="application" class="users.UserDataBean"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <%
        int id;

        if (users.isEmpty()) {
            id = Pom.idGenerator();
            user.setIdNum(id);
            users.addUser(user);
        } else if (!users.isLastEmpty()) {
            id = Pom.idGenerator();
            user.setIdNum(id);
            users.addUser(user);
        }
    %>

    <body>

        <h1>Registrace uživatele</h1>

        <form action="uzivatelia.jsp" method="post">
            Jméno: <input type="text" name="name" /> <br/>
            Přijmění: <input type="text" name="surname" /> <br/>
            Rok narození: <input type="text" name="birthYear" /> <br/>

            <input type="submit" value="Odeslat" />

        </form>
    </body>
</html>
