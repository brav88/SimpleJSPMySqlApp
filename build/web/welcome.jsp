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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">       
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>       
        <title>JSP Page</title>       
    </head>
    <body>
        <%
            String email = (String) session.getAttribute("email");
            String username = (String) session.getAttribute("username");            
            if (email == null && username == null) {               
                RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
                rd.forward(request, response);
            }
        %>
        <nav class="navbar navbar-expand-sm bg-primary navbar-dark">
            <div class="container-fluid">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Active</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout.jsp">Log out</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <h1>Welcome to our App <%=username%></h1>
            <form action="insertProduct.jsp">               
                <div class="form-floating mb-3 mt-3">
                    <input type="text" class="form-control" id="txtId" placeholder="" name="txtId">
                    <label for="txtId">Id</label>
                </div>
                <div class="form-floating mb-3 mt-3">
                    <input type="text" class="form-control" id="txtName" placeholder=""  name="txtName">
                    <label for="txtName">Name</label>
                </div>
                <div class="form-floating mb-3 mt-3">
                    <input type="text" class="form-control" id="txtBrand" placeholder="" name="txtBrand">
                    <label for="txtBrand">Brand</label>
                </div>     
                <div class="form-floating mb-3 mt-3">
                    <input type="text" class="form-control" id="txtSupplier" placeholder="" name="txtSupplier">
                    <label for="txtSupplier">Supplier</label>
                </div>     
                <div class="form-floating mb-3 mt-3">
                    <input type="numer" class="form-control" id="txtPrice" placeholder=""  name="txtPrice">
                    <label for="txtPrice">Price</label>
                </div>     
                <div class="form-floating mb-3 mt-3">
                    <input type="numer" class="form-control" id="txtSize" placeholder=""  name="txtSize">
                    <label for="txtSize">Size</label>
                </div>                  
                <button type="submit" class="btn btn-primary">Save</button>
            </form>              

            <%                
                DatabaseHelper db = new DatabaseHelper();

                ResultSet rs = db.GetProducts();
            %>

            <table class="table table-hover">
                <thead>
                <th>ProductId</th>
                <th>Name</th>
                <th>Brand</th>
                <th>Supplier</th>
                <th>Unit Price</th>
                <th>Size</th>
                </thead>
                <%while (rs.next()) {%>
                <tbody>
                <td><%=rs.getInt("productId")%></td>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("brand")%></td>
                <td><%=rs.getString("supplier")%></td>
                <td><%=rs.getDouble("unit_price")%></td>
                <td><%=rs.getString("size")%></td>
                </tbody>  
                <%}%>
            </table>
        </div>
    </body>
</html>
