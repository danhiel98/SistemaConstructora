<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Usuario"%>
<%@page import="Datos.Datos"%>
<% 
    session = request.getSession();
    
    if (session.getAttribute("datos") == null){
        Datos datos = new Datos();
        
        request.getSession().setAttribute("datos", datos);
    }
        

    if (session.getAttribute("usuarioActivo") == null)
        response.sendRedirect("./login");
    else
        response.sendRedirect("./principal");
%>
