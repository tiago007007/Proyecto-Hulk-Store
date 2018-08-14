<%-- 
    Document   : listadoProductos
    Created on : Aug 13, 2018, 12:34:46 AM
    Author     : TIAGO
--%>
<%@ page import="java.sql.*" %>
<%@page import="coneccion.connMySql"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <LINK REL="stylesheet" TYPE="text/css" HREF="estilos/estilosListado.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
        <BR><BR><BR><BR><BR>
        <div id="picture">
		<img src="images/hs.jpg" alt="Hulk Store S.A." width="220" height="300">
	</div>
        <%               
    connMySql cn = new connMySql();
    Connection conn = cn.conectar();
        if(conn==null){
            out.println("Error en la conexion");
        }else{

            
            Statement stmt = conn.createStatement();
            try{

ResultSet rs = stmt.executeQuery("SELECT * FROM productos ");

//Print start of table and column headers
         
            
            out.println("<div class=\"datagrid\">");
            out.println("<TABLE CELLSPACING=\"0\" CELLPADDING=\"3\" BORDER=\"1\" bgcolor=\"WHITE\">");
            out.println("<TR>"
                    + "<TH>ID producto</TH>"
                    + "<TH>Nombre</TH>"
                    + "<TH>Cantidad</TH>"
                    + "</TR>");

            //Loop through results of query.

        
            while(rs.next())
            {
            out.println("<tbody><TR class=\"alt\">");
            out.println("<TD>" + rs.getString("id_producto") + "</TD>");
            out.println("<TD>" + rs.getString("nombre_producto") + "</TD>");
            out.println("<TD>" + rs.getString("cantidad") + "</TD>");

            
          //  out.println("<TD>" + rs.getString("xcodigodoc") + "</TD>");
            
}
            out.println("<tfoot><tr><td colspan=\"10\"><div id=\"paging\"><ul>"
                    + "<a href=\"menuPrincipal.jsp\">Regresar</a></ul></div></tr></tfoot>");
            out.println("</TABLE>");
            out.println("</div>");
                
                
                
                
                        }catch(SQLException e){
                out.println("SQLException: " + e.getMessage() + "<BR>");
                while((e = e.getNextException()) != null)
                out.println(e.getMessage() + "<BR>");
            }finally{
            //Clean up resources, close the connection.
            if(conn != null){
                try{
                    conn.close();
                }catch (Exception ignored){}
                }
            }
        }
%>
        </center>
    </body>
</html>
