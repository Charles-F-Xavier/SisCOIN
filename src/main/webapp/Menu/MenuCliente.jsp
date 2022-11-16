<%-- 
    Document   : MenuCliente
    Created on : 26-10-2022, 20:33:15
    Author     : jr972
--%>

<%@page import="model.Cliente"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="model.Producto"%>
<%@page import="java.util.List"%>
<%@page import="service.Dao_Producto"%>
<%@page import="db.ConexionSingleton"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Cliente oCliente = (Cliente) session.getAttribute("Cliente");
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
        <link rel="stylesheet" href="../Bootstrap/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
        <link rel="icon" href="../Img/icon.png">
        <link rel="stylesheet" href="../Css/styleWeb.css"/>
        <link rel="stylesheet" href="../Css/sidebar.css"/>
        <link rel="stylesheet" href="../Css/styleCards.css"/>
        <link rel="stylesheet" href="../Css/styleUniversal.css"/>
        <link href="../Css/styleOffcanvas.css" rel="stylesheet">
    </head>
    <body>
        <div class="d-flex flex-column flex-shrink-0 sidebar close">
            <header>
                <div class="logo-details">
                    <img class="p-2" src="../Img/iconBack.png" width="50" height="50">
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
                        <li><a class="link_name" href="#">Inicio</a></li>
                    </ul>
                </li>
                <li>
                    <div class="iocn-link">
                        <a href="">
                            <i class="bi bi-stars"></i>
                            <span class="link_name">Productos de limpieza</span>
                        </a>
                    </div>
                    <ul class="sub-menu">
                        <li><a class="link_name" href="">Productos de limpieza</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class='bi bi-house'></i>
                        <span class="link_name">Hogar</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="#">Hogar</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-wind'></i>
                        <span class="link_name">Perfumes</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="#">Perfumes</a></li>
                    </ul>
                </li>
                <li>
                    <div class="iocn-link">
                        <a href="#">
                            <i class="bi bi-gift"></i>
                            <span class="link_name">Sorpresas</span>
                        </a>
                    </div>
                    <ul class="sub-menu">
                        <li><a class="link_name" href="#">Sorpresas</a></li>
                    </ul>
                </li>
                <li>
                    <div class="iocn-link">
                        <a href="SuperAdmin/Agenda.jsp">
                            <i class='bx bx-closet'></i>
                            <span class="link_name">Vestuario</span>
                        </a>
                    </div>
                    <ul class="sub-menu">
                        <li><a class="link_name" href="#">Vestuario</a></li>
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
                            <div class="profile_name"><% out.print(oCliente.getNombre()); %></div>
                        </div>
                        <a href="../ControllerLogOut.do"><i class='bx bx-log-out perfil'></i></a>
                    </div>
                </li>
            </ul>
        </div>
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
                <div class="d-lg-block d-none" style="padding-left: 40%">
                    <a class="navbar-brand" href="#">
                        <span class="text-white">Local Cholito</span>
                        <img src="../Img/iconBack.png" alt="No disponible">
                    </a>
                </div>
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#staticBackdrop" aria-controls="staticBackdrop" aria-expanded="false" aria-label="Toggle navigation">
                    <i class='bx bx-menu text-white' style="font-size: 40px;"></i>
                </button>
                <div class="d-lg-none d-md-block d-block" style="margin-right: 50px;">
                    <a class="navbar-brand" href="#">
                        <img src="../Img/iconBack.png" alt="No disponible" width="30" height="30">
                        <span class="text-white">Local Cholito</span>
                    </a>
                </div>
                <div class="offcanvas offcanvas-start" style="background-color: #5a4bac" data-bs-backdrop="static" tabindex="-1" id="staticBackdrop" aria-labelledby="staticBackdropLabel">
                    <div class="offcanvas-header">
                        <a class="navbar-brand" href="#">
                            <img src="../Img/iconBack.png" alt="No disponible" width="30" height="30">
                            <span class="text-white">Local Cholito</span>
                        </a>
                        <button type="button" class="btn-close text-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 d-lg-none d-block nav-links">
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="#">
                                    <i class='bx bx-home-smile'></i>
                                    <span class="link_name">Inicio</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="#">
                                    <i class="bi bi-stars"></i>
                                    <span class="link_name">Productos de limpieza</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="#">
                                    <i class='bi bi-house'></i>
                                    <span class="link_name">Hogar</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="#">
                                    <i class='bx bx-wind'></i>
                                    <span class="link_name">Perfumes</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="#">
                                    <i class="bi bi-gift"></i>
                                    <span class="link_name">Sorpresas</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white" aria-current="page" href="#">
                                    <i class='bx bx-closet'></i>
                                    <span class="link_name">Vestuario</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active text-white btn-primary rounded-2" aria-current="page" data-bs-toggle="modal" data-bs-target="#carritoModal">
                                    <i class='bi bi-cart3'></i>
                                    <span class="link_name">Carrito</span>
                                    <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                        2
                                    </span>
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
                                        <div class="profile_name"><% out.print(oCliente.getNombre()); %></div>
                                        <div class="job"></div>
                                    </div>
                                    <a href="Login.jsp"><i class='bx bx-log-out perfil'></i></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="d-lg-block d-md-block d-none profile-nav" style="margin-right: 50px;">
                    <a href="#">
                        <i class='bx bx-user text-white' style="font-size: 30px; transform: translateY(15%)"></i>
                    </a>
                    <span class="text-white mb-2" style="font-size: 24px;"><% out.print(oCliente.getNombre()); %></span>
                </div>
                <div class="d-lg-block d-none" style="margin-right: 50px;">
                    <button class="d-flex btn btn-primary position-relative" type="button" id="liveToastBtn" data-bs-toggle="modal" data-bs-target="#carritoModal">
                        <i class='bi bi-cart3' style="font-size: 22px;"></i>
                        <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                            2
                        </span>
                    </button>
                </div>
            </div>
        </nav>
        <section class="home-section principal">
            <div class="container my-3">
                <div class="row">
                    <div class="col-sm-12 col-md-6 col-lg-6">
                        <div class="modal fade" id="carritoModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="staticBackdropLabel">Carrito de compras</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-sm-12 col-md-6 col-lg-6">
                                                <table class="table" >
                                                    <thead>
                                                        <tr>
                                                            <th>Cant.</th>
                                                            <th></th>
                                                            <th>Producto</th>
                                                            <th>SubTotal</th>
                                                            <th>Eliminar</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody >
                                                        <tr>
                                                            <td>1</td>
                                                            <td><img src="../Img/desinfectante.png" width="100" height="100"></td>
                                                            <td>Desinfectante</td>
                                                            <td>$1.290</td>
                                                            <td><button type="button" class="btn btn-primary" id="deleteTypeUser"><i class="bi bi-trash"></i></button></td>
                                                        </tr>
                                                        <tr>
                                                            <td>3</td>
                                                            <td><img src="../Img/magistral.png" width="100" height="100"></td>
                                                            <td>Lavaplatos</td>
                                                            <td>$4.770</td>
                                                            <td><button type="button" class="btn btn-primary" id="deleteTypeUser"><i class="bi bi-trash"></i></button></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="row justify-content-end">
                                            <div class="col-sm-12 col-md-6 col-lg-6">
                                                <span>Total:</span> <strong>$6.060</strong>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Vaciar Carrito</button>
                                        <button type="button" class="btn btn-primary">Pagar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center m-3">
                    <div class="col-sm-12 col-md-10 col-lg-10">
                        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true" style="z-index: 0">
                            <div class="carousel-indicators" >
                                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                            </div>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="../Img/oferta.jpg" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item">
                                    <img src="../Img/oferta2.png" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item">
                                    <img src="../Img/oferta3.png" class="d-block w-100" alt="...">
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="row row-cols-1 row-cols-md-3 row-cols-lg-6 g-4">
                    <%
                        ConexionSingleton oConexionSingleton = ConexionSingleton.getIntance();

                        Dao_Producto oDao_Producto = new Dao_Producto(oConexionSingleton);
                        List<Producto> oListProduct = oDao_Producto.getAll();
                        DecimalFormat formatter = new DecimalFormat("#,###");
                        for (Producto oProducto : oListProduct) {
                    %>
                    <div class="col">
                        <div class="card" style="height: 400px">
                            <div class="card-header">
                                <img src="../LoadCaratula?id=<%=oProducto.getId()%>" class="card-img-top" alt="no encontrada" >
                            </div>
                            <div class="card-body">
                                <h6 class="card-title" style="font-weight: bold"><%out.print(oProducto.getNombre()); %></h6>
                                <p class="card-text"><% out.print(oProducto.getMarca()); %></p>
                                <div class="row justify-content-around">
                                    <div class="col-sm-12 col-md-6 col-lg-6 text-center">
                                        <span class="text-center">$<% out.print(formatter.format(oProducto.getPrecio())); %></span>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer">
                                <div class="row justify-content-around">
                                    <div class="col-sm-10 col-md-10 col-lg-10">
                                        <div class="d-grid gap-2">
                                            <button class="btn btn-primary" type="button">Agregar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%
                        }
                    %>
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
    <script src="../Bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../Js/sidebarMove.js"></script>
</html>
