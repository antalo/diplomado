<%-- 
    Document   : registropersona
    Created on : 21/10/2016, 02:14:55 AM
    Author     : LAB104BPC1
--%>
<%@page import="BaseDatos.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro Persona</h1>
        <form name="form1" action="" method="POST" >
            <label>Cedula</label>
            <input type="text"  name="cedula" placeholder="Ingrese su cedula" value="<%
        if(request.getParameter("cedula")!=null)
           out.print(request.getParameter("cedula"));%>" required />
            <br>
            <label>Nombre</label>
            <input type="text"  name="nombre" placeholder="Ingrese su nombre" value="<%
        if(request.getParameter("nombre")!=null)
           out.print(request.getParameter("nombre"));%>" />
            <br>
            <label>apellido</label>
            <input type="text"  name="apellido" placeholder="Ingrese su apellido" value="<%
        if(request.getParameter("apellido")!=null)
           out.print(request.getParameter("apellido"));%>" />
            <br>
            <label>direccion</label>
            <input type="text"  name="direccion" placeholder="Ingrese su direccion" value="<%
        if(request.getParameter("direccion")!=null)
           out.print(request.getParameter("direccion"));%>"  />
            <br>
            <label>Telefono</label>
            <input type="text"  name="telefono" placeholder="Ingrese su telefono" value="<%
        if(request.getParameter("telefono")!=null)
           out.print(request.getParameter("telefono"));%>"  />
            <br>
            <label>email</label>
            <input type="text"  name="email" placeholder="Ingrese su correo " <%
        if(request.getParameter("email")!=null)
           out.print(request.getParameter("email"));%> />
            <br>
            <label>Sexo</label>
            F:<input type="radio"  name="sexo" placeholder="Ingrese su cedula" value="Femelino"<% 
                if(request.getParameter("sexo")!=null&&
             request.getParameter("sexo").compareTo("Femelino")==0)
         out.print("checked");
      %> />
            M:<input type="radio"  name="sexo" placeholder="Ingrese su cedula"  value="Masculino"<%
                if(request.getParameter("sexo")!=null&&
             request.getParameter("sexo").compareTo("Masculino")==0)
         out.print("checked");
      %> />
            <br>
            <input type="submit" name="boton" value="Enviar">
        </form>
      <% if(request.getParameter("boton")!=null){
          persona p = new persona();
          if(p.buscar(request.getParameter("cedula"))){
           p.modificar(request.getParameter("cedula"), request.getParameter("nombre"),
                   request.getParameter("apellido"), request.getParameter("direccion"), 
                   request.getParameter("telefono"), request.getParameter("email"),
                   request.getParameter("sexo"));
          out.print("registro modificado");
          }else{
          p.nuevo(request.getParameter("cedula"), request.getParameter("nombre"),
                  request.getParameter("apellido"), request.getParameter("direccion"),
                  request.getParameter("telefono"), request.getParameter("email"), 
                  request.getParameter("sexo"));
           out.print("registro nuevo");
          }
        }%>
            
            
            
    </body>
</html>
