package Datos;

import Modelo.Cliente;
import Modelo.Usuario;
import java.io.Serializable;
import java.util.ArrayList;

public class Sesion implements Serializable{
    
    private ArrayList<Usuario> listaUsuarios;
    private ArrayList<Cliente> listaClientes;

    public Sesion() {
        
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
}   
