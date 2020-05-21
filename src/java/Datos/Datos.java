package Datos;

import Modelo.Cliente;
import Modelo.Usuario;
import java.io.Serializable;
import java.util.ArrayList;

public class Datos implements Serializable{
    
    private ArrayList<Usuario> listaUsuarios;
    private ArrayList<Cliente> listaClientes;

    public Datos() {
        this.listaClientes = new ArrayList<>();
        this.listaUsuarios = new ArrayList<>();
    }
    
    public int cantidadClientes() {
        return this.listaClientes.size();
    }

    public ArrayList<Usuario> getListaUsuarios() {
        return listaUsuarios;
    }

    public void setListaUsuarios(ArrayList<Usuario> listaUsuarios) {
        this.listaUsuarios = listaUsuarios;
    }

    public ArrayList<Cliente> getListaClientes() {
        return listaClientes;
    }

    public void setListaClientes(ArrayList<Cliente> listaClientes) {
        this.listaClientes = listaClientes;
    }
    
    public void agregarCliente(Cliente cliente){
        this.listaClientes.add(cliente);
    }
    
    public Cliente obtenerCliente(String codigo) {
        Cliente resp = null;
        
        for (Cliente c : this.listaClientes){
            if (c.getCodigo().equals(codigo)){
                resp = c;
                break;
            }
        }
        
        return resp;
    }
    
    public Cliente editarCliente(String codigo, Cliente nuevo) {
        Cliente resp = null;
        
        for (Cliente c : this.listaClientes){
            if (c.getCodigo().equals(codigo)){
                c.setCodigo(nuevo.getCodigo());
                c.setNombre(nuevo.getNombre());
                c.setNombreContacto(nuevo.getNombreContacto());
                c.setTelefonoContacto(nuevo.getTelefonoContacto());
                c.setDireccion(nuevo.getDireccion());
                break;
            }
        }
        
        return resp;
    }
    
    public Cliente eliminarCliente(String codigo){
        Cliente resp = null;
        for (Cliente c : this.listaClientes ){
            if (c.getCodigo().equals(codigo)){
                resp = c;
                listaClientes.remove(c);
                break;
            }
        }
        
        return resp;
    }
}   
