<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SAC| Inicio Sesión</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie-edge">
        <link rel="stylesheet" type="text/css" href="src/css/bootstrap.min.css">
        <script src="src/js/all.js"></script>
    </head>
    <body>
        <%@ include file="barra.jsp" %>
        <div class="container" style="margin-top: 100px;">
            <div class="row">
                <h1 class="text-center">Bienvenido al Sistema de Administración de Constructoras</h1>
            </div>
            <div class="row" style="margin-top: 100px;">
                <div class="col-md-2"></div>
                <div class="col-md-4">
                    <a href="usuario_v.jsp" type="button" class="btn btn-primary btn-lg btn-block">Ver Usuarios</a>
                </div>
                
                <div class="col-md-4">
                    <a href="proyecto_v.jsp" type="button" class="btn btn-success btn-lg btn-block">Ver Proyectos</a>
                </div>
                <div class="col-md-2"></div>
                
            </div>
            <div class="row" style="margin-top: 25px;">
                <div class="col-md-2"></div>
                              
                <div class="col-md-4">
                    <a href="clientes?opc=listar" type="button" class="btn btn-info btn-lg btn-block">Ver Clientes</a>
                </div>
                <div class="col-md-4">
                    <a href="empleados?opc=listar" type="button" class="btn btn-info btn-lg btn-block">Ver Empleados</a>
                </div>
                <div class="col-md-2"></div>
                
            </div>
        </div>
    </body>
    <script src="src/js/sweetalert.min.js"></script>
    <script src="src/js/jquery.min.js"></script>
    <script src="src/js/popper.min.js"></script>     
    <script src="src/js/bootstrap.min.js"></script>
</html>
