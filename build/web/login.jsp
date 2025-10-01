<%-- 
    Document   : login
    Created on : 30 sept 2025, 6:10:40 p. m.
    Author     : Samuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="validateLogin.jsp">
            <label>Username</label>
            <input type="text" id="txtUsername" name="txtUsername">
            <label>Password</label>
            <input type="password" id="txtPassword" name="txtPassword">
            <input type="submit" value="Login">
        </form>    
    </body>
</html>
