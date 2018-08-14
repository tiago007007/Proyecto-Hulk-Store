package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <LINK REL=\"stylesheet\" TYPE=\"text/css\" HREF=\"estilos/estilosIndex.css\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"estilos.css\" />\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=EmulateIE7\" />\n");
      out.write("        <title>Hulk Store</title>\n");
      out.write("      </head>\n");
      out.write("    <body>  \n");
      out.write("       <center>  \n");
      out.write("            <BR><BR><BR><BR><BR>\n");
      out.write("            <form action=\"loginCheck.jsp\" method=\"post\"> \n");
      out.write("                        <div id=\"picture\">\n");
      out.write("\t\t<img src=\"images/hs.jpg\" alt=\"Hulk Store S.A.\" width=\"130\" height=\"210\">\n");
      out.write("\t</div>\n");
      out.write("                    <div class=\"datagrid\">\n");
      out.write("                        <table>\n");
      out.write("                            <thead>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th>\n");
      out.write("                                    </th>\n");
      out.write("                                    <th>                                        \n");
      out.write("                                    </th>\n");
      out.write("                                </tr>\n");
      out.write("                            </thead>\n");
      out.write("                            <tfoot><tr><td colspan=\"4\"><div id=\"paging\"><ul>\n");
      out.write("                                <input type=\"image\" value=\"Submit\" src=\"images/enviar.jpg\"></ul></div></tr></tfoot>\n");
      out.write("                            <tbody>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>Usuario</td><td><input type=\"text\" name=\"username\"></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr class=\"alt\">\n");
      out.write("                                    <td>Contraseña</td><td><input type=\"password\" name=\"password\"></td>\n");
      out.write("                                </tr>\n");
      out.write("                            </tbody>\n");
      out.write("                        </table>\n");
      out.write("                    </div>               \n");
      out.write("                <br/>\n");
      out.write("            </form>     \n");
      out.write("        </center>\n");
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
