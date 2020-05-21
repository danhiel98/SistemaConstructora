<%@page import="Modelo.Empleado"%>
<%@page import="java.util.ArrayList"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SAC| Empleados</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie-edge">
        <link rel="stylesheet" type="text/css" href="src/css/bootstrap.min.css">
        <script src="src/js/all.js"></script>
    </head>
    <body>
        <%@ include file="barra.jsp" %>
        <jsp:useBean id="datos" class="Datos.Datos" scope="session"></jsp:useBean>
        <div class="container" style="margin-top: 75px;">
            <div class="row" style="margin-left: 10px;">
                <h1>Empleados</h1>
                <a href="./empleados?opc=crear">Nuevo</a>
            </div>
            <div class="row" style="margin-top: 10px;">
                <div class="col-md-12">
                    <% 
                        ArrayList<Empleado> listaEmpleados = datos.getListaEmpleados();
                        request.setAttribute("listaEmpleados", listaEmpleados);
                    %>
                    <c:choose>
                        <c:when test="${listaEmpleados.size() > 0}">
                            <table class="table table-bordered">
                                <thead>
                                    <tr class="active">
                                    <th scope="col">Nombre Completo</th>
                                    <th scope="col">Teléfono</th>
                                    <th scope="col">Dirección</th>
                                    <th scope="col">Profesión</th>
                                    <th scope="col">Salario</th>
                                    <th scope="col">Opciones</th>
                                  </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${listaEmpleados}" var="emp">
                                    <tr>
                                        <td>${ emp.getNombreCompleto() }</td>
                                        <td>${ emp.getTelefono() }</td>
                                        <td>${ emp.getDireccion() }</td>
                                        <td>${ emp.getProfesion() }</td>
                                        <td>${ emp.getSalario() }</td>
                                        <td>
                                            <div class="btn-group">
                                                <a href="./empleados?opc=editar&id=${ emp.getId() }" type="button" class="btn btn-info btn-sm"><i class="fas fa-edit"></i></a>
                                                <a href="./empleados?opc=eliminar&id=${ emp.getId() }" class="btn btn-sm btn-danger" onclick="return confirm('¿Seguro que desea eliminar el registro?')"><i class="fa fa-trash"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </c:when>
                        <c:otherwise>
                            <div class="alert alert-warning">
                                No se encontraron registros
                            </div>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
    </body>
    <script src="src/js/sweetalert.min.js"></script>
    <script src="src/js/jquery.min.js"></script>
    <script src="src/js/popper.min.js"></script>     
    <script src="src/js/bootstrap.min.js"></script>
</html>
