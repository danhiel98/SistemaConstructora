package Controlador;

import Datos.Datos;
import Modelo.Equipo;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "EquipoServlet", urlPatterns = {"/equipo"})
public class EquipoServlet extends HttpServlet {
    RequestDispatcher dispatcher;
    Datos datos;
    HttpSession session;
    String param;
    Equipo equipo;
    String codigoOriginal;
    String codigo, tipo, modelo;
    int anyo;
    double valor;

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
                dispatcher = request.getRequestDispatcher("equipo_new.jsp");
                break;
            case "editar":
                codigo = request.getParameter("id");
                equipo = datos.obtenerEquipo(codigo);
                
                if (equipo == null) {
                    response.sendRedirect("clientes?opc=listar");
                    return;
                }
                
                request.setAttribute("equipo", equipo);
                dispatcher = request.getRequestDispatcher("equipo_edit.jsp");
                break;
            case "eliminar":
                codigo = request.getParameter("id");
                equipo = datos.eliminarEquipo(codigo);
                
                if (equipo == null) {
                    response.sendError(HttpServletResponse.SC_NOT_FOUND, "No se encontró el equipo a eliminar");
                    return;
                }
                
                response.sendRedirect("equipo?opc=listar");
                return;
            case "listar":
            default:
                dispatcher = request.getRequestDispatcher("equipo_v.jsp");
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
        if(request.getCharacterEncoding() == null) request.setCharacterEncoding("UTF-8");
        
        session = request.getSession();
        datos = (Datos)request.getSession().getAttribute("datos");
        
        if (request.getParameter("opc") == null) response.sendRedirect("equipo");
        
        param = request.getParameter("opc");
        
        codigo = request.getParameter("codigo");
        tipo = request.getParameter("tipo");
        modelo = request.getParameter("modelo");
        anyo = Integer.parseInt(request.getParameter("anyo"));
        valor = Double.parseDouble(request.getParameter("valor"));
        
        equipo = new Equipo();
        
        equipo.setCodigo(codigo);
        equipo.setTipo(tipo);
        equipo.setModelo(modelo);
        equipo.setAnyo(anyo);
        equipo.setValor(valor);
        
        switch (param) {
            case "registrar":
                datos.agregarEquipo(equipo);
                session.setAttribute("datos", datos);

                response.sendRedirect("equipo");
                break;
            case "actualizar":
                codigoOriginal = request.getParameter("codigoOriginal");
                datos.editarEquipo(codigoOriginal, equipo);
                
                response.sendRedirect("equipo");
                break;
            default:
                response.sendRedirect("equipo?opc=listar");
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
