/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import java.io.IOException;
import java.math.BigInteger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
//import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.HttpRequestHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.HandlerAdapter;
import org.springframework.web.servlet.mvc.SimpleControllerHandlerAdapter;

//import org.springframework.web.servlet.HandlerAdapter;


/**
 *
 * @author JUANDI
 */

@Configuration
@ComponentScan("org.example.web")
@Controller
public class Controlador extends SimpleControllerHandlerAdapter{
    
    Conexion con = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();    
    
    @RequestMapping("/index.htm")
    public ModelAndView home() {
        mav.setViewName("index");
        return mav;
    }
    
    @RequestMapping("/listarEstudiantes.htm")
    public ModelAndView listarEstudiantes() {
        String sql = "SELECT * FROM ESTUDIANTES";
        List datos = jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("index");
        return mav;
    }
    
    @RequestMapping(value = "insertarEstudiantes.htm", method = RequestMethod.POST)
    public ModelAndView insertarEstudiantes(Estudiante es) {
        String sql = "INSERT INTO ESTUDIANTES VALUES(?,?,?,?,?,?)";
        jdbcTemplate.update(sql, es.getCedula(), es.getCodigo(), es.getNombre(), es.getCorreo(), 
                es.getContrasena(), es.getTelefono());
        mav.setViewName("index");
        return mav;
    }
    
    @RequestMapping(value = "actualizarEstudiantes.htm", method = RequestMethod.POST)
    public ModelAndView actualizarEstudiantes(Estudiante est) {        
        
        BigInteger cedula = new BigInteger("0");
        int codigo = 0;
        
        String nombre = est.getNombre();
        String correo = est.getCorreo();
        String contrasena = est.getContrasena();
        BigInteger telefono = est.getTelefono();
        
        String sql = "UPDATE ESTUDIANTES SET nombre = ?, correo = ?, contrasena = ?, telefono = ? WHERE ";
        
        if (est.getCedula().toString() == "0"){
            codigo = est.getCodigo();
            sql = sql + " codigo = ?";
            jdbcTemplate.update(sql, nombre, correo, 
                contrasena, telefono, codigo);
        } else {
            cedula = est.getCedula();
            sql = sql + " cedula = ?";
            jdbcTemplate.update(sql, nombre, correo, 
                contrasena, telefono, cedula);
        }
        
        mav.setViewName("index");
        return mav;
    }
    
    @RequestMapping(value = "eliminarEstudiantes.htm", method = RequestMethod.POST)
    public ModelAndView eliminarEstudiantes(Estudiante est){
        BigInteger cedula = new BigInteger("0");
        int codigo = 0;
        
        String sql = "DELETE FROM ESTUDIANTES WHERE ";
        
        if (est.getCedula().toString() == "0"){
            codigo = est.getCodigo();
            sql = sql + "codigo = " + codigo;
            jdbcTemplate.execute(sql);
        } else {
            cedula = est.getCedula();
            sql = sql + "cedula = " + cedula;
            jdbcTemplate.execute(sql);
        }
        
        mav.setViewName("index");
        return mav;
    }
    
    @RequestMapping("/listarCursos.htm")
    public ModelAndView listarCursos() {
        String sql = "SELECT * FROM CURSOS";
        List datos = jdbcTemplate.queryForList(sql);
        mav.addObject("listaCursos", datos);
        mav.setViewName("index");
        return mav;
    }
    
    @RequestMapping(value = "insertarCursos.htm", method = RequestMethod.POST)
    public ModelAndView insertarCursos(Curso cur) {
        String sql = "INSERT INTO CURSOS VALUES(?,?,?,?)";
        jdbcTemplate.update(sql, cur.getCodigo(), cur.getNombre(),
                cur.getNombreProfesor(), cur.getPrograma());
        mav.setViewName("index");
        return mav;
    }
    
    @RequestMapping(value = "actualizarCursos.htm", method = RequestMethod.POST)
    public ModelAndView actualizarCursos(Curso cur) {
        
        BigInteger codigo = cur.getCodigo();
        String nombre = cur.getNombre();
        String nombreProfesor = cur.getNombreProfesor();
        String programa = cur.getPrograma();
        
        String sql = "UPDATE CURSOS SET nombre = ?, nombreProfesor = ?, programa = ? WHERE codigo = ?";
        
        jdbcTemplate.update(sql, nombre, nombreProfesor, programa, codigo);
        mav.setViewName("index");
        return mav;
    }
    
    @RequestMapping(value = "eliminarCursos.htm", method = RequestMethod.POST)
    public ModelAndView eliminarCursos(Curso cur){
        
        BigInteger codigo = cur.getCodigo();
        String sql = "DELETE FROM CURSOS WHERE codigo = ?";
        jdbcTemplate.update(sql, codigo);
        mav.setViewName("index");
        return mav;
    }
    
}
