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
                <form>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="InputCodCliente">Código de Cliente</label>
                            <input type="text" class="form-control" id="InputCodCliente" placeholder="#####">
                        </div>
                        <div class="form-group">
                            <label for="InputContacto">Contacto</label>
                            <input type="text" class="form-control" id="InputContacto" placeholder="Contacto">
                        </div>
                        <div class="form-group">
                            <label for="InputDirección">Dirección</label>
                            <input type="text" class="form-control" id="InputDirección" placeholder="Dirección">
                        </div>
                        
                        
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="InputNomCliente">Nombre</label>
                            <input type="text" class="form-control" id="InputNomCliente" placeholder="Nombre">
                        </div>
                        <div class="form-group">
                            <label for="InputTelContacto">Teléfono de Contacto</label>
                            <input type="text" class="form-control" id="InputTelContacto" placeholder="####-####">
                        </div>
                        <div class="form-group">
                            <label for="InputCiudad">Ciudad</label>
                            <input type="text" class="form-control" id="InputCiudad" placeholder="Ciudad">
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

