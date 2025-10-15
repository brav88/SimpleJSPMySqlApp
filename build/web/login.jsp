<%--
    Document    : login
    Descripción : Página de inicio de sesión de usuario.
    Creado el   : 30 de septiembre de 2025
    Autor       : Samuel
    Versión     : 1.0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
        <title>Inicio de Sesión | Mi Aplicación</title>
        <style>
            /* Estilo personalizado para un mejor centrado en la vista */
            .login-container {
                min-height: 100vh;
            }
        </style>
    </head>
    <body>
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
                            <a class="nav-link" href="#">Productos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Configuración</a>
                        </li>                        
                    </ul>
                    
                    <a class="btn btn-outline-danger" href="logout.jsp">
                        Cerrar Sesión
                    </a>
                </div>
            </div>
        </nav>

        <div class="login-container d-flex justify-content-center align-items-center pt-5">
            <div class="card shadow-lg" style="width: 24rem;"> <div class="card-header bg-dark text-white text-center">
                    <h4 class="mb-0">Acceso de Usuarios</h4>
                </div>
                <div class="card-body p-4">
                    <form action="validateLogin.jsp" method="POST"> 
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" id="txtEmail" name="txtEmail" placeholder="correo@ejemplo.com" required>
                            <label for="txtEmail">Correo Electrónico</label>
                        </div>
                        <div class="form-floating mb-4">
                            <input type="password" class="form-control" id="txtPassword" name="txtPassword" placeholder="Contraseña" required>
                            <label for="txtPassword">Contraseña</label>
                        </div>

                        <div class="d-grid gap-2"> <button type="submit" class="btn btn-dark btn-lg">Iniciar Sesión</button>
                        </div>

                        <div class="text-center mt-3">
                            <a href="#" class="text-decoration-none">¿Olvidaste tu contraseña?</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
    </body>
</html>