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
}   
