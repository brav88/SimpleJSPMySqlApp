<%--
    Document    : welcome
    Descripción : Página principal de la aplicación.
    Creado el   : 30 de septiembre de 2025
    Autor       : Samuel
    Versión     : 1.0
--%>
<%@page import="pkg.connection.app.DatabaseHelper"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
        <title>Panel de Control | Mi Aplicación</title>
    </head>
    <body class="bg-light">

        <%
            String productId = request.getParameter("productId");
            String name = request.getParameter("name");
            String brand = request.getParameter("brand");
            String supplier = request.getParameter("supplier");
            String unit_price = request.getParameter("unit_price");
            String size = request.getParameter("size");            
            
            String email = (String) session.getAttribute("email");
            String username = (String) session.getAttribute("username");
            if (email == null && username == null) {
                RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
                rd.forward(request, response);
            }
        %>

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top shadow">
            <div class="container-fluid">
                <a class="navbar-brand text-uppercase fw-bold" href="#">App Dashboard</a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="welcome.jsp">Productos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Configuración</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="logout.jsp">Cerrar Sesion</a>
                        </li>
                    </ul>

                    <span class="navbar-text me-3 text-white-50">
                        Bienvenido, **<%= username%>**
                    </span>
                    <a class="btn btn-outline-danger" href="logout.jsp">
                        Cerrar Sesión
                    </a>
                </div>
            </div>
        </nav>

        <div class="container-fluid">
            <div class="row">
                <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-white sidebar collapse shadow-sm vh-100 position-fixed pt-3">
                    <div class="position-sticky">
                        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted text-uppercase">
                            <span>Gestión</span>
                        </h6>
                        <ul class="nav flex-column">
                            <li class="nav-item">
                                <a class="nav-link active bg-light border-start border-primary border-4" aria-current="page" href="#">
                                    Dashboard
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark" href="#">
                                    Clientes
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark" href="#">
                                    Pedidos
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark" href="#">
                                    Reportes
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>

                <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                        <h1 class="h2">Panel de Control</h1>
                        <div class="btn-toolbar mb-2 mb-md-0">
                            <button type="button" class="btn btn-sm btn-outline-secondary">Exportar</button>
                        </div>
                    </div>

                    <div class="card shadow-sm mb-4">
                        <div class="card-header bg-primary text-white">
                            <h5 class="mb-0">Añadir Nuevo Producto</h5>
                        </div>
                        <div class="card-body">
                            <form action="insertProduct.jsp" class="row g-3">
                                <div class="col-md-2">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="txtId" placeholder="ID" name="txtId" value="<%= productId%>" readonly>
                                        <label for="txtId">Id</label>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="txtName" placeholder="Nombre" name="txtName" value="<%= name%>">
                                        <label for="txtName">Name</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="txtBrand" placeholder="Marca" name="txtBrand" value="<%= brand%>">
                                        <label for="txtBrand">Brand</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-floating">
                                        <input type="text" class="form-control" id="txtSupplier" placeholder="Proveedor" name="txtSupplier" value="<%= supplier%>">
                                        <label for="txtSupplier">Supplier</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-floating">
                                        <input type="number" class="form-control" id="txtPrice" placeholder="Precio" name="txtPrice" value="<%= unit_price%>">
                                        <label for="txtPrice">Price</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-floating">
                                        <input type="numer" class="form-control" id="txtSize" placeholder="Tamaño" name="txtSize" value="<%= size%>">
                                        <label for="txtSize">Size</label>
                                    </div>
                                </div>
                                <div class="col-12 text-end">
                                    <button type="submit" class="btn btn-primary">Save</button>
                                </div>
                            </form>
                        </div>
                    </div>

                    <h2 class="mb-3 mt-4">Inventario de Productos</h2>

                    <div class="card shadow-sm">
                        <div class="card-body">
                            <%
                                // Bloque de lógica de DB (sin modificar por solicitud)
                                DatabaseHelper db = new DatabaseHelper();
                                ResultSet rs = db.GetProducts();
                            %>

                            <table class="table table-striped table-hover mt-3">
                                <thead class="table-dark">
                                    <tr>
                                        <th>ProductId</th>
                                        <th>Name</th>
                                        <th>Brand</th>
                                        <th>Supplier</th>
                                        <th>Unit Price</th>
                                        <th>Size</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        while (rs.next()) {
                                    %>
                                    <tr>
                                        <td><%=rs.getInt("productId")%></td>
                                        <td><%=rs.getString("name")%></td>
                                        <td><%=rs.getString("brand")%></td>
                                        <td><%=rs.getString("supplier")%></td>
                                        <td><%=rs.getInt("unit_price")%></td>
                                        <td><%=rs.getString("size")%></td>
                                        <td>
                                            <a onclick="loadModal(<%=rs.getInt("productId")%>)" data-bs-toggle="modal" data-bs-target="#staticBackdrop" data-id="<%=rs.getInt("productId")%>" class="btn btn-danger">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash3-fill" viewBox="0 0 16 16">
                                                <path d="M11 1.5v1h3.5a.5.5 0 0 1 0 1h-.538l-.853 10.66A2 2 0 0 1 11.115 16h-6.23a2 2 0 0 1-1.994-1.84L2.038 3.5H1.5a.5.5 0 0 1 0-1H5v-1A1.5 1.5 0 0 1 6.5 0h3A1.5 1.5 0 0 1 11 1.5m-5 0v1h4v-1a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5M4.5 5.029l.5 8.5a.5.5 0 1 0 .998-.06l-.5-8.5a.5.5 0 1 0-.998.06m6.53-.528a.5.5 0 0 0-.528.47l-.5 8.5a.5.5 0 0 0 .998.058l.5-8.5a.5.5 0 0 0-.47-.528M8 4.5a.5.5 0 0 0-.5.5v8.5a.5.5 0 0 0 1 0V5a.5.5 0 0 0-.5-.5"/>
                                                </svg>
                                            </a>
                                            <a onclick="window.location.href = 'welcome.jsp?productId=<%=rs.getInt("productId")%>&name=<%=rs.getString("name")%>&brand=<%=rs.getString("brand")%>&supplier=<%=rs.getString("supplier")%>&unit_price=<%=rs.getString("unit_price")%>&size=<%=rs.getString("size")%>'" class="btn btn-info">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5z"/>
                                                </svg>
                                            </a>
                                        </td>
                                    </tr>
                                    <%
                                        }
                                    %>
                                </tbody>
                            </table>
                            <!-- Modal -->
                            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title fs-5" id="staticBackdropLabel">Confirmar accion</h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            Desea realmente borrar este elemento <label id="lblProductId"></label>? 
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                            <a id="deleteAction" type="button" class="btn btn-danger">Si, borrar</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
        <script type="text/javascript">
            function loadModal(txtProductId) {
                document.getElementById("deleteAction").setAttribute('href', "deleteProduct.jsp?txtProductId=" + txtProductId);
                document.getElementById("lblProductId").innerHTML = idRegistro;
            }          
        </script>
    </body>
</html>