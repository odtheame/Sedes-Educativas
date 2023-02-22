<%@page import="Objetos.Grupo"%>
<%@page import="Op.Post"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Grupos</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital@1&family=PT+Sans:wght@400;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="../css/normalize.css">
        <link rel="stylesheet" href="../css/styles.css">
        <link rel="shortcut icon" href="../img/grupo.png">

    </head>

    <body>

        <header class="header">
            <div class="contenedor contenido-header">
                <h1>Grupos</h1>
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
                <h2>N° Grupo</h2>
            </div>
            <ul class="listado">
                <%
                    Post peticion = new Post();
                    String codSede = (String) request.getParameter("codSede");
                    String nomMun = (String) request.getParameter("nomMun");
                    String nomInst = (String) request.getParameter("nomInst");
                    String nomSede = (String) request.getParameter("nomSede");
                    for (Grupo grupo : peticion.logearGrupo(codSede)) {
                %>
                <div class="registro">
                    <a class="boton-registro" type="button" href="GrupoInfo.jsp?idGrupo=<%=grupo.getId()%>&nomMun=<%=nomMun%>&nomInst=<%=nomInst%>&nomSede=<%=nomSede%>">
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
                grid-template-columns: 1fr 2fr 1fr;
            }
        </style>
    </body>

</html>