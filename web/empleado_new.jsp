<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Empleado</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie-edge">
        <link rel="stylesheet" type="text/css" href="src/css/bootstrap.min.css">
        <script src="src/js/all.js"></script>
    </head>
    <body>
        <%@ include file="barra.jsp" %>
        <div class="container" style="margin-top: 50px;">
            <div class="row" style="margin-left: 10px;">
                <h1>Registrar Nuevo Empleado</h1>
            </div>
            <form action="./empleados?opc=registrar" method="POST" class="form-horizontal">
                <div class="form-group">
                    <label class="control-label col-sm-2">Nombres</label>
                    <div class="col-md-4">
                        <input type="text" name="nombre" class="form-control" placeholder="Nombres" required>
                    </div>
                    <label class="control-label col-sm-2">Apellidos</label>
                    <div class="col-md-4">
                        <input type="text" name="apellido" class="form-control" placeholder="Apellidos" required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2">Dirección</label>
                    <div class="col-md-4">
                        <input type="text" name="direccion" class="form-control" placeholder="Dirección" required>
                    </div>
                    
                    <label class="control-label col-sm-2">Telefono:</label>
                    <div class="col-md-4">
                        <input type="text" name="telefono" class="form-control" placeholder="Teléfono" required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2">Profesión</label>
                    <div class="col-md-4">
                        <input type="text" name="profesion" class="form-control" placeholder="Profesión" required>
                    </div>

                    <label class="control-label col-sm-2">Salario</label>
                    <div class="col-md-4">
                        <input type="number" step="0.01" min="100" max="100000" name="salario" class="form-control" placeholder="Salario" required>
                    </div>
                </div>
                <div class="form-group">
                    <button style="margin-top: 30px;" type="Submit" class="btn btn-success btn-lg pull-right">Registrar Empleado</button>
                </div>
            </form>
        </div>
    </body>
    <script src="src/js/sweetalert.min.js"></script>
    <script src="src/js/jquery.min.js"></script>
    <script src="src/js/popper.min.js"></script>     
    <script src="src/js/bootstrap.min.js"></script>
</html>

