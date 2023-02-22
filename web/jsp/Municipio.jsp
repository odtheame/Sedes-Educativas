
<%@page import="Objetos.Municipio"%>
<%@page import="Op.Post"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Municipios</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital@1&family=PT+Sans:wght@400;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="../css/normalize.css">
        <link rel="stylesheet" href="../css/styles.css">
        <link rel="shortcut icon" href="../img/municipio.png">
    </head>

    <body>
        <header class="header">
            <div class="contenedor contenido-header">
                <h1>Municipios</h1>
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
                    for (Municipio municipio : peticion.logearMunicipio()) {
                %>
                <div class="registro">
                    <a class="boton-registro" type="button" href="Institucion.jsp?codMun=<%=municipio.getDane()%>&nomMun=<%=municipio.getNombre()%>">
                        <div class="listado__nombre">
                            <li>
                                <%=municipio.getNombre()%>
                            </li>
                        </div>
                        <div class="listado__dane">
                            <li>
                                <%=municipio.getDane()%>
                            </li>
                        </div>
                    </a>
                </div>
                <%}%>
            </ul>
        </div>
        <script type="text/javascript">         
            var currentDirectory = window.location.pathname.substring(0, window.location.pathname.lastIndexOf('/'));
            console.log(currentDirectory);
        </script>
    </body>

</html>
