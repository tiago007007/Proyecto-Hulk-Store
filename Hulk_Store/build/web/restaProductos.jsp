<%-- 
    Document   : restaProductos
    Created on : Aug 13, 2018, 8:46:33 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
        String a1 = (String)request.getParameter("nombrePro");
        int a2 = Integer.parseInt(request.getParameter("cantidad"));
        connMySql cn = new connMySql();
        Connection conn = cn.conectar();
        if(conn==null){
            out.println("No");
        }else{
            try{
                Statement stmt = conn.createStatement();
                ResultSet r1 = stmt.executeQuery("SELECT cantidad FROM productos WHERE id_producto = '"+ a1 +"'");
                while(r1.next()){
                    int cant = r1.getInt("cantidad");
                    if(cant >= 0){
                        Statement stmt2 = conn.createStatement();
                        
                        if(cant >= a2){
                            int res =  cant-a2;
                            Integer rs = stmt2.executeUpdate("UPDATE productos SET cantidad = '"+ res +"' WHERE id_producto = '"+ a1 +"' ");
                            response.sendRedirect("JSPback/restarExito.jsp");
                        }else{
                            response.sendRedirect("JSPback/noCant.jsp");
                        }
                        
                    
                    }
                    else{
                    }
                }      
            }catch(SQLException e){
                out.println("SQLException: " + e.getMessage() + "<BR>");
                while((e = e.getNextException()) != null)
                out.println(e.getMessage() + "<BR>");
            }finally{
                if(conn != null){
                    try{
                        conn.close();
                    }catch (Exception ignored) {}
                    }
            }
        }
%>
    </body>
</html>
