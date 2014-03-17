<%-- 
    Document   : uzivatelia
    Created on : 08-Mar-2014, 11:27:55
    Author     : User
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
        <jsp:setProperty name="user" property="*" />
        <% users.addUser(user);//= user.getName()  %>
         
        
        <table border="1">
        
         <%
        int rows =users.getSize();
        int cols =2;
        
        /*
        String name = request.getParameter("param1");
        String surname = request.getParameter("param2");
        String radek = request.getParameter("param3");
        */
        
        for (int r = 0; r < rows; r++){
            String name = users.getUsers().get(r).getName();
            String surname = users.getUsers().get(r).getSurname();
            %>
            <tr>
            <%
            for(int c = 0; c < cols; c++){
                if(true){
                    %>
                    <td> <%= name %> </td> <td> <%= surname%> </td>
                    <%
                    break;
                } else { 
                    %>
                    <td> --------- </td>
                    <%
                }
            }
            
            %>
            </tr>
            <%
        }
        %>
        </table>
        
        
    </body>
</html>
