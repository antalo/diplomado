<%-- 
    Document   : listado
    Created on : 22/10/2016, 05:34:50 PM
    Author     : LAB104BPC1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <script>
        var ajax;
        function funcionCallback(){
            // comprobamos si la peticion se ha completado (estado 4)
            if(ajax.readyState == 4){
                // comprobams si la respuesta ha sido correcta (resultado http 200)
                if(ajax.status == 200){
                    //escribimos el resultado en la pagina HTML mediante DHTML
                    document.all.salida.innerHTML ="<br>"+ajax.responseText+"</br>";
                }
            } 
        }
            // creamos el control XMLHttprequest segun el navegador enn
          function recuperaResidencia(){
              if(window.XMLHttpRequest)
                  ajax = new XMLHttpRequest(); // no internet Explorer 
              else
                   ajax = new ActiveXObject("Microsoft.XMLHTTP"); // no internet Explorer 
               
               //almacenamos en el control al funcion que se invocara cuando la peticion
               //cambie de estado
               
               ajax.onreadystatechange = funcionCallback;
               //enviamos la peticion
               
               ajax.open("GET","pagina2.jsp?nombre="+document.all.texto.value, true);
               ajax.send("");
          } 
            
        </script>
        
    </head>
    <body>
    <center>
        <input type="text" name="texto" placeholder="persona a buscar" id="texto" > <br>
        <input type="button" name="boton" value="Buscar" onclick="recuperaResidencia()" />
        <br />
        resultado:<span id="salida"></span>
        <br /> 
        
    </center>
    </body>
</html>
