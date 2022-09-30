
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Agregar Boleta</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                <h1>Agregar Boleta</h1>
                <form action="Controlador">
                    ID Mesa:<br>
                    <input class="form-control" type="text" name="txtIdMesa"><br>
                    ID Carta: <br>
                    <input class="form-control" type="text" name="txtIdCarta"><br>
                    <input class="btn btn-primary" type="submit" name="accion" value="AgregarBoleta">
                    <a href="Controlador?accion=listarBoletas">Regresar</a>
                </form>
            </div>

        </div>
    </body>
</html>
