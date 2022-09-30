<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Plato"%>
<%@page import="ModeloDAO.PlatoDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP listar platos</title>
    </head>
    <body>
        <div class="container">
            <h1>Platos</h1>
            <a class="btn btn-success" href="Controlador?accion=addPlato">Agregar Nuevo</a>
            <br>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">DNI</th>
                        <th class="text-center">NOMBRES</th>
                        <th class="text-center">ACCIONES</th>
                    </tr>
                </thead>
                <%
                    PlatoDAO dao=new PlatoDAO();
                    List<Plato>list=dao.listar();
                    Iterator<Plato>iter=list.iterator();
                    Plato pla=null;
                    while(iter.hasNext()){
                        pla=iter.next();
                    
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%= pla.getIdid_plato()%></td>
                        <td class="text-center"><%= pla.getprecio()%></td>
                        <td><%= pla.getnombre()%></td>
                        <td class="text-center">
                            <a class="btn btn-warning" href="ControladorPlato?accion=editar&id=<%= pla.getIdid_plato()%>">Editar</a>
                            <a class="btn btn-danger" href="Controlador?accion=eliminar_plato&id=<%= pla.getIdid_plato()%>">Remove</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>
    </body>
</html>

