<%-- 
    Document   : Usuarios
    Created on : 02-11-2022, 00:05:56
    Author     : jr972
--%>

<%@page import="service.Dao_Area"%>
<%@page import="model.Area"%>
<%@page import="java.util.List"%>
<%@page import="service.Dao_Usuario"%>
<%@page import="model.Tipo_User"%>
<%@page import="service.Dao_TipoUser"%>
<%@page import="db.ConexionSingleton"%>
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
        <link rel="stylesheet" href="../../Bootstrap/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
        <link rel="icon" href="../../Img/icon.png">
        <link href="../../Css/sidebar.css" rel="stylesheet">
        <link href="../../Css/styleWeb.css" rel="stylesheet">
        <link href="../../Css/styleOffcanvas.css" rel="stylesheet">
        <link rel="stylesheet" href="../../Css/datatables.min.css"/>

        <link rel="stylesheet" href="../../Css/sweetalert2.min.css"/>
        <link rel="stylesheet" href="../../Css/animate.min.css"/>
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
        <%
            ConexionSingleton oConexionSingleton = ConexionSingleton.getIntance();
            Dao_TipoUser oDao_TipoUser = new Dao_TipoUser(oConexionSingleton);
            Tipo_User oTipo_User = oDao_TipoUser.get(oUsuario.getTipo_user());
            if (oUsuario.getTipo_user() == 1) {
        %>
        <div class="d-flex flex-column flex-shrink-0 sidebar close">
            <header>
                <div class="logo-details">
                    <img class="p-2" src="../../Img/iconBack.png" width="50" height="50">
                    <span class="logo_name text-white">SisCOIN</span>
                </div>
                <i class="bi bi-caret-right-fill toggle"></i>
            </header>
            <hr class="text-white">
            <ul class="nav-links">
                <li>
                    <a href="../MenuPrincipal.jsp">
                        <i class='bx bx-home-smile'></i>
                        <span class="link_name">Inicio</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="../MenuPrincipal.jsp">Inicio</a></li>
                    </ul>
                </li>
                <li>
                    <div class="iocn-link">
                        <a href="BaseDeDatos.jsp">
                            <i class='bx bx-data'></i>
                            <span class="link_name">Base de datos</span>
                        </a>
                        <!--<i class='bx bxs-chevron-down arrow' ></i>-->
                    </div>
                    <ul class="sub-menu">
                        <li><a class="link_name" href="BaseDeDatos.jsp">Base de datos</a></li>
                        <!--<li><a href="#">Web Design</a></li>
                        <li><a href="#">Login Form</a></li>
                        <li><a href="#">Card Design</a></li>-->
                    </ul>
                </li>
                <li>
                    <a href="Productos.jsp">
                        <i class='bx bx-purchase-tag'></i>
                        <span class="link_name">Productos</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="Productos.jsp">Productos</a></li>
                    </ul>
                </li>
                <li>
                    <a href="Ofertas.jsp">
                        <i class='bx bxs-offer'></i>
                        <span class="link_name">Ofertas</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="Ofertas.jsp">Ofertas</a></li>
                    </ul>
                </li>
                <li>
                    <div class="iocn-link">
                        <a href="Pedidos.jsp">
                            <i class='bx bx-package'></i>
                            <span class="link_name">Pedidos</span>
                        </a>
                        <!--<i class='bx bxs-chevron-down arrow' ></i>-->
                    </div>
                    <ul class="sub-menu">
                        <li><a class="link_name" href="Pedidos.jsp">Pedidos</a></li>
                        <!--<li><a href="#">UI Face</a></li>
                        <li><a href="#">Pigments</a></li>
                        <li><a href="#">Box Icons</a></li>-->
                    </ul>
                </li>
                <li>
                    <div class="iocn-link">
                        <a href="Agenda.jsp">
                            <i class='bx bx-calendar-check'></i>
                            <span class="link_name">Agenda</span>
                        </a>
                        <!--<i class='bx bxs-chevron-down arrow' ></i>-->
                    </div>
                    <ul class="sub-menu">
                        <li><a class="link_name" href="Agenda.jsp">Agenda</a></li>
                        <!--<li><a href="#">UI Face</a></li>
                        <li><a href="#">Pigments</a></li>
                        <li><a href="#">Box Icons</a></li>-->
                    </ul>
                </li>
                <li>
                    <a href="Usuarios.jsp">
                        <i class='bx bx-user'></i>
                        <span class="link_name">Usuarios</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="Usuarios.jsp">Usuarios</a></li>
                    </ul>
                </li>
                <li>
                    <a href="Registros.jsp">
                        <i class='bx bx-history'></i>
                        <span class="link_name">Registros</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="Registros.jsp">Registros</a></li>
                    </ul>
                </li>
                <li>
                    <div class="profile-details">
                        <div class="profile-content">
                            <a class="nav-link active text-white" aria-current="page" href="#">
                                <i class='bx bx-user' ></i>
                            </a>
                        </div>
                        <div class="name-job">
                            <div class="profile_name"><% out.print(oUsuario.getNombre()); %></div>
                            <div class="job"><% out.print(oTipo_User.getDetalle());%></div>
                        </div>
                        <a href="../../ControllerLogOut.do"><i class='bx bx-log-out perfil'></i></a>
                    </div>
                </li>
            </ul>
        </div>
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
                <div class="d-lg-block d-none" style="padding-left: 40%">
                    <a class="navbar-brand" href="#">
                        <span class="text-white">Local Cholito</span>
                        <img src="../../Img/iconBack.png" alt="No disponible">
                    </a>
                </div>
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#staticBackdrop" aria-controls="staticBackdrop" aria-expanded="false" aria-label="Toggle navigation">
                    <i class='bx bx-menu text-white' style="font-size: 40px;"></i>
                </button>
                <div class="d-lg-none d-md-block d-block" style="margin-right: 50px;">
                    <a class="navbar-brand" href="#">
                        <img src="../../Img/iconBack.png" alt="No disponible" width="30" height="30">
                        <span class="text-white">Local Cholito</span>
                    </a>
                </div>
                <div class="offcanvas offcanvas-start" style="background-color: #5a4bac" data-bs-backdrop="static" tabindex="-1" id="staticBackdrop" aria-labelledby="staticBackdropLabel">
                    <div class="offcanvas-header">
                        <a class="navbar-brand" href="#">
                            <img src="../../Img/iconBack.png" alt="No disponible" width="30" height="30">
                            <span class="text-white">Local Cholito</span>
                        </a>
                        <button type="button" class="btn-close text-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 d-lg-none d-block nav-links">
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="../MenuPrincipal.jsp">
                                    <i class='bx bx-home-smile'></i>
                                    <span class="link_name">Inicio</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="BaseDeDatos.jsp">
                                    <i class='bx bx-data'></i>
                                    <span class="link_name">Base de datos</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="Productos.jsp">
                                    <i class='bx bx-purchase-tag'></i>
                                    <span class="link_name">Productos</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="Ofertas.jsp">
                                    <i class='bx bxs-offer'></i>
                                    <span class="link_name">Ofertas</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="Agenda.jsp">
                                    <i class='bx bx-calendar-check'></i>
                                    <span class="link_name">Agenda</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="Usuarios.jsp">
                                    <i class='bx bx-user'></i>
                                    <span class="link_name">Usuarios</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="Registros.jsp">
                                    <i class='bx bx-history'></i>
                                    <span class="link_name">Registros</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="Pedidos.jsp">
                                    <i class='bx bx-bell' ></i>
                                    <span class="link_name">Pedidos</span>
                                </a>
                            </li>
                            <li>
                                <div class="profile-details" >
                                    <div class="profile-content">
                                        <a class="nav-link active text-white" aria-current="page" href="#">
                                            <i class='bx bx-user' ></i>
                                        </a>
                                    </div>
                                    <div class="name-job">
                                        <div class="profile_name"><% out.print(oUsuario.getNombre()); %></div>
                                        <div class="job"><% out.print(oTipo_User.getDetalle());%></div>
                                    </div>
                                    <a href="../../ControllerLogOut.do"><i class='bx bx-log-out perfil'></i></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="d-lg-block d-md-block d-none profile-nav" style="margin-right: 50px;">
                    <a href="#">
                        <i class='bx bx-user text-white' style="font-size: 30px; transform: translateY(15%)"></i>
                    </a>
                    <span class="text-white mb-2" style="font-size: 24px;"><% out.print(oUsuario.getNombre()); %></span>
                </div>
                <div class="d-lg-block d-none" style="margin-right: 50px;">
                    <button class="d-flex btn btn-primary position-relative" type="button">
                        <i class='bx bxs-bell' style="font-size: 22px;"></i>
                        <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                            1
                            <span class="visually-hidden">unread messages</span>
                        </span>
                    </button>
                </div>
            </div>
        </nav>

        <%
        } else if (oUsuario.getTipo_user() == 2) {


        %>
        <div class="d-flex flex-column flex-shrink-0 sidebar close">
            <header>
                <div class="logo-details">
                    <img class="p-2" src="../../Img/iconBack.png" width="50" height="50">
                    <span class="logo_name text-white">SisCOIN</span>
                </div>
                <i class="bi bi-caret-right-fill toggle"></i>
            </header>
            <hr class="text-white">
            <ul class="nav-links">
                <li>
                    <a href="../MenuAdmin.jsp">
                        <i class='bx bx-home-smile'></i>
                        <span class="link_name">Inicio</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="../MenuAdmin.jsp">Inicio</a></li>
                    </ul>
                </li>
                <li>
                    <a href="Productos.jsp">
                        <i class='bx bx-purchase-tag'></i>
                        <span class="link_name">Productos</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="Productos.jsp">Productos</a></li>
                    </ul>
                </li>
                <li>
                    <a href="Ofertas.jsp">
                        <i class='bx bxs-offer'></i>
                        <span class="link_name">Ofertas</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="Ofertas.jsp">Ofertas</a></li>
                    </ul>
                </li>
                <li>
                    <div class="iocn-link">
                        <a href="Pedidos.jsp">
                            <i class='bx bx-package'></i>
                            <span class="link_name">Pedidos</span>
                        </a>
                        <!--<i class='bx bxs-chevron-down arrow' ></i>-->
                    </div>
                    <ul class="sub-menu">
                        <li><a class="link_name" href="Pedidos.jsp">Pedidos</a></li>
                        <!--<li><a href="#">UI Face</a></li>
                        <li><a href="#">Pigments</a></li>
                        <li><a href="#">Box Icons</a></li>-->
                    </ul>
                </li>
                <li>
                    <div class="iocn-link">
                        <a href="Agenda.jsp">
                            <i class='bx bx-calendar-check'></i>
                            <span class="link_name">Agenda</span>
                        </a>
                        <!--<i class='bx bxs-chevron-down arrow' ></i>-->
                    </div>
                    <ul class="sub-menu">
                        <li><a class="link_name" href="Sgenda.jsp">Agenda</a></li>
                        <!--<li><a href="#">UI Face</a></li>
                        <li><a href="#">Pigments</a></li>
                        <li><a href="#">Box Icons</a></li>-->
                    </ul>
                </li>
                <li>
                    <a href="Usuarios.jsp">
                        <i class='bx bx-user'></i>
                        <span class="link_name">Usuarios</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="Usuarios.jsp">Usuarios</a></li>
                    </ul>
                </li>
                <li>
                    <a href="Registros.jsp">
                        <i class='bx bx-history'></i>
                        <span class="link_name">Registros</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="Registros.jsp">Registros</a></li>
                    </ul>
                </li>
                <li>
                    <div class="profile-details">
                        <div class="profile-content">
                            <a class="nav-link active text-white" aria-current="page" href="#">
                                <i class='bx bx-user' ></i>
                            </a>
                        </div>
                        <div class="name-job">
                            <div class="profile_name"><% out.print(oUsuario.getNombre()); %></div>
                            <div class="job"><% out.print(oTipo_User.getDetalle());%></div>
                        </div>
                        <a href="../../ControllerLogOut.do"><i class='bx bx-log-out perfil'></i></a>
                    </div>
                </li>
            </ul>
        </div>
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
                <div class="d-lg-block d-none" style="padding-left: 40%">
                    <a class="navbar-brand" href="#">
                        <span class="text-white">Local Cholito</span>
                        <img src="../../Img/iconBack.png" alt="No disponible">
                    </a>
                </div>
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#staticBackdrop" aria-controls="staticBackdrop" aria-expanded="false" aria-label="Toggle navigation">
                    <i class='bx bx-menu text-white' style="font-size: 40px;"></i>
                </button>
                <div class="d-lg-none d-md-block d-block" style="margin-right: 50px;">
                    <a class="navbar-brand" href="#">
                        <img src="../../Img/iconBack.png" alt="No disponible" width="30" height="30">
                        <span class="text-white">Local Cholito</span>
                    </a>
                </div>
                <div class="offcanvas offcanvas-start" style="background-color: #5a4bac" data-bs-backdrop="static" tabindex="-1" id="staticBackdrop" aria-labelledby="staticBackdropLabel">
                    <div class="offcanvas-header">
                        <a class="navbar-brand" href="#">
                            <img src="../../Img/iconBack.png" alt="No disponible" width="30" height="30">
                            <span class="text-white">Local Cholito</span>
                        </a>
                        <button type="button" class="btn-close text-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 d-lg-none d-block nav-links">
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="../MenuPrincipal.jsp">
                                    <i class='bx bx-home-smile'></i>
                                    <span class="link_name">Inicio</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="Productos.jsp">
                                    <i class='bx bx-purchase-tag'></i>
                                    <span class="link_name">Productos</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="Ofertas.jsp">
                                    <i class='bx bxs-offer'></i>
                                    <span class="link_name">Ofertas</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="Agenda.jsp">
                                    <i class='bx bx-calendar-check'></i>
                                    <span class="link_name">Agenda</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="Usuarios.jsp">
                                    <i class='bx bx-user'></i>
                                    <span class="link_name">Usuarios</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="Registros.jsp">
                                    <i class='bx bx-history'></i>
                                    <span class="link_name">Registros</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="Pedidos.jsp">
                                    <i class='bx bx-bell' ></i>
                                    <span class="link_name">Pedidos</span>
                                </a>
                            </li>
                            <li>
                                <div class="profile-details" >
                                    <div class="profile-content">
                                        <a class="nav-link active text-white" aria-current="page" href="#">
                                            <i class='bx bx-user' ></i>
                                        </a>
                                    </div>
                                    <div class="name-job">
                                        <div class="profile_name"><% out.print(oUsuario.getNombre()); %></div>
                                        <div class="job"><% out.print(oTipo_User.getDetalle());%></div>
                                    </div>
                                    <a href="../../ControllerLogOut.do"><i class='bx bx-log-out perfil'></i></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="d-lg-block d-md-block d-none profile-nav" style="margin-right: 50px;">
                    <a href="#">
                        <i class='bx bx-user text-white' style="font-size: 30px; transform: translateY(15%)"></i>
                    </a>
                    <span class="text-white mb-2" style="font-size: 24px;"><% out.print(oUsuario.getNombre()); %></span>
                </div>
                <div class="d-lg-block d-none" style="margin-right: 50px;">
                    <button class="d-flex btn btn-primary position-relative" type="button">
                        <i class='bx bxs-bell' style="font-size: 22px;"></i>
                        <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                            1
                            <span class="visually-hidden">unread messages</span>
                        </span>
                    </button>
                </div>
            </div>
        </nav>
        <%
        } else if (oUsuario.getTipo_user() == 3) {


        %>
        <div class="d-flex flex-column flex-shrink-0 sidebar close">
            <header>
                <div class="logo-details">
                    <img class="p-2" src="../../Img/iconBack.png" width="50" height="50">
                    <span class="logo_name text-white">SisCOIN</span>
                </div>
                <i class="bi bi-caret-right-fill toggle"></i>
            </header>
            <hr class="text-white">
            <ul class="nav-links">
                <li>
                    <a href="#">
                        <i class='bx bx-home-smile'></i>
                        <span class="link_name">Inicio</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="../MenuUser.jsp">Inicio</a></li>
                    </ul>
                </li>
                <li>
                    <a href="Productos.jsp">
                        <i class='bx bx-purchase-tag'></i>
                        <span class="link_name">Productos</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="Productos.jsp">Productos</a></li>
                    </ul>
                </li>
                <li>
                    <a href="Ofertas.jsp">
                        <i class='bx bxs-offer'></i>
                        <span class="link_name">Ofertas</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="Ofertas.jsp">Ofertas</a></li>
                    </ul>
                </li>
                <li>
                    <div class="iocn-link">
                        <a href="Pedidos.jsp">
                            <i class='bx bx-package'></i>
                            <span class="link_name">Pedidos</span>
                        </a>
                        <!--<i class='bx bxs-chevron-down arrow' ></i>-->
                    </div>
                    <ul class="sub-menu">
                        <li><a class="link_name" href="Pedidos.jsp">Pedidos</a></li>
                        <!--<li><a href="#">UI Face</a></li>
                        <li><a href="#">Pigments</a></li>
                        <li><a href="#">Box Icons</a></li>-->
                    </ul>
                </li>
                <li>
                    <div class="iocn-link">
                        <a href="Agenda.jsp">
                            <i class='bx bx-calendar-check'></i>
                            <span class="link_name">Agenda</span>
                        </a>
                        <!--<i class='bx bxs-chevron-down arrow' ></i>-->
                    </div>
                    <ul class="sub-menu">
                        <li><a class="link_name" href="Agenda.jsp">Agenda</a></li>
                        <!--<li><a href="#">UI Face</a></li>
                        <li><a href="#">Pigments</a></li>
                        <li><a href="#">Box Icons</a></li>-->
                    </ul>
                </li>
                <li>
                    <div class="profile-details">
                        <div class="profile-content">
                            <a class="nav-link active text-white" aria-current="page" href="#">
                                <i class='bx bx-user' ></i>
                            </a>
                        </div>
                        <div class="name-job">
                            <div class="profile_name"><% out.print(oUsuario.getNombre()); %></div>
                            <div class="job"><% out.print(oTipo_User.getDetalle());%></div>
                        </div>
                        <a href="../../ControllerLogOut.do"><i class='bx bx-log-out perfil'></i></a>
                    </div>
                </li>
            </ul>
        </div>
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
                <div class="d-lg-block d-none" style="padding-left: 40%">
                    <a class="navbar-brand" href="#">
                        <span class="text-white">Local Cholito</span>
                        <img src="../../Img/iconBack.png" alt="No disponible">
                    </a>
                </div>
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#staticBackdrop" aria-controls="staticBackdrop" aria-expanded="false" aria-label="Toggle navigation">
                    <i class='bx bx-menu text-white' style="font-size: 40px;"></i>
                </button>
                <div class="d-lg-none d-md-block d-block" style="margin-right: 50px;">
                    <a class="navbar-brand" href="#">
                        <img src="../../Img/iconBack.png" alt="No disponible" width="30" height="30">
                        <span class="text-white">Local Cholito</span>
                    </a>
                </div>
                <div class="offcanvas offcanvas-start" style="background-color: #5a4bac" data-bs-backdrop="static" tabindex="-1" id="staticBackdrop" aria-labelledby="staticBackdropLabel">
                    <div class="offcanvas-header">
                        <a class="navbar-brand" href="#">
                            <img src="../../Img/iconBack.png" alt="No disponible" width="30" height="30">
                            <span class="text-white">Local Cholito</span>
                        </a>
                        <button type="button" class="btn-close text-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 d-lg-none d-block nav-links">
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="../MenuUser.jsp">
                                    <i class='bx bx-home-smile'></i>
                                    <span class="link_name">Inicio</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="Productos.jsp">
                                    <i class='bx bx-purchase-tag'></i>
                                    <span class="link_name">Productos</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="Ofertas.jsp">
                                    <i class='bx bxs-offer'></i>
                                    <span class="link_name">Ofertas</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="Agenda.jsp">
                                    <i class='bx bx-calendar-check'></i>
                                    <span class="link_name">Agenda</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="Pedidos.jsp">
                                    <i class='bx bx-bell' ></i>
                                    <span class="link_name">Pedidos</span>
                                </a>
                            </li>
                            <li>
                                <div class="profile-details" >
                                    <div class="profile-content">
                                        <a class="nav-link active text-white" aria-current="page" href="#">
                                            <i class='bx bx-user' ></i>
                                        </a>
                                    </div>
                                    <div class="name-job">
                                        <div class="profile_name"><% out.print(oUsuario.getNombre()); %></div>
                                        <div class="job"><% out.print(oTipo_User.getDetalle());%></div>
                                    </div>
                                    <a href="../../ControllerLogOut.do"><i class='bx bx-log-out perfil'></i></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="d-lg-block d-md-block d-none profile-nav" style="margin-right: 50px;">
                    <a href="#">
                        <i class='bx bx-user text-white' style="font-size: 30px; transform: translateY(15%)"></i>
                    </a>
                    <span class="text-white mb-2" style="font-size: 24px;"><% out.print(oUsuario.getNombre()); %></span>
                </div>
                <div class="d-lg-block d-none" style="margin-right: 50px;">
                    <button class="d-flex btn btn-primary position-relative" type="button">
                        <i class='bx bxs-bell' style="font-size: 22px;"></i>
                        <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                            1
                            <span class="visually-hidden">unread messages</span>
                        </span>
                    </button>
                </div>
            </div>
        </nav>
        <%
            }
        %>
        <section class="home-section principal">
            <div class="container-fluid principal mt-3">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-6">
                        <div class="modal fade" id="addUser" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                            <div class="modal-dialog modal-xl">
                                <form name="datosUser">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title fs-5" id="staticBackdropLabel">Ingreso Usuario</h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-sm-12 col-md-12 col-lg-12">
                                                    <h5>Datos Personales</h5>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12 col-md-6 col-lg-6">
                                                    <div class="input-group mb-3">
                                                        <span class="input-group-text" id="basic-addon1">Rut</span>
                                                        <input type="text" class="form-control" name="txt_rut"  onchange="javascript:return Rut(document.datosUser.txt_rut.value)" id="rut" class="form-control" onkeypress="return (event.charCode >= 48 && event.charCode <= 57) || event.charCode == 107" aria-label="Username" aria-describedby="basic-addon1">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12 col-md-6 col-lg-6">
                                                    <div class="input-group mb-3">
                                                        <span class="input-group-text" id="basic-addon1">Nombres</span>
                                                        <input type="text" class="form-control" name="" aria-label="Username" aria-describedby="basic-addon1">
                                                    </div>
                                                </div>
                                                <div class="col-sm-12 col-md-6 col-lg-6">
                                                    <div class="input-group mb-3">
                                                        <span class="input-group-text" id="basic-addon1">Apellidos</span>
                                                        <input type="text" class="form-control" name="" aria-label="Username" aria-describedby="basic-addon1">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12 col-md-12 col-lg-12">
                                                    <h5>Datos de Contacto</h5>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12 col-md-6 col-lg-6">
                                                    <div class="input-group mb-3">
                                                        <span class="input-group-text" id="basic-addon1">Correo</span>
                                                        <input type="text" class="form-control" name="" id="correo" aria-label="Username" aria-describedby="basic-addon1">

                                                    </div>
                                                    <span id="emailVal"></span>
                                                </div>
                                                <div class="col-sm-12 col-md-6 col-lg-6">
                                                    <div class="input-group mb-3">
                                                        <span class="input-group-text" id="basic-addon1">Telefono</span>
                                                        <input type="text" class="form-control" name="" maxlength="9" aria-label="Username" onkeypress="return (event.charCode >= 48 && event.charCode <= 57)" aria-describedby="basic-addon1">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12 col-md-12 col-lg-12">
                                                    <h5>Seguridad</h5>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12 col-md-6 col-lg-6">
                                                    <div class="input-group mb-3">
                                                        <span class="input-group-text" id="basic-addon1">Clave</span>
                                                        <input type="password" class="form-control passwd" name="" id="correo" aria-label="Username" aria-describedby="basic-addon1">
                                                        <span class="input-group-text">
                                                            <i class="bi bi-eye mostrarPass" style="font-size: 1.5rem; color: #1386ce;"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="col-sm-12 col-md-6 col-lg-6">
                                                    <div class="input-group mb-3">
                                                        <span class="input-group-text" id="basic-addon1">Confirmar Clave</span>
                                                        <input type="password" class="form-control passwd" name=""  aria-label="Username"  aria-describedby="basic-addon1">
                                                        <span class="input-group-text">
                                                            <i class="bi bi-eye mostrarPass" style="font-size: 1.5rem; color: #1386ce;"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12 col-md-12 col-lg-12">
                                                    <h5>Datos Laborales</h5>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12 col-md-6 col-lg-4">
                                                    <div class="input-group mb-3">
                                                        <label class="input-group-text" for="inputGroupSelect01">Area</label>
                                                        <select class="form-select" id="inputGroupSelect01">
                                                            <option selected>Elije una opcion...</option>
                                                            <%
                                                                Dao_Area oDao_Area = new Dao_Area(oConexionSingleton);
                                                                List<Area> oListArea = oDao_Area.getAll();

                                                                for (Area oArea : oListArea) {
                                                            %>
                                                            <option value="<%=oArea.getId()%>"><% out.print(oArea.getDetalle()); %></option>
                                                            <%
                                                                }
                                                            %>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-sm-12 col-md-6 col-lg-4">
                                                    <div class="input-group mb-3">
                                                        <label class="input-group-text" for="inputGroupSelect01">Tipo de Usua.</label>
                                                        <select class="form-select" id="inputGroupSelect01">
                                                            <option selected>Elije una opcion...</option>
                                                            <%
                                                                List<Tipo_User> oListTip = oDao_TipoUser.getAll();

                                                                for (Tipo_User oTipo_User1 : oListTip) {
                                                            %>
                                                            <option value="<%=oTipo_User1.getId()%>"><% out.print(oTipo_User1.getDetalle()); %></option>
                                                            <%
                                                                }
                                                            %>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-sm-12 col-md-6 col-lg-4">
                                                    <div class="input-group mb-3">
                                                        <label class="input-group-text" for="inputGroupSelect01">Cargo</label>
                                                        <select class="form-select" id="inputGroupSelect01">
                                                            <option selected>Elije una opcion...</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                            <button type="button" class="btn btn-primary">Ingresar</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-6">
                        <div class="modal fade" id="editUser" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                            <div class="modal-dialog modal-xl">
                                <form name="datosUser">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title fs-5" id="staticBackdropLabel">Ingreso Usuario</h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-sm-12 col-md-12 col-lg-12">
                                                    <h5>Datos Personales</h5>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12 col-md-6 col-lg-6">
                                                    <div class="input-group mb-3">
                                                        <span class="input-group-text" id="basic-addon1">Rut</span>
                                                        <input type="text" class="form-control" name="txt_rut" disabled onchange="javascript:return Rut(document.datosUser.txt_rut.value)" id="rut" class="form-control" onkeypress="return (event.charCode >= 48 && event.charCode <= 57) || event.charCode == 107" aria-label="Username" aria-describedby="basic-addon1">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12 col-md-6 col-lg-6">
                                                    <div class="input-group mb-3">
                                                        <span class="input-group-text" id="basic-addon1">Nombres</span>
                                                        <input type="text" class="form-control" name="" disabled aria-label="Username" aria-describedby="basic-addon1">
                                                    </div>
                                                </div>
                                                <div class="col-sm-12 col-md-6 col-lg-6">
                                                    <div class="input-group mb-3">
                                                        <span class="input-group-text" id="basic-addon1">Apellidos</span>
                                                        <input type="text" class="form-control" name="" disabled="" aria-label="Username" aria-describedby="basic-addon1">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12 col-md-12 col-lg-12">
                                                    <h5>Datos de Contacto</h5>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12 col-md-6 col-lg-6">
                                                    <div class="input-group mb-3">
                                                        <span class="input-group-text" id="basic-addon1">Correo</span>
                                                        <input type="text" class="form-control" name="" id="correo" aria-label="Username" aria-describedby="basic-addon1">

                                                    </div>
                                                    <span id="emailVal"></span>
                                                </div>
                                                <div class="col-sm-12 col-md-6 col-lg-6">
                                                    <div class="input-group mb-3">
                                                        <span class="input-group-text" id="basic-addon1">Telefono</span>
                                                        <input type="text" class="form-control" name="" maxlength="9" aria-label="Username" onkeypress="return (event.charCode >= 48 && event.charCode <= 57)" aria-describedby="basic-addon1">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12 col-md-12 col-lg-12">
                                                    <h5>Seguridad</h5>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12 col-md-6 col-lg-6">
                                                    <div class="input-group mb-3">
                                                        <span class="input-group-text" id="basic-addon1">Clave</span>
                                                        <input type="password" class="form-control passwd" name="" id="correo" aria-label="Username" aria-describedby="basic-addon1">
                                                        <span class="input-group-text">
                                                            <i class="bi bi-eye mostrarPass" style="font-size: 1.5rem; color: #1386ce;"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="col-sm-12 col-md-6 col-lg-6">
                                                    <div class="input-group mb-3">
                                                        <span class="input-group-text" id="basic-addon1">Confirmar Clave</span>
                                                        <input type="password" class="form-control passwd" name=""  aria-label="Username"  aria-describedby="basic-addon1">
                                                        <span class="input-group-text">
                                                            <i class="bi bi-eye mostrarPass" style="font-size: 1.5rem; color: #1386ce;"></i>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12 col-md-12 col-lg-12">
                                                    <h5>Datos Laborales</h5>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12 col-md-6 col-lg-4">
                                                    <div class="input-group mb-3">
                                                        <label class="input-group-text" for="inputGroupSelect01">Area</label>
                                                        <select class="form-select" id="inputGroupSelect01">
                                                            <option selected>Elije una opcion...</option>
                                                            <%
                                                                for (Area oArea : oListArea) {
                                                            %>
                                                            <option value="<%=oArea.getId()%>"><% out.print(oArea.getDetalle()); %></option>
                                                            <%
                                                                }
                                                            %>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-sm-12 col-md-6 col-lg-4">
                                                    <div class="input-group mb-3">
                                                        <label class="input-group-text" for="inputGroupSelect01">Tipo de Usua.</label>
                                                        <select class="form-select" id="inputGroupSelect01">
                                                            <option selected>Elije una opcion...</option>
                                                            <%
                                                                for (Tipo_User oTipo_User1 : oListTip) {
                                                            %>
                                                            <option value="<%=oTipo_User1.getId()%>"><% out.print(oTipo_User1.getDetalle()); %></option>
                                                            <%
                                                                }
                                                            %>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-sm-12 col-md-6 col-lg-4">
                                                    <div class="input-group mb-3">
                                                        <label class="input-group-text" for="inputGroupSelect01">Cargo</label>
                                                        <select class="form-select" id="inputGroupSelect01">
                                                            <option selected>Elije una opcion...</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                            <button type="button" class="btn btn-primary">Ingresar</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-6">
                        <div class="modal fade" id="deleteUser" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="staticBackdropLabel">Modal title</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        ...
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary">Understood</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-sm-11 col-md-11 col-lg-11 col-xl-11 ">
                        <div class="card">
                            <div class="card-header text-white" style="background-color: #5a4bac">
                                <div class="row" style="text-align: center; align-items: center">
                                    <div class="col-sm-10 col-md-10 col-lg-11">
                                        <h3>Usuarios</h3>
                                    </div>
                                    <div class="col-sm-1 col-md-1 col-lg-1" >
                                        <button type="button" class="btn btn-primary" style="border-radius: 50%; font-size: 25px" data-bs-toggle="modal"  data-bs-target="#addUser">
                                            <i class='bx bx-plus' style="transform: translateY(10%)" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="Agregar"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Rut</th>
                                            <th>Nombre</th>
                                            <th>Apellido</th>
                                            <th>Correo</th>
                                            <th>Telefono</th>
                                            <th>Tipo</th>
                                            <th>Editar</th>
                                            <th>Eliminar</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            Dao_Usuario oDao_Usuario = new Dao_Usuario(oConexionSingleton);

                                            List<Usuario> oListUsuario = oDao_Usuario.getAll();

                                            for (Usuario oUsuario1 : oListUsuario) {
                                                Tipo_User oTipo_User1 = oDao_TipoUser.get(oUsuario1.getTipo_user());
                                        %>
                                        <tr>
                                            <td><% out.print(oUsuario1.getId()); %></td>
                                            <td><% out.print(oUsuario1.getRut()); %></td>
                                            <td><% out.print(oUsuario1.getNombre()); %></td>
                                            <td><% out.print(oUsuario1.getApellido()); %></td>
                                            <td><% out.print(oUsuario1.getCorreo()); %></td>
                                            <td><% out.print(oUsuario1.getTelefono()); %></td>
                                            <td><%  out.print(oTipo_User1.getDetalle());%></td>
                                            <td><button type="button" class="btn btn-primary" data-bs-toggle="modal"  data-bs-target="#editUser"><i class="bi bi-pencil-square"></i></button></td>
                                            <td><button type="button" class="btn btn-primary" data-bs-toggle="modal"  onclick="delUser()"><i class="bi bi-trash"></i></button></td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th>#</th>
                                            <th>Rut</th>
                                            <th>Nombre</th>
                                            <th>Apellido</th>
                                            <th>Correo</th>
                                            <th>Telefono</th>
                                            <th>Tipo</th>
                                            <th>Editar</th>
                                            <th>Eliminar</th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="footer">
            <footer class="d-flex flex-wrap justify-content-between align-items-center mx-5">
                <span class="mb-md-1 text-white" style="font-size: 20px">Camino El Trigal N° 54, Villa Angosta, Requinoa. &nbsp;</span>
                <span class="mb-md-1 text-white" style="font-size: 20px">&copy; 2022 Local Cholito</span>
                <ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
                    <li class="ms-3 ms-lg-5"><a class="text-white" href="#" style="font-size: 25px"><i class="bi bi-instagram" ></i></a></li>
                    <li class="ms-3 ms-lg-5"><a class="text-white" href="#" style="font-size: 25px"><i class="bi bi-facebook" ></i></a></li>
                    <li class="ms-3 ms-lg-5 mx-2"><a class="text-white" href="#" style="font-size: 25px"><i class="bi bi-whatsapp" ></i></a></li>
                </ul>
            </footer>
        </section>
    </body>
    <script src="../../Js/sidebarMove.js"></script>
    <script src="../../Js/validarut.js"></script>
    <script src="../../Js/jquery.rut.js"></script>

    <script src="../../Js/sweetalert2.all.min.js"></script>
    <script src="../../Bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../../Js/datatables.min.js"></script>
    <script src="../../Js/pdfmake.min.js"></script>
    <script src="../../Js/vfs_fonts.js"></script>
    <script>
                                                $(document).ready(function () {
                                                    const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]');
                                                    const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl));

                                                    var table = $('#example').DataTable({
                                                        "responsive": true,
                                                        "buttons": ['copy', 'csv', 'excel', 'pdf', 'print'],
                                                        "lengthChange": false,
                                                        "autoWidth": false,
                                                        "pagingType": 'full_numbers',
                                                        "language": {
                                                            "buttons": {
                                                                "print": "Imprimir",
                                                                "copy": "Copiar",
                                                                "copySuccess": {
                                                                    "1": "Copiada 1 fila al portapapeles",
                                                                    "_": "Copiadas %ds fila al portapapeles"
                                                                },
                                                                "copyTitle": "Copiar al portapapeles",
                                                            },
                                                            "lengthMenu": "Mostrar " + '<select style="backgound-size:5px;"><option value="5">5</option><option value="10">10</option><option value="15">15</option><option value="20">20</option></select>' + " registros por página",
                                                            "zeroRecords": "No se han encontrado registros",
                                                            "info": "Mostrando la página _PAGE_ de _PAGES_",
                                                            "infoEmpty": "No hay registros disponibles",
                                                            "infoFiltered": "(Filtrado de _MAX_ registros totales)",
                                                            "search": "Buscar:",
                                                            "paginate": {
                                                                'first': 'Primero',
                                                                'next': 'Siguiente',
                                                                'previous': 'Anterior',
                                                                'last': 'Ultimo'
                                                            }
                                                        }
                                                    });
                                                    table.buttons().container().appendTo('#example_wrapper .col-md-6:eq(0)');

                                                    $('[data-toggle="tooltip"]').tooltip({
                                                        placement: 'top'
                                                    });
                                                });
                                                function delUser() {
                                                    Swal.fire({
                                                        title: '¿Estas seguro de Borrar esto?',
                                                        text: 'Recuera que no desaparecera por completo, solo se deshabilitara.',
                                                        showDenyButton: true,
                                                        confirmButtonText: 'Borrar',
                                                        denyButtonText: 'Cancelar',
                                                    }).then((result) => {
                                                        /* Read more about isConfirmed, isDenied below */
                                                        if (result.isConfirmed) {
                                                            Swal.fire('Se ha borrado!', '', 'success')
                                                        } else if (result.isDenied) {
                                                            Swal.fire('Ok, No borraremos esto', '', 'info')
                                                        }
                                                    });
                                                }
                                                $(function () {
                                                    $("input#rut").rut({
                                                        formatOn: 'keyup',
                                                        minimumLength: 8, // validar largo mínimo; default: 2
                                                        validateOn: 'change' // si no se quiere validar, pasar null
                                                    });
                                                    var input = document.getElementById('rut');
                                                    input.addEventListener('input', function () {
                                                        if (this.value.length >= 13)
                                                            this.value = this.value.slice(0, 12);
                                                    })
                                                });
                                                passwdShowHide = document.querySelectorAll(".mostrarPass");
                                                passwdFields = document.querySelectorAll(".passwd");


                                                passwdShowHide.forEach(eyeIcon => {
                                                    eyeIcon.addEventListener("click", () => {
                                                        passwdFields.forEach(passwdFields => {
                                                            if (passwdFields.type === "password") {
                                                                passwdFields.type = "text";
                                                                passwdShowHide.forEach(icon => {
                                                                    icon.classList.replace("bi-eye", "bi-eye-slash");
                                                                })
                                                            } else {
                                                                passwdFields.type = "password";
                                                                passwdShowHide.forEach(icon => {
                                                                    icon.classList.replace("bi-eye-slash", "bi-eye");
                                                                })
                                                            }
                                                        })
                                                    })
                                                });
                                                document.getElementById('correo').addEventListener('input', function () {
                                                    campo = event.target;
                                                    valido = document.getElementById('emailVal');
                                                    emailRegex = /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i;
                                                    //Se muestra un texto a modo de ejemplo, luego va a ser un icono

                                                    if (emailRegex.test(campo.value)) {
                                                        valido.innerText = "Correo válido";
                                                    } else {
                                                        valido.innerText = "Correo no válido";
                                                    }
                                                }
                                                );
                                                const body = document.querySelector('body');
                                                body.onmousemove = function () {
        <%
            session.setMaxInactiveInterval(6 * 60);

        %>
                                                    var x =<%=session.getMaxInactiveInterval()%>;
                                                    //console.log("estas moviendo el mouse" + x);
                                                };
                                                var maxtime =<%=session.getMaxInactiveInterval()%>;
                                                function verificarSession() {
                                                    var maxtime =<%=session.getMaxInactiveInterval()%>;
                                                    console.log(maxtime);
                                                    if (maxtime == 1800) {
                                                        console.log("Session destroy");
                                                    }
                                                }
                                                setTimeout(verificarSession, 6000);
                                                verificarSession();
                                                var intervalo = setInterval(verificarSession, maxtime * 100);

    </script>
</html>
