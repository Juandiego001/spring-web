package Controller;

import java.math.BigInteger;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;


public class Estudiante {
    BigInteger cedula;
    int codigo;
    String nombre;
    String correo;
    String contrasena;
    BigInteger telefono;

    public Estudiante() {
    }

    public Estudiante(BigInteger cedula, int codigo) {
        this.cedula = cedula;
        this.codigo = codigo;
    }
    
    public Estudiante(BigInteger cedula, int codigo, String nombre, String correo, String contrasena, BigInteger telefono) {
        this.cedula = cedula;
        this.codigo = codigo;
        this.nombre = nombre;
        this.correo = correo;
        this.contrasena = contrasena;
        this.telefono = telefono;
    }

    public BigInteger getCedula() {
        return cedula;
    }

    public void setCedula(BigInteger cedula) {
        this.cedula = cedula;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public BigInteger getTelefono() {
        return telefono;
    }

    public void setTelefono(BigInteger telefono) {
        this.telefono = telefono;
    }
    
    
       
}