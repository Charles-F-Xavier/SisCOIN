<%-- 
    Document   : Ofertas
    Created on : 02-11-2022, 12:33:03
    Author     : jr972
--%>

<%@page import="model.Producto"%>
<%@page import="java.util.List"%>
<%@page import="service.Dao_Producto"%>
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
        <link rel="stylesheet" href="../../Css/datepicker.css">
        <link rel="stylesheet" href="../../Css/datatables.min.css"/>
        <link rel="stylesheet" href="../../Css/select.dataTables.min.css"/>
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
                <div class="d-lg-block d-none dropdown-center" style="margin-right: 50px;">
                    <div class="dropstart">
                        <button class="btn btn-primary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="bi bi-bell-fill"></i>
                            <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                3
                                <span class="visually-hidden">unread messages</span>
                            </span>
                        </button>
                        <ul class="dropdown-menu" style="width: 500px;">
                            <li>
                                <div class="card m-2">
                                    <div class="card-header">
                                        <div class="row">
                                            <div class="col-sm-1 col-md-1 col-lg-1">
                                                <img src="../../Img/iconBack.png" alt="no encontrada" width="30" height="30">
                                            </div>
                                            <div class="col-sm-7 col-md-7 col-lg-7">
                                                <strong class="me-auto">Notificación</strong>
                                            </div>
                                            <div class="col-sm-3 col-md-3 col-lg-3">
                                                <small class="text-muted">Reciente</small>
                                            </div>
                                            <div class="col-sm-1 col-md-1 col-lg-1">
                                                <button type="button" class="btn-close" aria-label="Close"></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        Tienes un nuevo pedido
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="card m-2">
                                    <div class="card-header">
                                        <div class="row">
                                            <div class="col-sm-1 col-md-1 col-lg-1">
                                                <img src="../../Img/iconBack.png" alt="no encontrada" width="30" height="30">
                                            </div>
                                            <div class="col-sm-7 col-md-7 col-lg-7">
                                                <strong class="me-auto">Notificación</strong>
                                            </div>
                                            <div class="col-sm-3 col-md-3 col-lg-3">
                                                <small class="text-muted">Hace 15 min.</small>
                                            </div>
                                            <div class="col-sm-1 col-md-1 col-lg-1">
                                                <button type="button" class="btn-close" aria-label="Close"></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        Tienes un nuevo pedido
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="card m-2">
                                    <div class="card-header">
                                        <div class="row">
                                            <div class="col-sm-1 col-md-1 col-lg-1">
                                                <img src="../../Img/iconBack.png" alt="no encontrada" width="30" height="30">
                                            </div>
                                            <div class="col-sm-7 col-md-7 col-lg-7">
                                                <strong class="me-auto">Notificación</strong>
                                            </div>
                                            <div class="col-sm-3 col-md-3 col-lg-3">
                                                <small class="text-muted">Hace 30 min.</small>
                                            </div>
                                            <div class="col-sm-1 col-md-1 col-lg-1">
                                                <button type="button" class="btn-close" aria-label="Close"></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        Tienes un nuevo pedido
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
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
                <div class="d-lg-block d-none dropdown-center" style="margin-right: 50px;">
                    <div class="dropstart">
                        <button class="btn btn-primary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="bi bi-bell-fill"></i>
                            <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                3
                                <span class="visually-hidden">unread messages</span>
                            </span>
                        </button>
                        <ul class="dropdown-menu" style="width: 500px;">
                            <li>
                                <div class="card m-2">
                                    <div class="card-header">
                                        <div class="row">
                                            <div class="col-sm-1 col-md-1 col-lg-1">
                                                <img src="../../Img/iconBack.png" alt="no encontrada" width="30" height="30">
                                            </div>
                                            <div class="col-sm-7 col-md-7 col-lg-7">
                                                <strong class="me-auto">Notificación</strong>
                                            </div>
                                            <div class="col-sm-3 col-md-3 col-lg-3">
                                                <small class="text-muted">Reciente</small>
                                            </div>
                                            <div class="col-sm-1 col-md-1 col-lg-1">
                                                <button type="button" class="btn-close" aria-label="Close"></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        Tienes un nuevo pedido
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="card m-2">
                                    <div class="card-header">
                                        <div class="row">
                                            <div class="col-sm-1 col-md-1 col-lg-1">
                                                <img src="../../Img/iconBack.png" alt="no encontrada" width="30" height="30">
                                            </div>
                                            <div class="col-sm-7 col-md-7 col-lg-7">
                                                <strong class="me-auto">Notificación</strong>
                                            </div>
                                            <div class="col-sm-3 col-md-3 col-lg-3">
                                                <small class="text-muted">Hace 15 min.</small>
                                            </div>
                                            <div class="col-sm-1 col-md-1 col-lg-1">
                                                <button type="button" class="btn-close" aria-label="Close"></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        Tienes un nuevo pedido
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="card m-2">
                                    <div class="card-header">
                                        <div class="row">
                                            <div class="col-sm-1 col-md-1 col-lg-1">
                                                <img src="../../Img/iconBack.png" alt="no encontrada" width="30" height="30">
                                            </div>
                                            <div class="col-sm-7 col-md-7 col-lg-7">
                                                <strong class="me-auto">Notificación</strong>
                                            </div>
                                            <div class="col-sm-3 col-md-3 col-lg-3">
                                                <small class="text-muted">Hace 30 min.</small>
                                            </div>
                                            <div class="col-sm-1 col-md-1 col-lg-1">
                                                <button type="button" class="btn-close" aria-label="Close"></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        Tienes un nuevo pedido
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
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
                <div class="d-lg-block d-none dropdown-center" style="margin-right: 50px;">
                    <div class="dropstart">
                        <button class="btn btn-primary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="bi bi-bell-fill"></i>
                            <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                3
                                <span class="visually-hidden">unread messages</span>
                            </span>
                        </button>
                        <ul class="dropdown-menu" style="width: 500px;">
                            <li>
                                <div class="card m-2">
                                    <div class="card-header">
                                        <div class="row">
                                            <div class="col-sm-1 col-md-1 col-lg-1">
                                                <img src="../../Img/iconBack.png" alt="no encontrada" width="30" height="30">
                                            </div>
                                            <div class="col-sm-7 col-md-7 col-lg-7">
                                                <strong class="me-auto">Notificación</strong>
                                            </div>
                                            <div class="col-sm-3 col-md-3 col-lg-3">
                                                <small class="text-muted">Reciente</small>
                                            </div>
                                            <div class="col-sm-1 col-md-1 col-lg-1">
                                                <button type="button" class="btn-close" aria-label="Close"></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        Tienes un nuevo pedido
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="card m-2">
                                    <div class="card-header">
                                        <div class="row">
                                            <div class="col-sm-1 col-md-1 col-lg-1">
                                                <img src="../../Img/iconBack.png" alt="no encontrada" width="30" height="30">
                                            </div>
                                            <div class="col-sm-7 col-md-7 col-lg-7">
                                                <strong class="me-auto">Notificación</strong>
                                            </div>
                                            <div class="col-sm-3 col-md-3 col-lg-3">
                                                <small class="text-muted">Hace 15 min.</small>
                                            </div>
                                            <div class="col-sm-1 col-md-1 col-lg-1">
                                                <button type="button" class="btn-close" aria-label="Close"></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        Tienes un nuevo pedido
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="card m-2">
                                    <div class="card-header">
                                        <div class="row">
                                            <div class="col-sm-1 col-md-1 col-lg-1">
                                                <img src="../../Img/iconBack.png" alt="no encontrada" width="30" height="30">
                                            </div>
                                            <div class="col-sm-7 col-md-7 col-lg-7">
                                                <strong class="me-auto">Notificación</strong>
                                            </div>
                                            <div class="col-sm-3 col-md-3 col-lg-3">
                                                <small class="text-muted">Hace 30 min.</small>
                                            </div>
                                            <div class="col-sm-1 col-md-1 col-lg-1">
                                                <button type="button" class="btn-close" aria-label="Close"></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        Tienes un nuevo pedido
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <%
            }
        %>
        <section class="home-section principal">
            <div class="container-fluid principal mt-3 ">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12">
                        <div class="modal fade" id="modalAgregar" style="z-index: 1500" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                            <div class="modal-dialog modal-xl">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="staticBackdropLabel">Agregar Oferta</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-sm-12 col-md-6 col-lg-6">
                                                <div class="input-group mb-3">
                                                    <span class="input-group-text" id="basic-addon1">Nombre</span>
                                                    <input type="text" class="form-control" placeholder="Ej. Trapeador" aria-label="Trapeador" aria-describedby="basic-addon1">
                                                </div>
                                            </div>
                                            <div class="col-sm-12 col-md-6 col-lg-6">
                                                <div class="d-grid gap-2">
                                                    <button class="btn btn-primary" type="button">Buscar</button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12 col-md-12 col-lg-12">
                                                <table id="listProductFilter" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                                    <thead>
                                                        <tr>
                                                            <th>#</th>
                                                            <th>Nombre</th>
                                                            <th>Descripción</th>
                                                            <th>Precio Actual</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%
                                                            Dao_Producto oDao_Producto = new Dao_Producto(oConexionSingleton);
                                                            List<Producto> oListProducto = oDao_Producto.getAll();

                                                            for (Producto oProducto : oListProducto) {
                                                        %>
                                                        <tr>
                                                            <td><% out.print(oProducto.getId()); %></td>
                                                            <td><% out.print(oProducto.getNombre()); %></td>
                                                            <td><% out.print(oProducto.getDescripcion()); %></td>
                                                            <td><% out.print(oProducto.getPrecio()); %></td>
                                                        </tr>
                                                        <%
                                                            }
                                                        %>
                                                    </tbody>
                                                </table>
                                                <div id="listProducts">
                                                    <!--Aqui se cargaran los productos con el parametro ingresado-->
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="colsm-12 col-md-6 col-lg-6">
                                                <div class="input-group mb-3">
                                                    <label class="input-group-text" for="inputGroupSelect01">Oferta</label>
                                                    <select class="form-select" id="inputGroupSelect01">
                                                        <option selected>Elija...</option>
                                                        <option value="10">10%</option>
                                                        <option value="25">25%</option>
                                                        <option value="50">50%</option>
                                                        <option value="75">75%</option>
                                                        <option value="90">90%</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12 col-md-6 col-lg-6">
                                                <div class="input-group mb-3 dates">
                                                    <span class="input-group-text" id="basic-addon1">Fecha Inicio</span>
                                                    <input type="text" class="form-control" id="datePicker" aria-label="Username" aria-describedby="basic-addon1">
                                                </div>
                                            </div>
                                            <div class="col-sm-12 col-md-6 col-lg-6">
                                                <div class="input-group mb-3 dates">
                                                    <span class="input-group-text" id="basic-addon1">Fecha Inicio</span>
                                                    <input type="text" class="form-control" id="datePicker" aria-label="Username" aria-describedby="basic-addon1">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                        <button type="button" class="btn btn-primary">Registrar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 mx-4">
                        <div class="card">
                            <div class="card-header text-white" style="background-color: #5a4bac">
                                <div class="row" style="text-align: center; align-items: center">
                                    <!--<div class="col-sm-1 col-md-1 col-lg-1" >
                                        <button type="button" class="btn btn-primary" style="border-radius: 50%; font-size: 25px" data-bs-toggle="modal" data-bs-target="#modalPromo">
                                            <i class='bx bx-package' style="transform: translateY(10%)"></i>
                                        </button>
                                    </div>-->
                                    <div class="col-sm-10 col-md-10 col-lg-11">
                                        <h3>Ofertas Habilitadas</h3>
                                    </div>
                                    <div class="col-sm-1 col-md-1 col-lg-1" >
                                        <button type="button" class="btn btn-primary" style="border-radius: 50%; font-size: 25px" data-bs-toggle="modal" data-bs-target="#modalAgregar">
                                            <i class='bx bx-plus' style="transform: translateY(10%)"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Nombre</th>
                                            <th>Descripción</th>
                                            <th>Precio Actual</th>
                                            <th>Precio Oferta</th>
                                            <th>Stock</th>
                                            <th>Categoria</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th>#</th>
                                            <th>Nombre</th>
                                            <th>Descripción</th>
                                            <th>Precio Actual</th>
                                            <th>Precio Oferta</th>
                                            <th>Stock</th>
                                            <th>Categoria</th>
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
    <script src="../../Bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../../Js/datepicker.js"></script>
    <script src="../../Js/datatables.min.js"></script>
    <script src="../../Js/dataTables.select.min.js"></script>
    <script src="../../Js/pdfmake.min.js"></script>
    <script src="../../Js/vfs_fonts.js"></script>
    <script>
        $(document).ready(function () {
            $('.dates #datePicker').datepicker({
                'format': 'yyyy-mm-dd',
                'autoclose': true
            });
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
                    "select": {
                        "rows": {
                            "1": "1 fila seleccionada",
                            "_": "%d filas seleccionadas"
                        }
                    },
                    "decimal": ",",
                    "thousands": ".",
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

            var table2 = $('#listProductFilter').DataTable({
                "responsive": true,
                "select": true,
                "lengthChange": false,
                "autoWidth": false,
                "buttons": [{
                        text: 'Selec todo',
                        action: function () {
                            table2.rows().select();
                        }
                    },
                    {
                        text: 'Selec 0',
                        action: function () {
                            table2.rows().deselect();
                        }
                    }, 'copy', 'csv', 'excel', 'pdf', 'print'],
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
                    "select": {
                        "rows": {
                            "1": "1 fila seleccionada",
                            "_": "%d filas seleccionadas"
                        }
                    },
                    "decimal": ",",
                    "thousands": ".",
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
            table2.buttons().container().appendTo('#listProductFilter_wrapper .col-md-6:eq(0)');


            $('[data-toggle="tooltip"]').tooltip({
                placement: 'top'
            });
        });

        const body = document.querySelector('body');
        body.onmousemove = function () {
        <%
            session.setMaxInactiveInterval(60 * 60);

        %>
            var x =<%=session.getMaxInactiveInterval()%>;
            console.log("estas moviendo el mouse" + x);
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
