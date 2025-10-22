<%-- 
    Document   : insertProduct
    Created on : 30 sept 2025, 7:32:31?p. m.
    Author     : Samuel
--%>

<%@page import="pkg.connection.app.DatabaseHelper"%>
<%@page import="java.sql.*"%>

<%
    String txtName = request.getParameter("txtName");
    String txtBrand = request.getParameter("txtBrand");
    String txtSupplier = request.getParameter("txtSupplier");
    int txtPrice = Integer.parseInt(request.getParameter("txtPrice"));
    String txtSize = request.getParameter("txtSize");
    
    int productId=0;
    if (!request.getParameter("txtId").equals("null")){
        productId = Integer.parseInt(request.getParameter("txtId"));
    }    

    DatabaseHelper db = new DatabaseHelper();

    if (productId == 0) {
        db.InsertProduct(txtName, txtBrand, txtSupplier, txtPrice, txtSize);
    } else {
        db.UpdateProduct(txtName, txtBrand, txtSupplier, txtPrice, txtSize, productId);
    }

    RequestDispatcher rd = request.getRequestDispatcher("welcome.jsp");
    rd.forward(request, response);
%>
