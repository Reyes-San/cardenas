<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Config.Conexion"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP listar boletas</title>
    </head>
    <body>
        <div class="container">
            <h1>Seleccionar mesa</h1>

            <br>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID Mesa</th>
                        <th class="text-center">ACCIONES</th>
                    </tr>
                </thead>
                <tbody>
                <%
                    Conexion cn=new Conexion();
                    Connection con;
                    PreparedStatement ps;
                    ResultSet rs;

                    
                    String sql="select * from mesa";
                    try {
                        con=cn.getConnection();
                        ps=con.prepareStatement(sql);
                        rs=ps.executeQuery();
                        while(rs.next()){
                %>
                <tr>
                        <td class="text-center"><%= rs.getInt("id_mesa")%></td>
                        <td class="text-center">
                            <a class="btn btn-warning" href="Controlador?accion=verCarta&id=<%= rs.getInt("id_carta")%>">Ir</a>
                        </td>
                    </tr>
                
                <%
                            
                        }
                    } 
                    catch (Exception e) 
                    {
                    }
           
                %>
                
                    
                    
                </tbody>
            </table>

        </div>
    </body>
</html>
