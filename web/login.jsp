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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <body>
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
                        <a class="nav-link disabled" href="#">Disabled</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="d-flex justify-content-center align-items-center">
            <div class="card" style="width: 18rem;">
                <div class="card-header bg-primary">
                    Login
                </div>
                <div class="card-body">
                    <form action="validateLogin.jsp">
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" id="txtEmail" name="txtEmail" placeholder="name@example.com">
                            <label for="txtEmail">Email address</label>
                        </div>
                        <div class="form-floating">
                            <input type="password" class="form-control" id="txtPassword" name="txtPassword" placeholder="Password">
                            <label for="txtPassword">Password</label>
                        </div>
                        <hr>
                        <button type="submit" class="btn btn-primary">Login</button>
                    </form>    
                </div>
            </div>
        </div>
    </body>
</html>
