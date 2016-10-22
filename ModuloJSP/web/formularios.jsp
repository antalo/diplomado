<%-- 
    Document   : formularios
    Created on : 08-oct-2016, 10:07:06
    Author     : Marcel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><% out.print("Hola Mundo"); %></h1>
        <h2><%= "Otro hola..."%></h2>
        <form name="form1" method="get" action="">
            <label>Ingrese valor:</label>
            <input type="text" name="Texto" value="<%
        if(request.getParameter("Texto")!=null)
        {
           out.print(request.getParameter("Texto"));
        }
        %>" placeholder="Ingrese valor"/>
            <input type="submit" name="Boton" value="Aceptar"/>
        </form>
        <%
        if(request.getParameter("Boton")!=null)
        {
           out.print("El usuario ingresó: "+request.getParameter("Texto"));
        }
        %>        
    </body>
</html>
