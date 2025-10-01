<%-- 
    Document   : insertProduct
    Created on : 30 sept 2025, 7:32:31?p. m.
    Author     : Samuel
--%>

<%@page import="pkg.connection.app.DatabaseHelper"%>
<%@page import="java.sql.*"%>

<%
    int txtId = Integer.parseInt(request.getParameter("txtId"));
    String txtName = request.getParameter("txtName");
    String txtBrand = request.getParameter("txtBrand");
    String txtSupplier = request.getParameter("txtSupplier");
    int txtPrice = Integer.parseInt(request.getParameter("txtPrice"));
    String txtSize = request.getParameter("txtSize");

    DatabaseHelper db = new DatabaseHelper();

    db.insertProduct(txtId, txtName, txtBrand, txtSupplier, txtPrice, txtSize);

    RequestDispatcher rd = request.getRequestDispatcher("welcome.jsp");
    rd.forward(request, response);
%>
