
<%@page import="Objetos.Municipio"%>
<%@page import="Op.Post"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesión</title>
        <meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, minimum-scale=1.0">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital@1&family=PT+Sans:wght@400;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/style-index-0.css">
        <link rel="shortcut icon" href="img/inicio.png">
    </head>

    <body class="body">

        <div class="contenedor-formulario">
            <form class="formulario" id="loginForm">
                <div class="intro-formulario">
                    <h2>Iniciar Sesión</h2>
                </div>
                <input type="text" autocomplete="off" placeholder="Usuario" id="user" name="user">
                <input type="password" autocomplete="off" placeholder="Contraseña" id="pwd" name="pwd">
                <input type="button" value="Ingresar" name="btnLogin">
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="js/alertaError.js"></script>
    </body>

</html>