<%-- 
    Document   : validateLogin
    Created on : 30 sept 2025, 6:18:47?p. m.
    Author     : Samuel
--%>

<%@page import="pkg.connection.app.DatabaseHelper"%>
<%@page import="java.sql.*"%>


<%
    String txtEmail = request.getParameter("txtEmail");
    String txtPassword = request.getParameter("txtPassword");   
    
    session = request.getSession(false);
    DatabaseHelper db = new DatabaseHelper();

    ResultSet rs = db.ValidateLogin(txtEmail, txtPassword);

    if (rs.next()) {
        session = request.getSession();
        session.setAttribute("email", txtEmail);
        session.setAttribute("username", rs.getString("username"));        
        RequestDispatcher rd = request.getRequestDispatcher("/welcome.jsp");
        rd.forward(request, response);
    } else {
        RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
        rd.forward(request, response);
    }
%>
