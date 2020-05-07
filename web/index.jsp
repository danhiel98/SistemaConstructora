<%-- 
    Document   : index
    Created on : 05-02-2020, 12:01:17 AM
    Author     : Adonay Campos
--%>

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
        <nav class="navbar  bg-primary navbar-fixed-top" >
                <span class="navbar-brand text-white">SAC</span>
        </nav>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                  
                </div>
                <div class="col-md-4">
                    <div class="panel panel-default"style="margin-top: 75px;">
                        <div class="panel-heading">
                          <h3 class="panel-title text-center">Inicio de Sesión</h3>
                        </div>
                        <div class="panel-body">
                            <h1 class="text-center"><i class="fas fa-user"></i></h1>
                            <form autocomplete="off" action="principal.jsp">
                            <div class="form-group">
                              <label for="usuario">Usuario</label>
                              <input type="text" class="form-control" id="usuario" placeholder="Usuario" >
                            </div>
                            <div class="form-group">
                              <label for="clave">Clave</label>
                              <input type="password" class="form-control" id="clave" placeholder="*****" >
                            </div>
                                
                            <button type="submit" class="btn btn-primary btn-block">Ingresar</button>
                          </form>
                        </div>
                    </div>
                  
                    
                    
                </div>
                <div class="col-md-4">
                  
                </div>
              </div>
            
            
        </div>
    </body>
    <script src="src/js/sweetalert.min.js"></script>
    <script src="src/js/jquery.min.js"></script>
    <script src="src/js/popper.min.js"></script>     
    <script src="src/js/bootstrap.min.js"></script>
</html>
