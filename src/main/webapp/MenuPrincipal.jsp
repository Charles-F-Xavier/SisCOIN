<%-- 
    Document   : MenuPrincipal
    Created on : 30-09-2022, 00:06:44
    Author     : jr972
--%>

<%@page import="model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Usuario oUsuario = (Usuario) session.getAttribute("Usuario");
    out.print(oUsuario);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
        <title>Menu Pincipal</title>
        <link rel="stylesheet" href="Bootstrap/css/bootstrap.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <link rel="icon" href="Img/icon.png">
        <link rel="stylesheet" href="Css/styleWeb.css"/>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
