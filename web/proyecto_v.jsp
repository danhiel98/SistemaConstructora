<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SAC| Proyectos</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie-edge">
        <link rel="stylesheet" type="text/css" href="src/css/bootstrap.min.css">
        <script src="src/js/all.js"></script>
    </head>
    <body>
        <%@ include file="barra.jsp" %>
        <div class="container" style="margin-top: 75px;">
            <div class="row" style="margin-left: 10px;">
                <h1>Proyectos</h1>
            </div>
            <div class="row" style="margin-top: 10px;">
                <div class="col-md-12">
                    <table class="table table-bordered">
                        <thead>
                            <tr class="active">
                            <th scope="col">Nº de Contrato</th>
                            <th scope="col">Tipo Proyecto</th>
                            <th scope="col">Fecha Inicio</th>
                            <th scope="col">Obrero</th>
                            <th scope="col">Encargado</th>
                            <th scope="col">Monto de Proyecto</th>
                            <th scope="col">Opciones</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row">CEC330</th>
                            <td>Edificación</td>
                            <td>Febrero 30, 1995</td>
                            <td>Armando Paredes</td>
                            <td>Armando Estaban Quito </td>
                            <td> $ 13,500.00</td>
                            <td>
                                <a href="proyecto_edit.jsp" type="button" class="btn btn-info"><i class="fas fa-edit"></i></i></a>
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