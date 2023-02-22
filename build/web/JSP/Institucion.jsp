
<%@page import="Objetos.Institucion"%>
<%@page import="Op.Post"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Instituciones</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital@1&family=PT+Sans:wght@400;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="../css/normalize.css">
        <link rel="stylesheet" href="../css/styles.css">
        <link rel="shortcut icon" href="../img/institucion.png">
    </head>

    <body>
        <header class="header">
            <div class="contenedor contenido-header">
                <h1>Instituciones</h1>
                <!--<nav class="navegacion-principal">
                    <a href="#">Line Up</a>
                    <a href="#">Galería</a>
                    <a href="#">Boletos</a>
                </nav>-->
            </div>
        </header>

        <div class="contenedor tabla">
            <div class="caracteristicas">
                <h2>Nombre</h2>
                <h2>Dane</h2>
            </div>
            <ul class="listado">
                <%
                    Post peticion = new Post();
                    String codMun = (String) request.getParameter("codMun");
                    String nomMun = (String) request.getParameter("nomMun");
                    for (Institucion institucion : peticion.logearInstitucion(codMun)) {
                %>
                <div class="registro">
                    <a class="boton-registro" type="button" href="Sede.jsp?codInst=<%=institucion.getDane()%>&nomMun=<%=nomMun%>&nomInst=<%=institucion.getNombre()%>">
                        <div class="listado__nombre">
                            <li>
                                <%=institucion.getNombre()%>
                            </li>
                        </div>
                        <div class="listado__dane">
                            <li>
                                <%=institucion.getDane()%>
                            </li>
                        </div>
                    </a>
                </div>
                <%}%>
            </ul>
        </div>
    </body>

</html>