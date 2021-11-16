/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import java.math.BigInteger;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 *
 * @author JUANDI
 */

public class Curso {
    BigInteger codigo;
    String nombre;
    String nombreProfesor;
    String programa;

    public Curso() {
    }

    public Curso(BigInteger codigo) {
        this.codigo = codigo;
    }

    public Curso(BigInteger codigo, String nombre, String nombreProfesor, String programa) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.nombreProfesor = nombreProfesor;
        this.programa = programa;
    }

    public BigInteger getCodigo() {
        return codigo;
    }

    public void setCodigo(BigInteger codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNombreProfesor() {
        return nombreProfesor;
    }

    public void setNombreProfesor(String nombreProfesor) {
        this.nombreProfesor = nombreProfesor;
    }

    public String getPrograma() {
        return programa;
    }

    public void setPrograma(String programa) {
        this.programa = programa;
    }
    
    
}
