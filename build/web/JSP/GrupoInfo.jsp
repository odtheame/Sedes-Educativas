<%@page import="Objetos.Grupo"%>
<%@page import="Op.Post"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Información del Grupo</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital@1&family=PT+Sans:wght@400;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="../css/normalize.css">
        <link rel="stylesheet" href="../css/styles.css">
        <link rel="shortcut icon" href="../img/informacion.png">
    </head>

    <body>

        <header class="header">
            <div class="contenedor contenido-header">
                <h1>Información del Grupo</h1>
                <!--<nav class="navegacion-principal">
                    <a href="#">Line Up</a>
                    <a href="#">Galería</a>
                    <a href="#">Boletos</a>
                </nav>-->
            </div>
        </header>

        <div class="contenedor tabla">
            <div class="caracteristicas">
                <h2>Id</h2>
                <h2>Nombre</h2>
                <h2>Sede</h2>
                <h2>Institución</h2>
                <h2>Municipio</h2>
                <h2>N° Grupo</h2>
            </div>
            <ul class="listado">
                <%
                    Post peticion = new Post();
                    String idGrupo = (String) request.getParameter("idGrupo");
                    String sede = (String) request.getParameter("nomSede");
                    String institucion = (String) request.getParameter("nomInst");
                    String municipio = (String) request.getParameter("nomMun");

                    for (Grupo grupo : peticion.logearGrupoDetalle(idGrupo)) {
                %>
                <div class="registro">
                    <a class="boton-registro" type="button">
                        <div class="listado__id">
                            <li>
                                <%=grupo.getId()%>
                            </li>
                        </div>
                        <div class="listado__nombre">
                            <li>
                                <%=grupo.getNombre()%>
                            </li>
                        </div>
                        <div class="listado__sede">
                            <li>
                                <%=sede%>
                            </li>
                        </div>
                        <div class="listado__institucion">
                            <li>
                                <%=institucion%>
                            </li>
                        </div>
                        <div class="listado__municipio">
                            <li>
                                <%=municipio%>
                            </li>
                        </div>
                        <div class="listado__grupo">
                            <li>
                                <%=grupo.getNumGrupo()%>
                            </li>
                        </div>
                    </a>
                </div>
                <%}%>
            </ul>
        </div>
        <style>
            .caracteristicas, .boton-registro{
                grid-template-columns: 1fr 2fr 1fr 1fr 1fr 1fr;
                align-content: center;
                justify-content: center;
            }

        </style>
    </body>

</html>