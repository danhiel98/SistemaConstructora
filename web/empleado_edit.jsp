<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Empleado</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie-edge">
        <link rel="stylesheet" type="text/css" href="src/css/bootstrap.min.css">
        <script src="src/js/all.js"></script>
    </head>
    <body>
        <%@ include file="barra.jsp" %>
        <div class="container" style="margin-top: 50px;">
            <div class="row" style="margin-left: 10px;">
                <h1>Editar Registro de Empleado</h1>
            </div>
            <div class="row" style="margin-top: 0px;">
                <form action="./empleados?opc=actualizar" method="POST" class="form-horizontal">
                    <input name="id" type="hidden" value="${ empleado.getId() }" >
                    <div class="form-group">
                        <label class="control-label col-sm-2">Nombres</label>
                        <div class="col-md-4">
                            <input type="text" name="nombre" class="form-control" placeholder="Nombres" value="${ empleado.getNombre() }" required>
                        </div>
                        <label class="control-label col-sm-2">Apellidos</label>
                        <div class="col-md-4">
                            <input type="text" name="apellido" class="form-control" placeholder="Apellidos" value="${ empleado.getApellido() }" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">Dirección</label>
                        <div class="col-md-4">
                            <input type="text" name="direccion" class="form-control" placeholder="Dirección" value="${ empleado.getDireccion() }" required>
                        </div>
                        
                        <label class="control-label col-sm-2">Telefono:</label>
                        <div class="col-md-4">
                            <input type="text" name="telefono" class="form-control" placeholder="Teléfono" value="${ empleado.getTelefono() }" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">Profesión</label>
                        <div class="col-md-4">
                            <input type="text" name="profesion" class="form-control" placeholder="Profesión" value="${ empleado.getProfesion() }" required>
                        </div>

                        <label class="control-label col-sm-2">Salario</label>
                        <div class="col-md-4">
                            <input type="number" step="0.01" min="100" max="100000" name="salario" class="form-control" placeholder="Salario" value="${ empleado.getSalario() }" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <button style="margin-top: 30px;" type="Submit" class="btn btn-success btn-lg pull-right">Actualizar Información</button>
                    </div>
                </form>
            </div>
        </div>
    </body>
    <script src="src/js/sweetalert.min.js"></script>
    <script src="src/js/jquery.min.js"></script>
    <script src="src/js/popper.min.js"></script>     
    <script src="src/js/bootstrap.min.js"></script>
</html>

