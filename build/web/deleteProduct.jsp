<%-- 
    Document   : deleteProduct
    Created on : 14 oct 2025, 6:48:06?p. m.
    Author     : Samuel
--%>

<%@page import="pkg.connection.app.DatabaseHelper"%>
<%@page import="java.sql.*"%>

<%    
    Integer txtProductId = Integer.parseInt(request.getParameter("txtProductId"));

    DatabaseHelper db = new DatabaseHelper();

    db.DeleteProduct(txtProductId);

    RequestDispatcher rd = request.getRequestDispatcher("welcome.jsp");
    rd.forward(request, response);
%>