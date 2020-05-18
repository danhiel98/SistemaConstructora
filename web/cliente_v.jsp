<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SAC| Clientes</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie-edge">
        <link rel="stylesheet" type="text/css" href="src/css/bootstrap.min.css">
        <script src="src/js/all.js"></script>
    </head>
    <body>
        <%@ include file="barra.jsp" %>
        <div class="container" style="margin-top: 75px;">
            <div class="row" style="margin-left: 10px;">
                <h1>Clientes</h1>
            </div>
            <div class="row" style="margin-top: 10px;">
                <div class="col-md-12">
                    <table class="table table-bordered">
                        <thead>
                            <tr class="active">
                            <th scope="col">Código Cliente</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Contacto</th>
                            <th scope="col">Teléfono de Contacto</th>
                            <th scope="col">Dirección</th>
                            <th scope="col">Ciudad</th>
                            <th scope="col">Opciones</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row">CLI007</th>
                            <td>Music Records</td>
                            <td>Antonia Carjolis</td>
                            <td>4563-4564</td>
                            <td>Avenida Juan Diaz, #34</td>
                            <td>Versailles</td>
                            <td>
                                <a href="cliente_edit.jsp" type="button" class="btn btn-info"><i class="fas fa-edit"></i></a>
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
