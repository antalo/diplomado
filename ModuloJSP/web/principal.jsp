<%-- 
    Document   : principal
    Created on : 22/10/2016, 03:10:42 AM
    Author     : LAB104BPC1
--%>

<%@page import="BaseDatos.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<% 
if(session.getAttribute("usuario")==null){
    response.sendRedirect("login.jsp");
    return;
}

%>



<!DOCTYPE html>
<html>
    <head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <link rel="stylesheet" href='css/normalize.css'>
  <link rel="stylesheet" href="css/bootstrap.min.css" >
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href='css/font-awesome.min.css'>
    </head>
    <body>
        <h1>Bienvenido <%=session.getAttribute("usuario").toString()%> </h1>
        <a href="cerrar.jsp">salir</a>
        
        <form name="form1" action="" method="POST">
            <input type="text" name="texto" placeholder="Ingrese texto a uscar" 
                   value="<%=request.getParameter("texto")==null?"":request.getParameter("texto")%>"/>
            <input type="submit" name="boton" value="buscar" />
        </form>
            <br />
        
        
        
        
        <table class="table table-striped">
            <tr>
                <td>Cedula</td>
                <td>Nombre</td>
                <td>Apellido</td>
                <td>Direccion</td>
                <td>Telefono</td>
                <td>Email</td>
                <td>Sexo</td>
            </tr>
            <% 
                Statement consulta=null;
                ResultSet rs=null;
                Conectar con =new Conectar();
                String condicion="";
                if(request.getParameter("texto")!=null){
                condicion=request.getParameter("texto");
                }
                consulta=con.conn.createStatement();
                String sql="select * from persona where nombre like '%"+condicion+"%' or apellido like '%"+condicion+"%'  order by apellido";
                rs=consulta.executeQuery(sql);
                String dato="";
                while(rs.next()){
                out.print("<tr><td>"+rs.getString("cedula")+"</td>");
                out.print("<td>"+rs.getString("nombre")+"</td>");
                out.print("<td>"+rs.getString("apellido")+"</td>");
                out.print("<td>"+rs.getString("direccion")+"</td>");
                out.print("<td>"+rs.getString("telefono")+"</td>");
                out.print("<td>"+rs.getString("email")+"</td>");
                dato=rs.getString("sexo")==null?"":rs.getString("sexo");
                out.print("<td>"+dato+"</td></tr>");
                
                        }
            
            %>
            
            
            
        </table>
    </body>
</html>
