<%-- 
    Document   : menuPrincipal
    Created on : Aug 12, 2018, 10:19:05 PM
    Author     : TIAGO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <LINK REL="stylesheet" TYPE="text/css" HREF="estilos/estilosMPr.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><center>
        <BR><BR><BR><BR><BR>
        <div id="picture">
		<img src="images/hs.jpg" alt="Hulk Store S.A." width="130" height="210">
	</div>
        <BR>
        <div class="datagrid"><table>
               <%-- <caption class="alt" align="top"> Elija el Menú </caption>--%>
            <thead>
                <tr>
                    <th>ELIJA UNA OPCION:</th>  
                </tr>
            </thead>
                <tfoot>
                    <tr class="alt">
                        <td colspan="4">
                            <div id="paging">
                                <ul>
                                    <li>
                                        <a href="listadoProductos.jsp">
                                            <span>.     Listado de Productos    .</span>
                                        </a>
                                    </li>     
                                </ul>
                            </div>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <div id="paging">
                                <ul>
                                    <li>
                                        <a href="ingresoProductos.jsp">
                                            <span>.     Nuevos Productos    .</span>
                                        </a>
                                    </li>     
                                </ul>
                            </div>
                    </tr>
                    <tr class="alt">
                        <td colspan="4">
                            <div id="paging">
                                <ul>
                                    <li>
                                        <a href="salidaProductos.jsp">
                                            <span>.     Salida de Productos    .</span>
                                        </a>
                                    </li>     
                                </ul>
                            </div>
                    </tr>
                    <tr class="alt">
                        <td colspan="4">
                            <div id="paging">
                                <ul>
                                    <li>
                                        <a href="logout_sys.jsp">
                                            <span>.     Salir del sistema    .</span>
                                        </a>
                                    </li>     
                                </ul>
                            </div>
                    </tr>
                </tfoot>

</table></div>
</center>  </body>
</html>
