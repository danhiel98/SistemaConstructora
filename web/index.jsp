<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Usuario"%>
<%@page import="Datos.Sesion"%>
<% 
    session = request.getSession();
    
    if (session.getAttribute("data") == null){
        Sesion data = new Sesion();
        
        Usuario user;
        user = new Usuario();
        
        data.setListaUsuarios(
        new ArrayList<Usuario>() {

        });
    }
        

    if (session.getAttribute("usuarioActivo") == null)
        response.sendRedirect("./login");
    else
        response.sendRedirect("./principal");
%>
