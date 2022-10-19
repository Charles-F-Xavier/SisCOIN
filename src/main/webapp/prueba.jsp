<%-- 
    Document   : prueba
    Created on : 12-10-2022, 21:51:34
    Author     : jr972
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
    <script language="javascript">
        var timeoutId = window.setInterval("confirmarSesion()",<%= ((request.getSession().getMaxInactiveInterval()) - 60) * 1000%>);

        function confirmarSesion()
        {
            var maxTimeWait = 60 * 1000;
            var d = new Date();

        <%
            HttpSession nsession = request.getSession(false);

            if (nsession == null) {
        %>
            alert("Su sesión ha expirado por inactividad.");
            parent.window.location.href = "<%= request.getContextPath()%>/login.jsp";
        <%
        } else {
        %>
            if (confirm("Su sesión va expirar por inactividad - Presione el botón 'Aceptar' para extender la sesión, de lo contrario en los próximos sesenta (60) segundos se cerrará la aplicación."))
            {
                var timeDiff = (new Date() - d);
                if (timeDiff > maxTimeWait)
                {
                    alert("Su sesión ha expirado.");
                    parent.window.location.href = "<%= request.getContextPath()%>/login.jsp";
                }
                else
                {
                    keepSessionAlive();
                    window.clearInterval(timeoutId);
                    window.setInterval("confirmarSesion()",<%= ((request.getSession().getMaxInactiveInterval()) - 60) * 1000%>);
                }
            }
            else
            {
                parent.window.location.href = '…/MiServlet';
            }
        <%
            }
        %>
        }
    </script>

    <script src="…/jquery-1.4.2.js" type="text/javascript">
            function keepSessionAlive()
            {
                $.post("keepAliveSession.html");
                alert("keepSessionAlive");
            }
    </script>
</html>
