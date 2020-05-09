<%-- 
    Document   : Lista
    Created on : 08-may-2020, 21:18:12
    Author     : Daniel García
--%>

<%@page import="Modelo.PersonaNatural"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Cliente"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="cliente" class="Modelo.PersonaNatural" scope="session" />
        
        <% 
            List<PersonaNatural> list = cliente.listar(); 
        %>
        
        <c:forEach items="${cliente.listar()}" var="item">
            ${item.getNombre()}<br>
            ${item.getApellido()}<br>
        </c:forEach>
        
    </body>
</html>
