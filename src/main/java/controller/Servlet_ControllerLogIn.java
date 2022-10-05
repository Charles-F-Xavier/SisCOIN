/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import db.ConexionSingleton;
import db.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Usuario;

/**
 *
 * @author jr972
 */
@WebServlet(name = "Servlet_ControllerLogIn", urlPatterns = {"/ControllerLogin.do"})
public class Servlet_ControllerLogIn extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Ingreso</title>");
            out.println("<link rel=\"stylesheet\" href=\"Css/styleWeb.css\"/>");
            out.println("<script src=\"Js/sweetalert2.all.min.js\"></script>");
            out.println("<script src=\"Js/sweetalert2.min.js\"></script>");
            out.println("<link rel=\"stylesheet\" href=\"Css/sweetalert2.min.css\">");
            out.println("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css\" />");
            out.println("</head>");
            out.println("<body>");

            ConexionSingleton oConexionSingleton = ConexionSingleton.getIntance();

            String rut, passw;

            rut = request.getParameter("txt_rut");
            passw = request.getParameter("txt_pass");

            out.println(rut + " " + passw + "<br>");

            Usuario oUsuario = new Usuario();

            oUsuario.setRut(rut);
            oUsuario.setClave(passw);

            DAO oDao = new DAO(oConexionSingleton);

            Usuario oUsuario1 = oDao.isExist(oUsuario);

            out.println("</body>");

            if (oUsuario1 != null) {
                out.print("<script>\n"
                        + "            function succes() {\n"
                        + "                let timerInterval\n"
                        + "                Swal.fire({\n"
                        + "                   timer: 1300,\n"
                        + "                   timerProgressBar: true,\n"
                        + "                   didOpen: () => {\n"
                        + "                         Swal.showLoading()\n"
                        + "                         const b = Swal.getHtmlContainer().querySelector('b')\n"
                        + "                         timerInterval = setInterval(() => {\n"
                        + "                             b.textContent = Swal.getTimerLeft()\n"
                        + "                         }, 100)\n"
                        + "                   },\n"
                        + "                   willClose: () => {\n"
                        + "                         clearInterval(timerInterval)\n"
                        + "                   }\n"
                        + "                }).then((result) => {\n"
                        + "                   if (result.dismiss === Swal.DismissReason.timer) {\n"
                        + "                     Swal.fire({\n"
                        + "                        title: 'Bienvenid@ " + oUsuario1.getNombre() + "!',\n"
                        + "                        text: 'Ingresando al menu principal!',\n"
                        + "                        icon: 'success',\n"
                        + "                        timer: 3000,\n"
                        + "                        timerProgressBar: true,\n"
                        + "                        showClass: {\n"
                        + "                             popup: 'animate__animated animate__fadeInDown'\n"
                        + "                        },\n"
                        + "                        didOpen: () => {\n"
                        + "                              Swal.showLoading()\n"
                        + "                              const b = Swal.getHtmlContainer().querySelector('b')\n"
                        + "                              timerInterval = setInterval(() => {\n"
                        + "                                  b.textContent = Swal.getTimerLeft()\n"
                        + "                              }, 100)\n"
                        + "                        },\n"
                        + "                        willClose: () => {\n"
                        + "                              clearInterval(timerInterval)\n"
                        + "                         window.location.href = 'MenuPrincipal.jsp';\n"
                        + "                        }\n"
                        + "                     });\n"
                        + "                   }\n"
                        + "                });\n"
                        + "            }\n"
                        + "\n"
                        + "        </script>");
                out.println("Hola " + oUsuario1.getNombre());
                /*out.println("<script type=\"text/javascript\">");
                out.println("alert('User or password incorrect');");
                out.println("succes();");
                out.println("</script>");*/
                out.print("<script>succes();</script>");
                HttpSession session=request.getSession();
                session.setAttribute("Usuario", oUsuario1);
                session.setMaxInactiveInterval(60*60);
                /*request.setAttribute("Usuario", oUsuario1);
                request.getRequestDispatcher("MenuPrincipal.jsp").forward(request, response);*/
                //Thread.sleep(1000);

            } else {
                out.print("<script>\n"
                        + "            function error() {\n"
                        + "                let timerInterval\n"
                        + "                Swal.fire({\n"
                        + "                   timer: 1300,\n"
                        + "                   timerProgressBar: true,\n"
                        + "                   didOpen: () => {\n"
                        + "                         Swal.showLoading()\n"
                        + "                         const b = Swal.getHtmlContainer().querySelector('b')\n"
                        + "                         timerInterval = setInterval(() => {\n"
                        + "                             b.textContent = Swal.getTimerLeft()\n"
                        + "                         }, 100)\n"
                        + "                   },\n"
                        + "                   willClose: () => {\n"
                        + "                         clearInterval(timerInterval)\n"
                        + "                   }\n"
                        + "                }).then((result) => {\n"
                        + "                   if (result.dismiss === Swal.DismissReason.timer) {\n"
                        + "                     Swal.fire({\n"
                        + "                        title: 'Alto!',\n"
                        + "                        text: 'Usuario con el Rut: " + oUsuario.getRut() + " no se encuentra! Verificar credenciales',\n"
                        + "                        icon: 'error',\n"
                        + "                        timer: 5000,\n"
                        + "                        timerProgressBar: true,\n"
                        + "                        didOpen: () => {\n"
                        + "                              Swal.showLoading()\n"
                        + "                              const b = Swal.getHtmlContainer().querySelector('b')\n"
                        + "                              timerInterval = setInterval(() => {\n"
                        + "                                  b.textContent = Swal.getTimerLeft()\n"
                        + "                              }, 100)\n"
                        + "                        },\n"
                        + "                        willClose: () => {\n"
                        + "                              clearInterval(timerInterval)\n"
                        + "                         window.location.href = 'index.jsp';\n"
                        + "                        }\n"
                        + "                     });\n"
                        + "                   }\n"
                        + "                });\n"
                        + "            }\n"
                        + "\n"
                        + "        </script>");
                out.println("Hola ");
                out.print("<script>error();</script>");
                out.println("No eres ingeniero");
            }

            out.println("</html>");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
