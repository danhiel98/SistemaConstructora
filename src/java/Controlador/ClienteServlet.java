package Controlador;

import Datos.Datos;
import Modelo.Cliente;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ClienteServlet", urlPatterns = {"/clientes"})
public class ClienteServlet extends HttpServlet {
    String param;
    Cliente cliente;
    String codigoOriginal;
    String codigo, nombre, contacto, direccion, telefonoContacto;
    RequestDispatcher dispatcher;
    Datos datos;
    HttpSession session;
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String codigo;
        session = request.getSession();
        datos = (Datos)session.getAttribute("datos");
        
        if (session.getAttribute("usuarioActivo") == null){
            response.sendRedirect("login");
            return;
        }
        
        if (request.getParameter("opc") != null)
            param = request.getParameter("opc");
        
        switch (param){
            case "crear":
                dispatcher = request.getRequestDispatcher("cliente_new.jsp");
                break;
            case "editar":
                codigo = request.getParameter("id");
                cliente = datos.obtenerCliente(codigo);
                
                if (cliente == null) {
                    response.sendRedirect("clientes?opc=listar");
                    return;
                }
                
                request.setAttribute("cliente", cliente);
                dispatcher = request.getRequestDispatcher("cliente_edit.jsp");
                break;
            case "eliminar":
                codigo = request.getParameter("id");
                cliente = datos.eliminarCliente(codigo);
                
                if (cliente == null) {
                    response.sendError(HttpServletResponse.SC_NOT_FOUND, "No se encontró el cliente a eliminar");
                    return;
                }
                
                response.sendRedirect("clientes?opc=listar");
                return;
            case "listar":
            default:
                dispatcher = request.getRequestDispatcher("cliente_v.jsp");
        }
        
        dispatcher.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        if(request.getCharacterEncoding() == null) request.setCharacterEncoding("UTF-8");
        
        session = request.getSession();
        datos = (Datos)request.getSession().getAttribute("datos");
        
        if (request.getParameter("opc") == null) response.sendRedirect("clientes");
        
        param = request.getParameter("opc");
        
        codigo = request.getParameter("codigo");
        nombre = request.getParameter("nombre");
        contacto  = request.getParameter("contacto");
        direccion = request.getParameter("direccion");
        telefonoContacto = request.getParameter("telefonoContacto");
        
        cliente = new Cliente();
        
        cliente.setCodigo(codigo);
        cliente.setNombre(nombre);
        cliente.setNombreContacto(contacto);
        cliente.setDireccion(direccion);
        cliente.setTelefonoContacto(telefonoContacto);
        
        switch (param) {
            case "registrar":
                datos.agregarCliente(cliente);
                session.setAttribute("datos", datos);

                response.sendRedirect("clientes");
                break;
            case "actualizar":
                codigoOriginal = request.getParameter("codigoOriginal");
                datos.editarCliente(codigoOriginal, cliente);
                
                response.sendRedirect("clientes");
                break;
            default:
                response.sendRedirect("clientes?opc=listar");
                break;
        }
    }
    
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
