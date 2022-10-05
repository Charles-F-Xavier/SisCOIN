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
        <script src="Js/validarut.js"></script>
        <script src="Js/jquery.rut.js"></script>
    </head>
    <body>
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
                                                                <input type="text" name="txt_rut" onchange="javascript:return Rut(document.datosUser.txt_rut.value);" class="form-control" id="rut" placeholder="Rut">
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
                                                                    <input type="password" autocomplete="off" name="txt_pass" class="form-control passwd" id="floatingInputGroup1" placeholder="Contraseña">
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
        <footer>

        </footer>
        <!--
        <footer class="fixed-bottom d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
            <div class="col-md-4 d-flex align-items-center">
                <a href="/" class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
                    <svg class="bi" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
                </a>
                <span class="mb-3 mb-md-0 text-muted">&copy; 2022 Company, Inc</span>
            </div>
    
            <ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
                <li class="ms-3"><a class="text-muted" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#twitter"/></svg></a></li>
                <li class="ms-3"><a class="text-muted" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#instagram"/></svg></a></li>
                <li class="ms-3"><a class="text-muted" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#facebook"/></svg></a></li>
            </ul>
        </footer>-->
        <script src="Bootstrap/js/bootstrap.js"></script>
    </body>
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
