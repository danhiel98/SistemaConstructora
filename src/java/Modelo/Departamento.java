/**
 * Enumerador que contiene la lista de los departamentos de la constructora
 */
package Modelo;

public enum Departamento {
    ADMINISTRACION("Administración"), 
    DISENO("Diseño"),
    HIDRAULICO("Hidráulico"),
    ELECTRICO("Eléctrico"),
    ESTRUCTURA("Estructura");
    
    // Atributo para nombre exacto del departamento
    private String nombre;
    
    // Constructor que recibe el nombre del departamento
    private Departamento(String nombre){
        this.nombre = nombre;
    }
    
    public String getNombre() {
        return this.nombre;
    }
}
