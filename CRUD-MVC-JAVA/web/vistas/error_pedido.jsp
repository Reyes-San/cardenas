

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
              
              int id=Integer.parseInt((String)request.getAttribute("id"));
              
        %>
        <h1>Error al realizar el pedido, contacte al garzon.</h1>
        <form action="Controlador">
        <input type="hidden" name="id" value="<%= id%>">
        <input class="btn btn-primary" type="submit" name="accion" value="verCarta"> 
        </form>
    </body>
</html>
