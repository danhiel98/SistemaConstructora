/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Daniel García
 */
public class PersonaNatural extends Cliente {
    String apellido;
    
    List<PersonaNatural> clientes = new ArrayList<>();
    
    public PersonaNatural(){
        
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }
    
    public void addClient() {
        clientes.add(this);
    }
    
    public List<PersonaNatural> listar(){
        return this.clientes;
    }
}
