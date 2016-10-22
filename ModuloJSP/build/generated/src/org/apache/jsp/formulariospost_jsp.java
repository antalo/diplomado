package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class formulariospost_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Formulario POST</h1>\n");
      out.write("        <form name=\"form1\" method=\"post\" action=\"\">\n");
      out.write("            <fieldset>\n");
      out.write("                <legend>Estado Civil</legend>\n");
      out.write("                <input type=\"radio\" name=\"ECivil\" value=\"Soltero\" \n");
      out.write("      ");
 if(request.getParameter("ECivil")!=null&&
             request.getParameter("ECivil").compareTo("Soltero")==0)
         out.print("checked");
      
      out.write("/>\n");
      out.write("                <label>Soltero</label>\n");
      out.write("                <input type=\"radio\" name=\"ECivil\" value=\"Casado\"\n");
      out.write("           ");
 if(request.getParameter("ECivil")!=null&&
           request.getParameter("ECivil").compareTo("Casado")==0)
         out.print("checked");
      
      out.write("/>\n");
      out.write("                <label>Casado</label>\n");
      out.write("                <input type=\"radio\" name=\"ECivil\" value=\"Divorciado\"\n");
      out.write("      ");
 if(request.getParameter("ECivil")!=null&&
             request.getParameter("ECivil").compareTo("Divorciado")==0)
         out.print("checked");
      
      out.write("/>\n");
      out.write("                <label>Divorciado</label>\n");
      out.write("                <input type=\"radio\" name=\"ECivil\" value=\"Viudo\"\n");
      out.write("        ");
 if(request.getParameter("ECivil")!=null&&
             request.getParameter("ECivil").compareTo("Viudo")==0)
         out.print("checked");
      
      out.write("/>\n");
      out.write("                <label>Viudo</label>\n");
      out.write("<br/><label>Gustos:</label>        \n");
      out.write("<input type=\"checkbox\" name=\"Deporte\" value=\"Si\"/>\n");
      out.write("<label>Deportes</label>\n");
      out.write("<input type=\"checkbox\" name=\"Musica\" value=\"Si\"/>\n");
      out.write("<label>Música</label>\n");
      out.write("<input type=\"submit\" name=\"Boton\" value=\"Aceptar\"/>      \n");
      out.write("            </fieldset>\n");
      out.write("        </form>\n");
      out.write("        ");
 
if(request.getParameter("Boton")!=null){
  out.print("Estado Civil: "+request.getParameter("ECivil"));
   if(request.getParameter("Deporte")!=null&&
     request.getParameter("Deporte").compareTo("Si")==0)         
        out.print("Le gusta el deporte");
  if(request.getParameter("Musica")!=null&&
     request.getParameter("Musica").compareTo("Si")==0)         
        out.print("Le gusta la música");  
}  
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
