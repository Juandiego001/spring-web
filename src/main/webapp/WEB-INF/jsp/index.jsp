<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Spring Web | Estructuras de datos y algoritmos 2</title>
    </head>

    <body>
        <!-- Cabecera de presentación -->
        <header class="w-100 py-4 bg-primary text-light text-center h1 m-0">
            CRUD | Spring Web
            <a href="agregar.htm">Prueba</a>
        </header>        
        
        <!-- Section que contendrá todo el aplicativo -->
        <section class="w-100 bg-light h-100">
            
            <!-- Sección de registro -->
            <div class="w-100 h-25 text-center">
                <h2 class="w-100 h-25 py-5 text-center">Insertar estudiantes</h2>
                <form action="insertarEstudiantes.htm" method="POST" class="row w-100 h-75 m-0 p-0 justify-content-center">
                    <!-- Labels -->
                    <div class="col m-0 p-0">
                        <label class="d-block w-100 h3 text-center mb-4" for="cedula">Cédula</label>
                        <label class="d-block w-100 h3 text-center mb-4" for="codigo">Código</label>
                        <label class="d-block w-100 h3 text-center mb-4" for="nombre">Nombre</label>
                        <label class="d-block w-100 h3 text-center mb-4" for="correo">Correo</label>
                        <label class="d-block w-100 h3 text-center mb-4" for="contrasena">Contraseña</label>
                        <label class="d-block w-100 h3 text-center mb-4" for="telefono">Telefono</label>
                    </div>
                    <!-- Inputs -->
                    <div class="col row m-0 p-0">
                        <input class="row mb-4" type="number" name="cedula" id="cedula" placeholder="1234"/>
                        <input class="row mb-4" type="number" name="codigo" id="codigo" placeholder="1234"/>
                        <input class="row mb-4" type="text" name="nombre" id="nombre" placeholder="Luz Stella"/>
                        <input class="row mb-4" type="text" name="correo" id="correo" placeholder="lmunozc@uao.edu.co"/>
                        <input class="row mb-4" type="password" name="contrasena" id="contrasena" />
                        <input class="row mb-4" type="number" name="telefono" id="telefono" placeholder="3148240798"/>
                    </div>
                    
                    <button class="row btn btn-success display-1" type="submit"><h3>Insertar</h3></button>
                </form>
            </div>
            
            <!-- Sección de lectura -->
            <div class="w-100 h-25 text-center">
                <h2 class="w-100 h-25 py-5 text-center">Listar estudiantes</h2>
                <form action="listarEstudiantes.htm" class="w-100">
                    <button class="w-100 btn btn-success" type="submit"><h3>Listar todos</h3></button>
                </form>
                <div class="row w-100 m-0 p-0 bg-primary">
                    <c:forEach var="dato" items="${lista}" >
                    <div class="row w-100 m-0 p-0 border-bottom border-light">
                        <div class="col py-3">
                            <h3 class="w-100 text-center text-light">Cédula</h3>
                            <h3 class="w-100 text-center text-light">Código</h3>
                            <h3 class="w-100 text-center text-light">Nombre</h3>
                            <h3 class="w-100 text-center text-light">Correo</h3>
                            <h3 class="w-100 text-center text-light">Contrasena</h3>
                            <h3 class="w-100 text-center text-light">Telefono</h3>
                        </div>
                        <div class="col py-3">
                            <h3 class="w-100 text-center text-light">${dato.cedula}</h3>
                            <h3 class="w-100 text-center text-light">${dato.codigo}</h3>
                            <h3 class="w-100 text-center text-light">${dato.nombre}</h3>
                            <h3 class="w-100 text-center text-light">${dato.correo}</h3>
                            <h3 class="w-100 text-center text-light">${dato.contrasena}</h3>
                            <h3 class="w-100 text-center text-light">${dato.telefono}</h3>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
            
            <!-- Sección para actualizar un estudiante por código o por cédula -->
            <div class="w-100 h-25 text-center">
                <h2 class="w-100 h-25 pt-5 text-center">Actualizar estudiantes</h2>
                <p class="w-100 pb-5 text-center px-5">Al digitar la cédula o código, se actualizará el estudiante deseado. Los campos
                    que se dejen en blanco se asumirán como datos que no desean ser actualizados.<br/><b>Si no se contempla código o cédula
                        por favor dejar en 0.</b>
                </p>
                <form action="actualizarEstudiantes.htm" method="POST" class="row w-100 h-75 m-0 p-0 justify-content-center">
                    <div class="col m-0 p-0">
                        <label class="d-block w-100 h3 text-center mb-4 bg-success text-light" for="cedulaActualizar">Cédula</label>
                        <label class="d-block w-100 h3 text-center mb-4 bg-success text-light" for="codigoActualizar">Código</label>
                        <label class="d-block w-100 h3 text-center mb-4" for="nombreActualizar">Nombre</label>
                        <label class="d-block w-100 h3 text-center mb-4" for="correoActualizar">Correo</label>
                        <label class="d-block w-100 h3 text-center mb-4" for="contrasenaActualizar">Contraseña</label>
                        <label class="d-block w-100 h3 text-center mb-4" for="telefonoActualizar">Telefono</label>
                    </div>
                    <!-- Inputs -->
                    <div class="col row m-0 p-0">
                        <input class="row mb-4" type="number" name="cedula" id="cedulaEliminar" placeholder="1234" value="0"/>
                        <input class="row mb-4" type="number" name="codigo" id="codigoActualizar" placeholder="1234" value="0"/>
                        <input class="row mb-4" type="text" name="nombre" id="nombreActualizar" placeholder="Luz Stella"/>
                        <input class="row mb-4" type="text" name="correo" id="correoActualizar" placeholder="lmunozc@uao.edu.co"/>
                        <input class="row mb-4" type="password" name="contrasena" id="contrasenaActualizar" />
                        <input class="row mb-4" type="number" name="telefono" id="telefonoActualizar" placeholder="3148240798"/>
                    </div>
                    <button class="row btn btn-success display-1" type="submit"><h3>Actualizar estudiante</h3></button>
                </form>
            </div>
            
            <!-- Sección para eliminar un estudiante por código o por cédula -->
            <div class="w-100 h-25 text-center">
                <h2 class="w-100 h-25 pt-5 text-center">Eliminar estudiantes</h2>
                <p class="w-100 pb-5 text-center">
                    Para eliminar un estudiante se debe digitar la cédula del mismo o el código.<br/>
                    <b>Si no se contempla código o cédula por favor dejar en 0.</b>
                </p>
                <form action="eliminarEstudiantes.htm" method="POST" class="row w-100 h-75 m-0 p-0 justify-content-center">
                    <div class="col m-0 p-0">
                        <label class="d-block w-100 h3 text-center mb-4" for="cedulaEliminar">Cédula</label>
                        <label class="d-block w-100 h3 text-center mb-4" for="codigoEliminar">Código</label>
                    </div>
                    <!-- Inputs -->
                    <div class="col row m-0 p-0">
                        <input class="row mb-4" type="number" name="cedula" id="cedulaEliminar" value="0" placeholder="1234"/>
                    <input class="row mb-4" type="number" name="codigo" id="codigoEliminar" value="0" placeholder="1234"/>
                    </div>
                    <button class="row btn btn-success display-1" type="submit"><h3>Eliminar estudiante</h3></button>
                </form>
            </div>
            
            
            <!-- Respecto a cursos -->
            <!-- Sección de registro -->
            <div class="w-100 h-25 text-center">
                <h2 class="w-100 h-25 py-5 text-center">Insertar cursos</h2>
                <form action="insertarCursos.htm" method="POST" class="row w-100 h-75 m-0 p-0 justify-content-center">
                    <!-- Labels -->
                    <div class="col m-0 p-0">
                        <label class="d-block w-100 h3 text-center mb-4" for="codigoCurso">Código</label>
                        <label class="d-block w-100 h3 text-center mb-4" for="nombreCurso">Nombre</label>
                        <label class="d-block w-100 h3 text-center mb-4" for="profesor">Nombre profesor</label>
                        <label class="d-block w-100 h3 text-center mb-4" for="programa">Programa</label>
                    </div>
                    <!-- Inputs -->
                    <div class="col row m-0 p-0">
                        <input class="row mb-4" type="number" name="codigo" id="codigoCurso" value="0" placeholder="1234"/>
                        <input class="row mb-4" type="text" name="nombre" id="nombreCurso" placeholder="Estructuras de datos y algoritmos II"/>
                        <input class="row mb-4" type="text" name="nombreProfesor" id="profesor" placeholder="Luz Stella"/>
                        <input class="row mb-4" type="text" name="programa" id="programa" placeholder="Ingeniería informática"/>
                    </div>
                    
                    <button class="row btn btn-success display-1" type="submit"><h3>Insertar</h3></button>
                </form>
            </div>
            
            <!-- Sección de lectura -->
            <div class="w-100 h-25 text-center">
                <h2 class="w-100 h-25 py-5 text-center">Listar cursos</h2>
                <form action="listarCursos.htm" method="GET" class="w-100">
                    <button class="w-100 btn btn-success" type="submit"><h3>Listar todos</h3></button>
                </form>
                <div class="row w-100 m-0 p-0 bg-primary">
                    <c:forEach var="dato" items="${listaCursos}" >
                    <div class="row w-100 m-0 p-0 border-bottom border-light">
                        <div class="col py-3">
                            <h3 class="w-100 text-center text-light">Código</h3>
                            <h3 class="w-100 text-center text-light">Nombre</h3>
                            <h3 class="w-100 text-center text-light">Nombre profesor</h3>
                            <h3 class="w-100 text-center text-light">Programa</h3>
                        </div>
                        <div class="col py-3">
                            <h3 class="w-100 text-center text-light">${dato.codigo}</h3>
                            <h3 class="w-100 text-center text-light">${dato.nombre}</h3>
                            <h3 class="w-100 text-center text-light">${dato.nombreProfesor}</h3>
                            <h3 class="w-100 text-center text-light">${dato.programa}</h3>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
            
            <!-- Sección para actualizar un estudiante por código o por cédula -->
            <div class="w-100 h-25 text-center">
                <h2 class="w-100 h-25 pt-5 text-center">Actualizar cursos</h2>
                <p class="w-100 pb-5 text-center">Al digitar el código del curso, se actualizará el curso deseado. Los campos
                    que se dejen en blanco se asumirán como datos que no desean ser actualizados.
                </p>
                <form action="actualizarCursos.htm" method="POST" class="row w-100 h-75 m-0 p-0 justify-content-center">
                    <div class="col m-0 p-0">
                        <label class="d-block w-100 h3 text-center mb-4 bg-success text-light" for="codigoCursoActualizar">Código</label>
                        <label class="d-block w-100 h3 text-center mb-4" for="nombreCursoActualizar">Nombre</label>
                        <label class="d-block w-100 h3 text-center mb-4" for="profesorActualizar">Profesor</label>
                        <label class="d-block w-100 h3 text-center mb-4" for="programaActualizar">Programa</label>
                    </div>
                    <!-- Inputs -->
                    <div class="col row m-0 p-0">
                        <input class="row mb-4" type="number" name="codigo" id="codigoCursoActualizar" value="0" placeholder="1234"/>
                        <input class="row mb-4" type="text" name="nombre" id="nombreActualizar" placeholder="Estructuras de datos y algoritmos II"/>
                        <input class="row mb-4" type="text" name="nombreProfesor" id="profesorActualizar" placeholder="Luz Stella"/>
                        <input class="row mb-4" type="text" name="programa" id="programaActualizar" placeholder="Ingeniería informática" />
                    </div>
                    <button class="row btn btn-success display-1" type="submit"><h3>Actualizar curso</h3></button>
                </form>
            </div>
            
            <!-- Sección para eliminar un estudiante por código o por cédula -->
            <div class="w-100 h-25 text-center">
                <h2 class="w-100 h-25 py-5 text-center">Eliminar cursos</h2>
                <form action="eliminarCursos.htm" method="POST" class="row w-100 h-75 m-0 p-0 justify-content-center">
                    <div class="col m-0 p-0">
                        <label class="d-block w-100 h3 text-center mb-4" for="codigoCursoEliminar">Código</label>
                    </div>
                    <!-- Inputs -->
                    <div class="col row m-0 p-0">
                        <input class="row mb-4" type="number" name="codigo" id="codigoCursoEliminar" value="0" placeholder="1234"/>
                    </div>
                    <button class="row btn btn-success display-1" type="submit"><h3>Eliminar curso</h3></button>
                </form>
            </div>
        </section>
    </body>
</html>
