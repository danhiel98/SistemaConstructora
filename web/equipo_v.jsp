<%@page import="Modelo.Equipo"%>
<%@page import="java.util.ArrayList"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SAC| Equipo</title>
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
                <h1>Equipo</h1>
                <a href="./equipo?opc=crear">Nuevo</a>
            </div>
            <div class="row" style="margin-top: 10px;">
                <div class="col-md-12">
                    <% 
                        ArrayList<Equipo> listaEquipo = datos.getListaEquipo();
                        request.setAttribute("listaEquipo", listaEquipo);
                    %>
                    <c:choose>
                        <c:when test="${listaEquipo.size() > 0}">
                            <table class="table table-bordered">
                                <thead>
                                    <tr class="active">
                                        <th scope="col">Código</th>
                                        <th scope="col">Tipo</th>
                                        <th scope="col">Modelo</th>
                                        <th scope="col">Año</th>
                                        <th scope="col">Valor</th>
                                        <th scope="col">Opciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${listaEquipo}" var="cli">
                                    <tr>
                                        <th scope="row">${ cli.getCodigo() }</th>
                                        <td>${ cli.getTipo() }</td>
                                        <td>${ cli.getModelo() }</td>
                                        <td>${ cli.getAnyo() }</td>
                                        <td>$${ cli.getValor() }</td>
                                        <td>
                                            <div class="btn-group">
                                                <a href="./equipo?opc=editar&id=${ cli.getCodigo() }" type="button" class="btn btn-info btn-sm"><i class="fas fa-edit"></i></a>
                                                <a href="./equipo?opc=eliminar&id=${ cli.getCodigo() }" class="btn btn-sm btn-danger" onclick="return confirm('¿Seguro que desea eliminar el registro?')"><i class="fa fa-trash"></i></a>
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
