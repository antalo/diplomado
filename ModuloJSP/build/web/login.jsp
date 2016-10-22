<%-- 
    Document   : login
    Created on : 22/10/2016, 02:18:33 AM
    Author     : LAB104BPC1
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="BaseDatos.*"%>
<%@page  session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Inicio de sesion </h1>
        <form name="form1" action="" method="POST">
            <label>Nombre Usuario</label>
            <input type="text" name="usuario" required placeholder="nombre">
            <br /> <br />
            <label>Contraseña</label>
            <input type="password" name="clave" placeholder="contraseña">
            <br /><br />
            <input type="submit" name="boton" value="iniciar">
            
        </form>
        
        <% 
        if(request.getParameter("boton")!=null){
            Statement consulta=null;
            ResultSet rs=null;
            Conectar con =new Conectar();
            consulta=con.conn.createStatement();
            rs=consulta.executeQuery("select * from usuario where nombre='"+request.getParameter("usuario")+"'"
                    + " and clave='"+request.getParameter("clave")+"'");
            
            if(rs.next()){
                session.setAttribute("usuario", rs.getString("nombre"));
                session.setAttribute("tipo", rs.getString("tipo"));
                response.sendRedirect("principal.jsp");
            }else{
            out.print("Nombre de usuario incorrecta");
            }
        }
        
        
        %>
        
    </body>
</html>
