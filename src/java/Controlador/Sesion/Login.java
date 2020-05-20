package Controlador.Sesion;

import Datos.Sesion;
import Modelo.Departamento;
import Modelo.Usuario;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;


/**
 *
 * @author Daniel García
 */
@WebServlet(name = "Login", urlPatterns = {"/login"})
public class Login extends HttpServlet {
    String usuario, clave; // Parámetros que se enviarán
    RequestDispatcher dispatcher; // Encargado de manejar peticiones y asignarlas a otro recurso
    HttpSession httpSession; // Manejo de la sesión activa
    Usuario usr; // El usuario encontrado
    JSONObject data; // Contiene los datos del archivo JSON en objeto
    JSONObject helper; // Objeto JSON de apoyo

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Cuando se hace una petición GET, se redirecciona a la vista del login
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        dispatcher = request.getRequestDispatcher("/login.jsp");
        dispatcher.forward(request, response);
    }
    
    /**
     * Cuando la petición es POST, se que valida la información corresponda a usuarios existentes
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        RequestDispatcher dispatcher;
        
        String nombreUsuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");
        
        try {
            JSONObject usuario = iniciarSesion(nombreUsuario, clave); // Obtener el valor al validar los datos enviados
            if (usuario == null)
                dispatcher = request.getRequestDispatcher("login");
            else {
                // Crear objeto y asignar los valores encontrados
                usr = new Usuario();    
                usr.setNombre((String) usuario.get("nombre"));
                usr.setApellido((String) usuario.get("apellido"));
                usr.setFechaNacimiento((String) usuario.get("fechaNacimiento"));
                usr.setTelefono((String) usuario.get("telefono"));
                usr.setDireccion((String) usuario.get("direccion"));
                usr.setProfesion((String) usuario.get("profesion"));
                usr.setSalario((double) usuario.get("salario"));
                usr.setFechaContrato((String) usuario.get("fechaContrato"));
                usr.setDepartamento(Departamento.valueOf(usuario.get("departamento").toString().toUpperCase()));
                usr.setNombreUsuario((String) usuario.get("nombreUsuario"));
                
                // Asignar usuario a la sesión
                httpSession = request.getSession();
                httpSession.setAttribute("usuarioActivo", usr);
                response.sendRedirect("principal");
            }
        }
        catch(Exception e){
            out.println("Error: " + e.getMessage());
        }
    }
    
    /**
     * Validar los datos de acceso que se ingresaron
     * 
     * @param usuario
     * @param clave
     * @return
     * @throws Exception 
     */
    private JSONObject iniciarSesion(String usuario, String clave) throws Exception{
        JSONObject usuarioEncontrado = null; // El valor a retornar
        // Obtener la ruta del archivo json (con la información de los usuarios)
        File dir = new File(getServletContext().getRealPath("/"));
        dir = dir.getParentFile().getParentFile();
        // Definir variables para leer el archivo
        JSONParser parser;
        parser = new JSONParser();
        
        // Leer el archivo json y obtener la información correspondiente a los usuarios
        try (BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(dir + "/usuarios.json"), "UTF-8"))){
            Object obj = parser.parse(reader);

            data = (JSONObject)obj;
            JSONArray usuarios = (JSONArray)data.get("usuarios");
            
            // Recorrer la lista de usuario y asignar el valor de respuesta a True si se encuentra el usuario
            for (int i = 0; i < usuarios.size(); i++){
                JSONObject usr = (JSONObject)usuarios.get(i); // Obtener el usuario correspondiente en el arreglo
                // Se valida que los datos coincidan
                boolean existe = usr.get("nombreUsuario").equals(usuario) && usr.get("clave").equals(clave);
                
                if (existe){ // Si encuentra el usuario que se asigne el usuarioo y se detenga el bucle
                    usuarioEncontrado = usr;
                    break;
                }
            }
            
        } catch (Exception e) {
           throw new Exception(e); // Devolver excepción en caso que ocurra un error
        }
        
        if (usuarioEncontrado != null){
            helper = datosEmpleado((long)usuarioEncontrado.get("idEmpleado"), data);
            usuarioEncontrado.putAll(helper);
        }
        
        return usuarioEncontrado; // Devolver la respuesta
    }
    
    /**
     * Obtiene el empleado correspondiente al usuario según su atributo "idEmpleado"
     * @param idEmpleado
     * @param data
     * @return 
     */
    private JSONObject datosEmpleado(long idEmpleado, JSONObject data){
        JSONArray empleados = (JSONArray)data.get("empleados");
        // Recorrer la lista de empleados
        for (int i = 0; i < empleados.size(); i++){
            JSONObject emp = (JSONObject)empleados.get(i); // Obtener el usuario correspondiente en el arreglo
            // Se valida que los datos coincidan
            boolean existe = (long)emp.get("id") == idEmpleado;
            if (existe) return emp;
        }
        
        return null;
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
