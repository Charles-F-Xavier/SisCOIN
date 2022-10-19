<%-- 
    Document   : MenuPrincipal
    Created on : 30-09-2022, 00:06:44
    Author     : jr972
--%>

<%@page import="model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Usuario oUsuario = (Usuario) session.getAttribute("Usuario");
    //out.print(oUsuario);
    /*int timer = session.getMaxInactiveInterval();
    HttpSession oHttpSession=request.getSession();

    out.println(timer);
    if (timer == 1800) {
        out.println("Cago session");
    }*/
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
        <title>Menu Pincipal</title>
        <link rel="stylesheet" href="Bootstrap/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <link rel="icon" href="Img/icon.png">
        <link rel="stylesheet" href="Css/styleWeb.css"/>
        <link href="Css/sidebar.css" rel="stylesheet">
        <style>
            .bd-placeholder-img {
                font-size: 1.125rem;
                text-anchor: middle;
                -webkit-user-select: none;
                -moz-user-select: none;
                user-select: none;
            }

            @media (min-width: 768px) {
                .bd-placeholder-img-lg {
                    font-size: 3.5rem;
                }
            }
        </style>
    </head>
    <body>
        <div class="d-flex flex-column flex-shrink-0 p-3 text-white " style="background-color: #1386ce;width: 280px; height: 100vh !important">
            <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                <img src="Img/iconBack.png" width="40" height="40" alt="alt" class="ml-3"/>
                <span class="fs-4">SisCOIN</span>
            </a>
            <hr>
            <ul class="nav nav-pills flex-column mb-auto">
                <li class="nav-item m-2">
                    <a href="#" class="nav-link text-white botones" aria-current="page">
                        <svg class="bi me-2" width="16" height="16"><use xlink:href="#home"/></svg>
                        Home
                    </a>
                </li>
                <li class="nav-item m-2">
                    <a href="#" class="nav-link text-white botones">
                        <svg class="bi me-2" width="16" height="16"><use xlink:href="#speedometer2"/></svg>
                        Dashboard
                    </a>
                </li>
                <li class="nav-item m-2">
                    <a href="#" class="nav-link text-white botones">
                        <svg class="bi me-2" width="16" height="16"><use xlink:href="#table"/></svg>
                        Orders
                    </a>
                </li>
                <li class="nav-item m-2">
                    <a href="#" class="nav-link text-white botones">
                        <svg class="bi me-2" width="16" height="16"><use xlink:href="#grid"/></svg>
                        Products
                    </a>
                </li>
                <li class="nav-item m-2">
                    <a href="#" class="nav-link text-white botones">
                        <svg class="bi me-2" width="16" height="16"><use xlink:href="#people-circle"/></svg>
                        Customers
                    </a>
                </li>
            </ul>
            <hr>
            <div class="dropdown">
                <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                    <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2">
                    <strong>mdo</strong>
                </a>
                <ul class="dropdown-menu dropdown-menu-dark text-small shadow" aria-labelledby="dropdownUser1">
                    <li><a class="dropdown-item" href="#">New project...</a></li>
                    <li><a class="dropdown-item" href="#">Settings</a></li>
                    <li><a class="dropdown-item" href="#">Profile</a></li>
                    <li><hr class="dropdown-divider"></li>
                    <li><a class="dropdown-item" href="#">Sign out</a></li>
                </ul>
            </div>
        </div>
    </body>
    <script src="Js/sidebar.js"></script>
    <script src="Bootstrap/js/bootstrap.bundle.min.js"></script>
    <script>
        /*const body = document.querySelector('body');
         body.onmousemove = function () {
         <%
            //session.setMaxInactiveInterval(6*60);

        %>
         var x=<%=session.getMaxInactiveInterval()%>;
         console.log("estas moviendo el mouse"+x);
         };*/
        /*var maxtime =<%=session.getMaxInactiveInterval()%>;
         function verificarSession() {
         var maxtime =<%=session.getMaxInactiveInterval()%>;
         console.log(maxtime);
         if (maxtime == 1800) {
         console.log("Session destroy");
         }
         }
         /*setTimeout(verificarSession, 6000);
         verificarSession();*/
        //var intervalo = setInterval(verificarSession, maxtime * 100);

    </script>
</html>
