<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Proyecto</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie-edge">
        <link rel="stylesheet" type="text/css" href="src/css/bootstrap.min.css">
        <script src="src/js/all.js"></script>
    </head>
    <body>
        <%@ include file="barra.jsp" %>
        <div class="container" style="margin-top: 50px;">
            <div class="row" style="margin-left: 10px;">
                <h1>Editar Registro de Proyecto</h1>
            </div>
            <div class="row" style="margin-top: 0px;">
                <form>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="InputContrato">Número de Contrato</label>
                            <input type="text" class="form-control" id="InputContrato" placeholder="#####">
                        </div>
                        <div class="form-group">
                            <label for="InputFInicio">Fecha de Inicio</label>
                            <input type="date" class="form-control" id="InputFInicio" placeholder="">
                        </div>
                        <div class="form-group">
                            <label for="InputEncargado">Encargado</label>
                            <input type="text" class="form-control" id="InputEncargado" placeholder="Encargado">
                        </div>
                        
                        
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="InputTProyecto">Tipo de Proyecto</label>
                            <select class="form-control" id="InputTProyecto">
                                <option value="Edificación">Edificación</option>
                                <option value="Terraceria">Terraceria</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="InputObrero">Obrero</label>
                            <input type="text" class="form-control" id="InputObrero" placeholder="Obrero">
                        </div>
                        <div class="form-group">
                            <label for="InputMonto">Monto de Proyecto</label>
                            <div class="input-group">
                            <span class="input-group-addon">$</span>
                            <input type="number" class="form-control" id="InputMonto" placeholder="0000.00">
                            </div>
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
