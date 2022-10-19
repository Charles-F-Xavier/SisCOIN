<%-- 
    Document   : index
    Created on : 24-09-2022, 21:53:05
    Author     : jr972
--%>
<%@page import="db.ConexionSingleton"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
        <title>SisCOIN</title>
        <link rel="stylesheet" href="Bootstrap/css/bootstrap.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <link rel="icon" href="Img/icon.png">
        <link rel="stylesheet" href="Css/styleWeb.css"/>

        <script src="Js/sweetalert2.all.min.js"></script>
        <link rel="stylesheet" href="Css/sweetalert2.min.css">
        <style>
            .correct{
                box-shadow: none;
                border: 2px solid red;
            }
            .incorrect{
                box-shadow: none;
                border: 2px solid green;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
                <div class="row justify-content-between">
                    <div class="col-sm-12 col-md-6 col-lg-6">
                        <a class="navbar-brand " href="#">Local Cholito-Abarrotes</a>
                    </div>
                </div>
            </div>
        </nav>
        <%
            /*ConexionSingleton oConexionSingleton = ConexionSingleton.getIntance();

            System.out.println(oConexionSingleton.getConnection());
            //out.print("Hola");*/
        %>
        <div class="container log">
            <div class="row">
                <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
                    <div class="card">
                        <div class="row">
                            <div class="col-sm-12 col-md-12 col-lg-6">
                                <h2 class="text-center text-white m-3">Bienvenid@</h2>
                            </div>
                        </div>
                        <div class="row fondo text-center">
                            <div class="col-sm-12 col-md-12 col-lg-6 d-none d-lg-block d-print-block">
                                <div class="card-body">
                                    <img class="m-2 mb-5" src="Img/1.png" width="400" height="400" alt="alt"/>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-12 col-lg-6">
                                <div class="row">
                                    <div class="col-sm-12 col-md-12 col-lg-12">
                                        <h2 class="h2 text-center m-3">Inicio de Sesion</h2>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-md-12 col-lg-12">
                                        <div class="card-body">
                                            <form class="mx-3" name="datosUser" action="ControllerLogin.do" method="post">
                                                <div class="row">
                                                    <div class="col-sm-12 col-md-12 col-lg-12">
                                                        <div class="my-4">
                                                            <div class="form-floating mb-1">
                                                                <input type="text" name="txt_rut" style="box-shadow: none;" onkeypress="if (event.keyCode < 45 || event.keyCode > 57)
                                                                            event.returnValue = false;" onchange="javascript:return Rut(document.datosUser.txt_rut.value);" class="form-control" id="rut" placeholder="Rut">
                                                                <label for="rut">Rut</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-12 col-md-12 col-lg-12">
                                                        <div class="my-4">
                                                            <div class="input-group mb-3">
                                                                <div class="form-floating">
                                                                    <input type="password" autocomplete="off" style="box-shadow: none;" name="txt_pass" class="form-control passwd" id="floatingInputGroup1" placeholder="Contraseña">
                                                                    <label for="floatingInputGroup1">Contraseña</label>
                                                                </div>
                                                                <span class="input-group-text">
                                                                    <i class="bi bi-eye mostrarPass" style="font-size: 1.5rem; color: #1386ce;"></i>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-12 col-md-12 col-lg-12">
                                                        <div class="d-grid gap-2">
                                                            <button class="btn btn-primary" type="submit">Ingresar</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="fixed-bottom d-flex flex-wrap justify-content-between align-items-center py-3  border-top" style="background-color: white">
            <div class="col-md-4 d-flex align-items-center">
                <a href="/" class="mb-3 me-2 mb-md-0 lh-1">
                    <svg class="bi" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
                </a>
                <span class="mb-3 mb-md-0 " style="font-size: 20px">&copy; 2022 Local Cholito</span>
            </div>
            <ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
                <li class="ms-5"><a class="text-muted" href="#" style="font-size: 25px"><i class="bi bi-instagram" ></i></a></li>
                <li class="ms-5"><a class="text-muted" href="#" style="font-size: 25px"><i class="bi bi-facebook" ></i></a></li>
                <li class="ms-5 mx-5"><a class="text-muted" href="#" style="font-size: 25px"><i class="bi bi-whatsapp" ></i></a></li>
            </ul>
        </footer>
    </body>
    <script src="Js/validarut.js"></script>
    <script src="Js/jquery.rut.js"></script>
    <script src="Bootstrap/js/bootstrap.js"></script>
    <script>
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
    </script>
</html>
