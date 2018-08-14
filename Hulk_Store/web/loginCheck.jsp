<%-- 
    Document   : loginCheck
    Created on : Aug 12, 2018, 10:41:14 PM
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
    HttpSession s = request.getSession();
    connMySql cn = new connMySql();
    Connection conn = cn.conectar();
        if(conn==null){
            out.println("Error en la conexion");
        }else{
            String username=request.getParameter("username");
            username=username.trim();
            String password=request.getParameter("password");
            
            Statement stmt = conn.createStatement();
            try{
                ResultSet rs = stmt.executeQuery("SELECT count(*) as contador from user where user= '"+ username +"' ");
                while(rs.next()){      
                    if(rs.getLong("contador") == 1){
                        ResultSet rs1 = stmt.executeQuery("SELECT count(*) as contador from user "
                        + "where user= '"+ username +"' and pass is NULL");
                            while(rs1.next()){
                                if(rs1.getLong("contador") == 1){
                                    response.sendRedirect("cambioPassword.jsp");   
                                }else{
                                    ResultSet rs2 = stmt.executeQuery("SELECT count(*) as contador from user "
                                    + "where user= '"+ username +"' and pass = '"+ password +"' ");
                                        while(rs2.next()){
                                            if(rs2.getLong("contador") == 1){
                                                session.setAttribute("username",username);
                                                response.sendRedirect("menuPrincipal.jsp");    
                                            }else{
                                                out.println("La contraseña inrgesada es incorrecta, por favor digítela de nuevo!!!");    
                                            }
                                        }  
                                }   
                            }
                    }else
                        response.sendRedirect("Error.jsp");
                    }
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



    </body>
</html>
