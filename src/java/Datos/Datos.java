package Datos;

import Modelo.Cliente;
import Modelo.Empleado;
import Modelo.Usuario;
import java.io.Serializable;
import java.util.ArrayList;

public class Datos implements Serializable{
    
    private ArrayList<Empleado> listaEmpleados;
    private ArrayList<Usuario> listaUsuarios;
    private ArrayList<Cliente> listaClientes;

    public Datos() {
        this.listaEmpleados = new ArrayList<>();
        this.listaClientes = new ArrayList<>();
        this.listaUsuarios = new ArrayList<>();
    }
    
    public ArrayList<Empleado> getListaEmpleados() {
        return this.listaEmpleados;
    }
    
    public void agregarEmpleado(Empleado empleado){
        this.listaEmpleados.add(empleado);
    }
    
    public Empleado obtenerEmpleado(int id){
        
        for (Empleado e : this.listaEmpleados) if (e.getId() == id) return e;
        
        return null;
    }
    
    public Empleado obtenerUltimoEmpleado(){
        int cantidad = this.listaEmpleados.size();
        return cantidad > 0 ? this.listaEmpleados.get(--cantidad) : null;
    }
    
    public Empleado editarEmpleado(int id, Empleado nuevo){
        for (Empleado e : this.listaEmpleados){
            if (e.getId() == id){
                e.setNombre(nuevo.getNombre());
                e.setApellido(nuevo.getApellido());
                e.setDireccion(nuevo.getDireccion());
                e.setTelefono(nuevo.getTelefono());
                e.setFechaNacimiento(nuevo.getFechaNacimiento());
                e.setFechaContrato(nuevo.getFechaContrato());
                e.setSalario(nuevo.getSalario());
                e.setProfesion(nuevo.getProfesion());
                e.setDepartamento(nuevo.getDepartamento());
                return e;
            }
        }
        
        return null;
    }
    
    public Empleado eliminarEmpleado(int id){
        for (Empleado e : this.listaEmpleados ){
            if (e.getId() == id){
                listaEmpleados.remove(e);
                return e;
            }
        }
        
        return null;
    }

    public ArrayList<Usuario> getListaUsuarios() {
        return listaUsuarios;
    }

    public ArrayList<Cliente> getListaClientes() {
        return listaClientes;
    }
    
    public void agregarCliente(Cliente cliente){
        this.listaClientes.add(cliente);
    }
    
    public Cliente obtenerCliente(String codigo) {
        for (Cliente c : this.listaClientes) if (c.getCodigo().equals(codigo)) return c;
        
        return null;
    }
    
    public Cliente editarCliente(String codigo, Cliente nuevo) {
        for (Cliente c : this.listaClientes){
            if (c.getCodigo().equals(codigo)){
                c.setCodigo(nuevo.getCodigo());
                c.setNombre(nuevo.getNombre());
                c.setNombreContacto(nuevo.getNombreContacto());
                c.setTelefonoContacto(nuevo.getTelefonoContacto());
                c.setDireccion(nuevo.getDireccion());
                return c;
            }
        }
        
        return null;
    }
    
    public Cliente eliminarCliente(String codigo){
        for (Cliente c : this.listaClientes ){
            if (c.getCodigo().equals(codigo)){
                listaClientes.remove(c);
                return c;
            }
        }
        
        return null;
    }
}   
