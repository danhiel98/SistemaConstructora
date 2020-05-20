<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Usuario</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie-edge">
        <link rel="stylesheet" type="text/css" href="src/css/bootstrap.min.css">
        <script src="src/js/all.js"></script>
    </head>
    <body>
        <%@ include file="barra.jsp" %>
        <div class="container" style="margin-top: 50px;">
            <div class="row" style="margin-left: 10px;">
                <h1>Editar Registro de Usuario</h1>
            </div>
            <div class="row" style="margin-top: 0px;">
                <form>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="InputCodigo">Código</label>
                            <input type="text" class="form-control" id="InputCodigo" placeholder="#####">
                        </div>
                        <div class="form-group">
                            <label for="InputNombre">Nombre</label>
                            <input type="text" class="form-control" id="InputNombre" placeholder="Nombre">
                        </div>
                        <div class="form-group">
                            <label for="InputApellido">Apellido</label>
                            <input type="text" class="form-control" id="InputApellido" placeholder="Apellido">
                        </div>
                        <div class="form-group">
                            <label for="InputNacimiento">Fecha de Nacimiento</label>
                            <input type="date" class="form-control" id="InputNaciemiento">
                        </div>
                        <div class="form-group">
                            <label for="InputTelefono">Teléfono</label>
                            <input type="text" class="form-control" id="InputTelefono" placeholder="####-####">
                        </div>
                        <div class="form-group">
                            <label for="InputDireccion">Dirección</label>
                            <input type="text" class="form-control" id="InputDireccion" placeholder="Direccion">
                        </div>
                        <div class="form-group">
                            <label for="InputCiudad">Ciudad</label>
                            <input type="text" class="form-control" id="InputCiudad" placeholder="Ciudad">
                        </div>
                        
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="InputProfesion">Profesión</label>
                            <input type="text" class="form-control" id="InputProfesion" placeholder="Profesion">
                        </div>
                        <div class="form-group">
                            <label for="InputSalario">Salario</label>
                            <div class="input-group">
                            <span class="input-group-addon">$</span>
                            <input type="number" class="form-control" id="InputSalario" placeholder="0000.00">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="InputContratacion">Fecha de Contratación</label>
                            <input type="date" class="form-control" id="InputContratacion" >
                        </div>
                        <div class="form-group">
                            <label for="InputDepartamento">Departamento</label>
                            <select class="form-control" id="InputDepartamento">
                                <option value="Diseño">Diseño</option>
                                <option value="Hidráulico">Hidráulico</option>
                                <option value="Eléctrico">Eléctrico</option>
                                <option value="Estructura">Estructura</option>
                                <option value="Administrativo">Administrativo</option>
                              </select>
                        </div>
                        <div class="form-group">
                            <label for="InputUsuario">Usuario</label>
                            <input type="text" class="form-control" id="InputUsuario" placeholder="Usuario">
                        </div>
                        <div class="form-group">
                            <label for="InputClave">Contraseña</label>
                            <input type="password" class="form-control" id="InputClave" placeholder="Clave">
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
