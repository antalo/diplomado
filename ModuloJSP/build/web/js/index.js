 footer = function(){ 
     /*el alto que tiene el navegador*/
     $alto_navegador= $(window).height();
     /*el alto que tiene el contenido de la pagina*/
     $alto_documento= $(document).height(); 
     /*  aqui condicionamos si el alto del contenido 
      *  es mayor que
      *  el alto del navegador*/
     if ($alto_documento>$alto_navegador)
     {
         /* si es mayor es que tiene un contenido mas 
          * largo que el alto del navegador y entonces lo dejamos a relativo*/
         $("footer").css({"position":"relative"})
         console.log("relative");
     }
     else
     {
         /* si el alto del contenido es menor que el alto del navegador es que
          * tenemos espacio vacio y le mandamos abajo*/
         $("footer").css({"position":"fixed"})
         console.log("fixed");
     } 
 }
 footer();