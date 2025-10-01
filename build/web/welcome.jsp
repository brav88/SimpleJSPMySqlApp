<%-- 
    Document   : welcome
    Created on : 30 sept 2025, 6:44:09 p. m.
    Author     : Samuel
--%>
<%@page import="pkg.connection.app.DatabaseHelper"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            td, th {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even) {
                background-color: #dddddd;
            }
        </style>
    </head>
    <body>
        <h1>Welcome to our App</h1>

        <form action="insertProduct.jsp">
            id
            <input type="number" id="txtId" name="txtId"><br>
            Name
            <input type="text" id="txtName" name="txtName"><br>
            Brand
            <input type="text" id="txtBrand" name="txtBrand"><br>
            Supplier
            <input type="text" id="txtSupplier" name="txtSupplier"><br>
            Unit Price
            <input type="number" id="txtPrice" name="txtPrice"><br>
            Size
            <input type="text" id="txtSize" name="txtSize"><br>
            <input type="submit" value="Save">
        </form>   
        
        <%
            DatabaseHelper db = new DatabaseHelper();

            ResultSet rs = db.GetProducts();
        %>

        <table>
            <tr>
                <th>ProductId</th>
                <th>Name</th>
                <th>Brand</th>
                <th>Supplier</th>
                <th>Unit Price</th>
                <th>Size</th>
            </tr>
            <%while (rs.next()) {%>
            <tr>
                <td><%=rs.getInt("productId")%></td>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("brand")%></td>
                <td><%=rs.getString("supplier")%></td>
                <td><%=rs.getDouble("unit_price")%></td>
                <td><%=rs.getString("size")%></td>
            </tr>  
            <%}%>
        </table>

    </body>
</html>
