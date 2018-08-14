<%-- 
    Document   : index
    Created on : Aug 10, 2018, 6:52:09 PM
    Author     : TIAGO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <LINK REL="stylesheet" TYPE="text/css" HREF="estilos/estilosIndex.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilos.css" />
        <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
        <title>Hulk Store</title>
      </head>
    <body>  
       <center>  
            <BR><BR><BR><BR><BR>
            <form action="loginCheck.jsp" method="post"> 
                        <div id="picture">
		<img src="images/hs.jpg" alt="Hulk Store S.A." width="130" height="210">
	</div>
                    <div class="datagrid">
                        <table>
                            <thead>
                                <tr>
                                    <th>
                                    </th>
                                    <th>                                        
                                    </th>
                                </tr>
                            </thead>
                            <tfoot><tr><td colspan="4"><div id="paging"><ul>
                                <input type="image" value="Submit" src="images/enviar.jpg"></ul></div></tr></tfoot>
                            <tbody>
                                <tr>
                                    <td>Usuario</td><td><input type="text" name="username"></td>
                                </tr>
                                <tr class="alt">
                                    <td>Contraseña</td><td><input type="password" name="password"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>               
                <br/>
            </form>     
        </center>
    </body>
</html>
