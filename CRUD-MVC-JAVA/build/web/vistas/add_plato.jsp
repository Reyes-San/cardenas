
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                <h1>Agregar Plato</h1>
                <form action="Controlador">
                    ID:<br>
                    <input class="form-control" type="text" name="txtidPlato"><br>
                    Precio:<br>
                    <input class="form-control" type="text" name="txtPrecio"><br>
                    Nombre: <br>
                    <input class="form-control" type="text" name="txtNombre"><br>
                    <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
                    <a href="Controlador?accion=listarPlatos">Regresar</a>
                </form>
            </div>

        </div>
    </body>
</html>
