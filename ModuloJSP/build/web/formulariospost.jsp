<%-- 
    Document   : formulariospost
    Created on : 08-oct-2016, 10:35:24
    Author     : Marcel
--%>

<%@page import="BaseDatos.Conectar"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Formulario POST</h1>
        <form name="form1" method="post" action="">
            <fieldset>
                <legend>Estado Civil</legend>
                <input type="radio" name="ECivil" value="Soltero" 
      <% if(request.getParameter("ECivil")!=null&&
             request.getParameter("ECivil").compareTo("Soltero")==0)
         out.print("checked");
      %>/>
                <label>Soltero</label>
                <input type="radio" name="ECivil" value="Casado"
           <% if(request.getParameter("ECivil")!=null&&
           request.getParameter("ECivil").compareTo("Casado")==0)
         out.print("checked");
      %>/>
                <label>Casado</label>
                <input type="radio" name="ECivil" value="Divorciado"
      <% if(request.getParameter("ECivil")!=null&&
             request.getParameter("ECivil").compareTo("Divorciado")==0)
         out.print("checked");
      %>/>
                <label>Divorciado</label>
                <input type="radio" name="ECivil" value="Viudo"
        <% if(request.getParameter("ECivil")!=null&&
             request.getParameter("ECivil").compareTo("Viudo")==0)
         out.print("checked");
      %>/>
                <label>Viudo</label>
<br/><label>Gustos:</label>        
<input type="checkbox" name="Deporte" value="Si"/>
<label>Deportes</label>
<input type="checkbox" name="Musica" value="Si"/>
<label>Música</label>
<select name="personas">
    <option value=""></option>
    <% Statement consulta=null;
    ResultSet rs=null;
    Conectar con=new Conectar();
    consulta=con.conn.createStatement();
    String sql="select * from persona order by nombre";
    rs=consulta.executeQuery(sql);
    while(rs.next()){
        out.print("<option value='"+
                rs.getString("Cedula")+"'>"+
                rs.getString("Nombre")+" "+
                 rs.getString("Apellido")+"</option>");
    }
    %>
</select>


<input type="submit" name="Boton" value="Aceptar"/>      
            </fieldset>
        </form>
        <% 
if(request.getParameter("Boton")!=null){
  out.print("Estado Civil: "+request.getParameter("ECivil"));
   if(request.getParameter("Deporte")!=null&&
     request.getParameter("Deporte").compareTo("Si")==0)         
        out.print("Le gusta el deporte");
  if(request.getParameter("Musica")!=null&&
     request.getParameter("Musica").compareTo("Si")==0)         
        out.print("Le gusta la música");  
  out.print("Persona: "+request.getParameter("personas"));
}  %>
    </body>
</html>
