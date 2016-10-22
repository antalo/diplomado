<%-- 
    Document   : cerrar
    Created on : 22/10/2016, 03:46:28 AM
    Author     : LAB104BPC1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<% 
if(session.getAttribute("usuario")!=null){
session.removeAttribute("usuario");
session.removeAttribute("ripo");
session.removeAttribute("persona");
}
response.sendRedirect("login.jsp");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
