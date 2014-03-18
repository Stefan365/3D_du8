<%-- 
    Document   : uzivatelia
    Created on : 08-Mar-2014, 11:27:55
    Author     : User
--%>

<%@page import="javax.swing.JOptionPane"%>
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
    <body>

        
        <%--blok 0: <jsp:setProperty name="user2" property="*" />--%>

        <%
            //blok 1:
            user.setName(request.getParameter("name"));
            user.setSurname(request.getParameter("surname"));
            user.setBirthYear(request.getParameter("birthYear"));

            if (user.hasValidData()) {

                //blok 2:
                user = (UserBean) users.getLastBean();
                user.setName(request.getParameter("name"));
                user.setSurname(request.getParameter("surname"));
                user.setBirthYear(request.getParameter("birthYear"));

        %>
        <table border="4">
            <td> <%= "* ID *"%> </td> <td> <%= "*  JMÉNO  *"%> </td> 
            <td> <%="*  PŘIJMĚNÍ  *"%> </td> <td> <%= "*  ROK NAROZENÍ  *"%> </td>   

            <%
                int rows = users.getSize();
                int cols = 4;

                for (int r = 0; r < rows; r++) {
                    int id = users.getUsers().get(r).getIdNum();
                    String name = users.getUsers().get(r).getName();
                    String surname = users.getUsers().get(r).getSurname();
                    String birthY = users.getUsers().get(r).getBirthYear();

            %>

            <tr>              
                <% for (int c = 0; c < cols; c++) {
                %>
                <td> <%= id%> </td> <td> <%= name%> </td> <td> <%= surname%> </td> <td> <%= birthY%> </td>
                <%
                        break;
                    }
                %>
            </tr>
            <%                }
            %>
        </table>


        <%
        } else {
        %>
        <h2>Zadaj prosím všetky políčka!</h2>
        <%
            }
        %>

        <%-- ODOSIELACIE TLACITKO:--%>
        <div>
            <form action = "registerUser.jsp" method = "post">
                <input type="submit" value="Zpět" />
            </form>
        </div>

    </body>
</html>
