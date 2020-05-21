/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Datos.Datos;
import Modelo.Empleado;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Daniel García
 */
@WebServlet(name = "EmpleadoServlet", urlPatterns = {"/empleados"})
public class EmpleadoServlet extends HttpServlet {
    RequestDispatcher dispatcher;
    Datos datos;
    HttpSession session;
    int id;
    Empleado empleado, ultimoEmpleado;
    String param;
    String nombre, apellido, telefono, direccion, profesion, fechaNacimiento, fechaContrato;
    Double salario;
    
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
                dispatcher = request.getRequestDispatcher("empleado_new.jsp");
                break;
            case "editar":
                id = Integer.parseInt(request.getParameter("id"));
                empleado = datos.obtenerEmpleado(id);
                
                if (empleado == null) {
                    response.sendRedirect("empleados?opc=listar");
                    return;
                }
                
                request.setAttribute("empleado", empleado);
                dispatcher = request.getRequestDispatcher("empleado_edit.jsp");
                break;
            case "eliminar":
                id = Integer.parseInt(request.getParameter("id"));
                empleado = datos.eliminarEmpleado(id);
                
                if (empleado == null) {
                    response.sendError(HttpServletResponse.SC_NOT_FOUND, "No se encontró el empleado a eliminar");
                    return;
                }
                
                response.sendRedirect("empleados?opc=listar");
                return;
            case "listar":
            default:
                dispatcher = request.getRequestDispatcher("empleado_v.jsp");
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
        
        if (request.getParameter("opc") == null) response.sendRedirect("empleados");
        
        param = request.getParameter("opc");
        
        nombre = request.getParameter("nombre");
        apellido = request.getParameter("apellido");
        fechaNacimiento = request.getParameter("fechaNacimiento");
        fechaContrato = request.getParameter("fechaContrato");
        telefono = request.getParameter("telefono");
        direccion = request.getParameter("direccion");
        profesion = request.getParameter("profesion");
        salario = Double.parseDouble(request.getParameter("salario"));
        
        empleado = new Empleado();
        ultimoEmpleado = datos.obtenerUltimoEmpleado();
        id = 1;
        
        if (ultimoEmpleado != null) id = ultimoEmpleado.getId() + 1;
        
        empleado.setId(id);
        empleado.setNombre(nombre);
        empleado.setApellido(apellido);
        empleado.setTelefono(telefono);
        empleado.setDireccion(direccion);
        empleado.setProfesion(profesion);
        empleado.setFechaContrato(fechaContrato);
        empleado.setFechaNacimiento(fechaNacimiento);
        empleado.setSalario(salario);
        
        switch (param) {
            case "registrar":
                datos.agregarEmpleado(empleado);
                session.setAttribute("datos", datos);

                response.sendRedirect("empleados");
                break;
            case "actualizar":
                id = Integer.parseInt(request.getParameter("id"));
                datos.editarEmpleado(id, empleado);
                
                response.sendRedirect("empleados");
                break;
            default:
                response.sendRedirect("empleados?opc=listar");
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
