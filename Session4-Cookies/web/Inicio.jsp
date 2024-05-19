<%-- 
    Document   : Inicio
    Created on : 19 may 2024, 1:56:52 p.m.
    Author     : ReginaCR
--%>

<%
    String cookieName = "visitorName";
    Cookie[] cookies = request.getCookies();
    boolean existeCookie = false;
    for(Cookie cookie : cookies){
        if(cookieName.equals(cookie.getName())){
            existeCookie = true;
        }
    }
    if(existeCookie){
        response.sendRedirect("Visitante.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido</title>
    </head>
    <body>
        <h1>Hola</h1>
        <p>
            Veo que es la primera vez en el sitio.
        </p>
        <form action="<%= getServletContext().getContextPath() %>/Inicio" method="POST">
            <p>
                ¿Cómo te llamas?
                <input type="text" name="nombre"/>
                <input type="submit" value="Responder"/>
            </p>
        </form>
    </body>
</html>
