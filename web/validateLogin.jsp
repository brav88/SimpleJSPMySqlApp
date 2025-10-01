<%-- 
    Document   : validateLogin
    Created on : 30 sept 2025, 6:18:47?p. m.
    Author     : Samuel
--%>

<%@page import="pkg.connection.app.DatabaseHelper"%>
<%@page import="java.sql.*"%>

<%
    String txtUsername = request.getParameter("txtUsername");
    String txtPassword = request.getParameter("txtPassword");

    DatabaseHelper db = new DatabaseHelper();

    ResultSet rs = db.ValidateLogin(txtUsername, txtPassword);

    if (rs.next()) {
        RequestDispatcher rd = request.getRequestDispatcher("/welcome.jsp");
        rd.forward(request, response);
    } else {
        RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
        rd.forward(request, response);
    }
%>
