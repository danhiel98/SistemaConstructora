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
        <div class="container" style="margin-top: 75px;">
            <div class="row" style="margin-left: 10px;">
                <h1>Usuarios</h1>
            </div>
            <div class="row" style="margin-top: 10px;">
                <div class="col-md-12">
                    <table class="table table-bordered">
                        <thead>
                            <tr class="active">
                            <th scope="col">Código</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Apellido</th>
                            <th scope="col">Nacimiento</th>
                            <th scope="col">Teléfono</th>
                            <th scope="col">Dirección</th>
                            <th scope="col">Ciudad</th>
                            <th scope="col">Profesión</th>
                            <th scope="col">Salario</th>
                            <th scope="col">Fecha de Contrato</th>
                            <th scope="col">Departamento</th>
                            <th scope="col">Usuario</th>
                            <th scope="col">Opciones</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row">CAJ1123</th>
                            <td>Camila Abigail</td>
                            <td>Juarez</td>
                            <td>Febrero 30, 1995</td>
                            <td>2674-3567</td>
                            <td>El Amatillo #45</td>
                            <td>Ciudad Esperanza</td>
                            <td>Supervisora</td>
                            <td> $ 1350.00</td>
                            <td>Junio 15, 2018</td>
                            <td>Hidraulico</td>
                            <td>cami@21</td>
                            <td>
                                <a href="usuario_edit.jsp" type="button" class="btn btn-info"><i class="fas fa-user-edit"></i></a>
                            </td>
                          </tr>
                          
                        </tbody>
                      </table>
                </div>
                
                
            </div>
        </div>
    </body>
    <script src="src/js/sweetalert.min.js"></script>
    <script src="src/js/jquery.min.js"></script>
    <script src="src/js/popper.min.js"></script>     
    <script src="src/js/bootstrap.min.js"></script>
</html>