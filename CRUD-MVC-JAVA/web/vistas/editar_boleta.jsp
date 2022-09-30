<%@page import="Modelo.Boleta"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Editar Boleta</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
            <%
              Boleta bol = new Boleta();
              int id=Integer.parseInt((String)request.getAttribute("id"));
              bol=(Boleta)bol.searchBoleta(id);
            %>
            <h1>Modificar Boleta</h1>
            <form action="Controlador">
                ID Mesa:<br>
                <input class="form-control" type="text" name="txtIdMesa" value="<%= bol.getId_boleta()%>"><br>
                ID Carta: <br>
                <input class="form-control" type="text" name="txtIdCarta" value="<%= bol.getId_carta()%>"><br>
                
                <input type="hidden" name="txtid" value="<%= bol.getId_mesa()%>">
                <input class="btn btn-primary" type="submit" name="accion" value="actualizarBoleta"> 
                <a href="Controlador?accion=listarBoletas">Regresar</a>
            </form>
          </div>
          
        </div>
    </body>
</html>
