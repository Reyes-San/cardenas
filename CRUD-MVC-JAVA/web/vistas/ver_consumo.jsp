
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
        <title>JSP Seleccionar platos</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                <%
                    int id=Integer.parseInt((String)request.getAttribute("id"));
                %>
                <h1>Seleccionar platos - Mesa: <%= id%><br></h1>
                
                <form action="Controlador">
                   
                    <br>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th class="text-center">ID Plato</th>
                                <th class="text-center">Precio</th>
                                <th class="text-center">Plato</th>
                            </tr>
                        </thead>
                        <tbody>
                        <%
                            Conexion cn=new Conexion();
                            Connection con;
                            PreparedStatement ps;
                            ResultSet rs;


                            String sql="select * from plato";
                            try {
                                con=cn.getConnection();
                                ps=con.prepareStatement(sql);
                                rs=ps.executeQuery();

                                while(rs.next()){
                        %>
                        <tr>
                                <td class="text-center"><%= rs.getInt("id_plato")%></td>
                                <td class="text-center"><%= rs.getInt("precio")%></td>
                                <td class="text-center"><%= rs.getString("nombre")%></td>
                                
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
                        
                        
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th class="text-center">ID Plato</th>
                                <th class="text-center">cantidad</th>
                            </tr>
                        </thead>
                        <tbody>

                        <tr>
                            <td class="text-center">
                                <select name="txtIdPlato1">
                                    <option value="0" selected>Seleccione un plato</option>
                                <%
                            Conexion cn1=new Conexion();
                            Connection con1;
                            PreparedStatement ps1;
                            ResultSet rs1;


                            String sql1="select * from plato";
                            try {
                                con1=cn1.getConnection();
                                ps1=con1.prepareStatement(sql1);
                                rs1=ps1.executeQuery();

                                while(rs1.next()){
                        %>
                        
                        <option value="<%= rs1.getInt("id_plato")%>"><%= rs1.getString("nombre")%></option>
                        <%
                                }
                            } 
                            catch (Exception e) 
                            {
                            }
                        %>
                                </select>
                                
                            </td>
                            <td class="text-center">
                                <input class="form-control" type="text" name="txtIdCantidad1" value="0">
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">
                                <select name="txtIdPlato2">
                                    <option value="0" selected>Seleccione un plato</option>
                                <%
                            Conexion cn2=new Conexion();
                            Connection con2;
                            PreparedStatement ps2;
                            ResultSet rs2;


                            String sql2="select * from plato";
                            try {
                                con2=cn2.getConnection();
                                ps2=con2.prepareStatement(sql1);
                                rs2=ps2.executeQuery();

                                while(rs2.next()){
                        %>
                        
                        <option value="<%= rs2.getInt("id_plato")%>"><%= rs2.getString("nombre")%></option>
                        <%
                                }
                            } 
                            catch (Exception e) 
                            {
                            }
                        %>
                                </select>
                            </td>
                            <td class="text-center">
                                <input class="form-control" type="text" name="txtIdCantidad2" value="0">
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">
                                <select name="txtIdPlato3">
                                    <option value="0" selected>Seleccione un plato</option>
                                <%
                            Conexion cn3=new Conexion();
                            Connection con3;
                            PreparedStatement ps3;
                            ResultSet rs3;


                            String sql3="select * from plato";
                            try {
                                con3=cn3.getConnection();
                                ps3=con3.prepareStatement(sql3);
                                rs3=ps3.executeQuery();

                                while(rs3.next()){
                        %>
                        
                        <option value="<%= rs3.getInt("id_plato")%>"><%= rs3.getString("nombre")%></option>
                        <%
                                }
                            } 
                            catch (Exception e) 
                            {
                            }
                        %>
                                </select>
                            </td>
                            <td class="text-center">
                                <input class="form-control" type="text" name="txtIdCantidad3" value="0">
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">
                                <select name="txtIdPlato4">
                                    <option value="0" selected>Seleccione un plato</option>
                                <%
                            Conexion cn4=new Conexion();
                            Connection con4;
                            PreparedStatement ps4;
                            ResultSet rs4;


                            String sql4="select * from plato";
                            try {
                                con4=cn4.getConnection();
                                ps4=con4.prepareStatement(sql4);
                                rs4=ps4.executeQuery();

                                while(rs4.next()){
                        %>
                        
                        <option value="<%= rs4.getInt("id_plato")%>"><%= rs4.getString("nombre")%></option>
                        <%
                                }
                            } 
                            catch (Exception e) 
                            {
                            }
                        %>
                                </select>
                            </td>
                            <td class="text-center">
                                <input class="form-control" type="text" name="txtIdCantidad4" value="0">
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">
                                <select name="txtIdPlato5">
                                    <option value="0" selected>Seleccione un plato</option>
                                <%
                            Conexion cn5=new Conexion();
                            Connection con5;
                            PreparedStatement ps5;
                            ResultSet rs5;


                            String sql5="select * from plato";
                            try {
                                con5=cn5.getConnection();
                                ps5=con5.prepareStatement(sql5);
                                rs5=ps5.executeQuery();

                                while(rs5.next()){
                        %>
                        
                        <option value="<%= rs5.getInt("id_plato")%>"><%= rs5.getString("nombre")%></option>
                        <%
                                }
                            } 
                            catch (Exception e) 
                            {
                            }
                        %>
                                </select>
                            </td>
                            <td class="text-center">
                                <input class="form-control" type="text" name="txtIdCantidad5" value="0">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <input type="hidden" name="id" value="<%= id%>">
                    <input class="btn btn-primary" type="submit" name="accion" value="realizar pedido">
                </form>
            </div>

        </div>
    </body>
</html>
