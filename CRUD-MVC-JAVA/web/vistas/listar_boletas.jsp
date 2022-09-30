<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Boleta"%>


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
            <h1>Boletas</h1>
            <a class="btn btn-success" href="Controlador?accion=AgregarBoleta1">Agregar Nuevo</a>
            <br>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID boleta</th>
                        <th class="text-center">ID Carta</th>
                        <th class="text-center">ID Mesa</th>
                        <th class="text-center">ACCIONES</th>
                    </tr>
                </thead>
                <%
                    Boleta boleta = new Boleta();
                    List<Boleta>list=boleta.list_all_boleta();
                    Iterator<Boleta>iter=list.iterator();
                    Boleta bol=null;
                    while(iter.hasNext()){
                        bol=iter.next();            
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%= bol.getId_boleta()%></td>
                        <td class="text-center"><%= bol.getId_carta()%></td>
                        <td><%= bol.getId_mesa()%></td>
                        <td class="text-center">
                            <a class="btn btn-warning" href="Controlador?accion=editarBoleta&id=<%= bol.getId_boleta()%>">Editar</a>
                            <a class="btn btn-danger" href="Controlador?accion=eliminarBoleta&id=<%= bol.getId_boleta()%>">Remove</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>
    </body>
</html>
