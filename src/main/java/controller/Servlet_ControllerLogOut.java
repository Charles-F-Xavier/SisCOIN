/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jr972
 */
@WebServlet(name = "Servlet_ControllerLogOut", urlPatterns = {"/ControllerLogOut.do"})
public class Servlet_ControllerLogOut extends HttpServlet {

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
            
            out.println("</body>");
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
                    + "                        title: 'Sesión Cerrada!',\n"
                    + "                        text: 'Volviendo al Home!',\n"
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
                    + "                         window.location.href = 'index.jsp';\n"
                    + "                        }\n"
                    + "                     });\n"
                    + "                   }\n"
                    + "                });\n"
                    + "            }\n"
                    + "\n"
                    + "        </script>");
            out.print("<script>succes();</script>");
            out.println("</html>");
        }

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
