<%-- 
    Document   : ingresoProductos
    Created on : Aug 13, 2018, 10:44:24 AM
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
        <link rel="stylesheet" type="text/css" href="estilos/estilosIndex.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <center>  
            <BR><BR><BR><BR><BR>
        <div id="picture">
		<img src="images/hs.jpg" alt="Hulk Store S.A." width="130" height="210">
	</div>
        <form action="sumaProductos.jsp" method="post">
 
                    <div class="datagrid">
                        <table>
                            <thead>
                                <tr>
                                    <th>
                                    </th>
                                    <th>Elija el producto y la cantidad                                        
                                    </th>
                                </tr>
                            </thead>
                            <tfoot><tr><td colspan="4"><div id="paging">
                                <ul>
                                    <input type="image" value="Submit" src="images/enviar.jpg">
                                </ul></div></tr></tfoot>
                            <tbody>
                                <tr>
                                    <td>Producto</td>                                                                        
                                    <td>
                                     <%               
                                    String a=session.getAttribute("username").toString(); 
                                    connMySql cn = new connMySql();
                                    Connection conn = cn.conectar();
                                    if(conn==null){
                                        out.println("No");
                                    }else{
                                    //out.println("Si");
                                    try{
                                        Statement stmt = conn.createStatement();
                                        ResultSet rs = stmt.executeQuery("select id_producto, nombre_producto FROM productos");
                                        out.println("<select style=\"width: 170px\" name=\"nombrePro\" id=\"nombrePro\">");
                                        out.println("<option selected>---Elige el producto---</option>");
                                        while(rs.next()){  
                                            out.println("<option value=\""+ rs.getString("id_producto") +  "\">" 
                                            + rs.getString("id_producto") + ""+ " - " +""+ rs.getString("nombre_producto") +  ""+ " - </option>");  
                                        }
                                        out.println("</select>");
                                    }catch(SQLException e){
                                        out.println("SQLException: " + e.getMessage() + "<BR>");
                                        while((e = e.getNextException()) != null)
                                        out.println(e.getMessage() + "<BR>");
                                    }finally{
                                        //Clean up resources, close the connection.
                                        if(conn != null){
                                            try{
                                                conn.close();
                                            }catch (Exception ignored) {}
                                        }
                                    }         
                                    }
                                    %>   
                                    </td>
                                </tr>
                                <tr class="alt">
                                    <td>Cantidad</td><td><input type="text" name="cantidad"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>               
                
        </form>
       </center>>       
    </body>
</html>
