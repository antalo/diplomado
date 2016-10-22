<%-- 
    Document   : pagina2
    Created on : 22/10/2016, 06:07:42 PM
    Author     : LAB104BPC1
--%>
<%@page import="BaseDatos.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  String dato=request.getParameter("nombre")==null?"":request.getParameter("nombre"); 
    out.print("Nombre de la Persona:"+dato);
%>

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

                consulta=con.conn.createStatement();
                String sql="select * from persona where nombre like '%"+dato+"%' or apellido like '%"+dato+"%'  order by apellido";
                rs=consulta.executeQuery(sql);
                String datos="";
                while(rs.next()){
                out.print("<tr><td>"+rs.getString("cedula")+"</td>");
                out.print("<td>"+rs.getString("nombre")+"</td>");
                out.print("<td>"+rs.getString("apellido")+"</td>");
                out.print("<td>"+rs.getString("direccion")+"</td>");
                out.print("<td>"+rs.getString("telefono")+"</td>");
                out.print("<td>"+rs.getString("email")+"</td>");
                datos=rs.getString("sexo")==null?"":rs.getString("sexo");
                out.print("<td>"+datos+"</td></tr>");
                
                        }
            
            %>
            
            
            
        </table>