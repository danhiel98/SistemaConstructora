<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Cliente</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie-edge">
        <link rel="stylesheet" type="text/css" href="src/css/bootstrap.min.css">
        <script src="src/js/all.js"></script>
    </head>
    <body>
        <%@ include file="barra.jsp" %>
        <div class="container" style="margin-top: 50px;">
            <div class="row" style="margin-left: 10px;">
                <h1>Editar Registro de Cliente</h1>
            </div>
            <div class="row" style="margin-top: 0px;">
                <form action="./clientes?opc=actualizar" method="POST">
                    <input name="codigoOriginal" type="hidden" value="${ cliente.getCodigo() }" >
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="InputCodCliente">Código de Cliente</label>
                            <input type="text" name="codigo" class="form-control" id="InputCodCliente" placeholder="#####" required minlength="3" maxlength="6" value="${ cliente.getCodigo() }">
                        </div>
                        <div class="form-group">
                            <label for="InputContacto">Contacto</label>
                            <input type="text" name="contacto" class="form-control" id="InputContacto" placeholder="Contacto" required minlength="3" value="${ cliente.getNombreContacto() }">
                        </div>
                        <div class="form-group">
                            <label for="InputDirección">Dirección</label>
                            <input type="text" name="direccion" class="form-control" id="InputDirección" placeholder="Dirección" required minlength="3" value="${ cliente.getDireccion() }">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="InputNomCliente">Nombre</label>
                            <input type="text" name="nombre" class="form-control" id="InputNomCliente" placeholder="Nombre" required minlength="3" maxlength="18" value="${ cliente.getNombre() }">
                        </div>
                        <div class="form-group">
                            <label for="InputTelContacto">Teléfono de Contacto</label>
                            <input type="text" name="telefonoContacto" class="form-control" id="InputTelContacto" placeholder="####-####" required minlength="3" maxlength="12" value="${ cliente.getTelefonoContacto() }">
                        </div>
                        <div class="form-group">
                            <button style="margin-top: 30px;" type="Submit" class="btn btn-primary btn-lg btn-block">Guardar Cambios</button>
                        </div>
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

