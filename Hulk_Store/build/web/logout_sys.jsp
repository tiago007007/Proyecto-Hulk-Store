<%-- 
    Document   : logout_sys
    Created on : Aug 13, 2018, 9:59:36 PM
    Author     : TIAGO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/JavaScript">
            setTimeout("document.location.href='http://www.google.com'",3000);
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
 
        session.removeAttribute("username");
        session.removeAttribute("password");
        session.invalidate();
        %>
        <h1>Usted ha salido exitosamente del sistema...</h1>
         
    </body>
</html>

