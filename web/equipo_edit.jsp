<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Equipo</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie-edge">
        <link rel="stylesheet" type="text/css" href="src/css/bootstrap.min.css">
        <script src="src/js/all.js"></script>
    </head>
    <body>
        <%@ include file="barra.jsp" %>
        <div class="container" style="margin-top: 50px;">
            <div class="row" style="margin-left: 10px;">
                <h1>Editar Información del Equipo</h1>
            </div>
            <div class="row" style="margin-top: 0px;">
                <form action="./equipo?opc=actualizar" method="POST" class="form-control">
                    <input name="codigoOriginal" type="hidden" value="${ equipo.getCodigo() }" >
                    <div class="form-group">
                        <div class="form-group">
                            <label class="control-label col-sm-2">Código de Equipo</label>
                            <div class="col-md-4">
                                <input type="text" name="codigo" class="form-control" placeholder="#####" required minlenght="3" value="${ equipo.getCodigo() }">
                            </div>

                            <label class="control-label col-sm-2">Tipo</label>
                            <div class="col-md-4">
                                <input type="text" name="tipo" class="form-control" placeholder="Tipo" required minlenght="3" value="${ equipo.getTipo() }">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">Modelo</label>
                        <div class="col-md-3">
                            <input type="text" name="modelo" class="form-control" placeholder="Modelo" required minlenght="3" value="${ equipo.getModelo() }">
                        </div>

                        <label class="control-label col-sm-1">Año</label>
                        <div class="col-md-2">
                            <input type="number" name="anyo" class="form-control" placeholder="Año" required min="1880" max="2020" value="${ equipo.getAnyo() }">
                        </div>
                        
                        <label class="control-label col-sm-1">Valor</label>
                        <div class="col-md-2">
                            <input type="number" name="valor" step="0.01" class="form-control" placeholder="Valor" required min="0.5" max="1000000" value="${ equipo.getValor() }">
                        </div>
                    </div>
                    <div class="form-group">
                        <button style="margin-top: 30px;" type="Submit" class="btn btn-success btn-lg pull-right">Actualizar registro</button>
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

