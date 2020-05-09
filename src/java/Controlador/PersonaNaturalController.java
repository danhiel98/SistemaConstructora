/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Cliente;
import Modelo.PersonaNatural;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Daniel García
 */
@WebServlet(name = "PersonaNatural", urlPatterns = {"/PersonaNatural"})
public class PersonaNaturalController extends HttpServlet {


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
        try (PrintWriter out = response.getWriter()){
            out.println("<h1>Hola</h1>");
            out.println("<br>");
        }
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
        String nombre = request.getParameter("name");
        String apellido = request.getParameter("lastname");
        String direccion = request.getParameter("address");
        String telefono = request.getParameter("phone");
        
        PersonaNatural cliente;
        if (request.getSession().getAttribute("cliente") == null)
            cliente = new PersonaNatural();
        else
            cliente = (PersonaNatural)request.getSession().getAttribute("cliente");
        
        cliente.setNombre(nombre);
        cliente.setApellido(apellido);
        cliente.setDireccion(direccion);
        cliente.setTelefono(telefono);
        cliente.addClient();
        
        request.getSession().setAttribute("cliente", cliente);
        
        List<PersonaNatural> lista = cliente.listar();
        
        try (PrintWriter out = response.getWriter()){
            for (PersonaNatural cli : lista){
                out.println(cli.getNombre());
                out.println(cli.getApellido());
                out.println(cli.getDireccion());
                out.println(cli.getTelefono());
                out.println("<br>");
            }
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
