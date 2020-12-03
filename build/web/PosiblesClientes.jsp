<%-- 
    Document   : PosiblesClientes
    Created on : 01-dic-2020, 14:37:56
    Author     : Sebastian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Posibles Clientes</title>
        <!-- Bootstrap core CSS-->
        <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
        <!-- Custom fonts for this template-->
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">
        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
        
        <link href="css/sweetalert.css" rel="stylesheet" type="text/css"/>
        <script src="js/sweetalert.min.js" type="text/javascript"></script>
    </head>
    <body>

        <div class="container">
            <div class="card mx-auto mt-5">
                <div class="card-header">Crear Posibles Clientes</div>  
                <div class="card-body">
                    <form action="PosiblesClientesController" method="POST">
                        <!-- FILA -->
                        <div class="form-group">
                            <div class="form-row">
                                <!-- COLUMNA -->
                                <div class="cold-md-6">
                                    <input type="submit" value="Guardar" class="btn btn-primary" name="btnGuardar"/>
                                    <input type="submit" value="Modificar" class="btn btn-primary" name="btnModificar"/>
                                    <input type="submit" value="Cancelar" class="btn btn-primary" name="btnCancelar"/>
                                    <input type="submit" value="Volver" class="btn btn-primary" name="btnVolver"/>
                                </div>
                            </div>
                        </div>
                        <!-- FILA -->
                        <div class="form-group">
                            <div class="form-row">
                                <h1>Informacion De Posible Cliente</h1>
                            </div>     
                        </div>
                        <!-- FILA -->
                        <div class="form-group">
                            <div class="form-row">
                                <!-- COLUMNA -->
                                <div class="col-md-3">
                                    <label name="lblEmpresa">Empresa:</label>
                                    <input type="text" placeholder="Empresa" name="txtEmpresa" class="form-control" required=""/>
                                </div>
                                <!-- COLUMNA -->
                                <div class="col-md-3">
                                    <label name="lblNombre">Nombre:</label>
                                    <input type="text" placeholder="Nombre" name="txtNombre" class="form-control" required=""/>                                   
                                </div><!-- COLUMNA -->
                                <div class="col-md-3">
                                    <label name="lblApellidos">Apellidos:</label>
                                    <input type="text" placeholder="Apellidos" name="txtApellidos" class="form-control" required=""/> 
                                </div><!-- COLUMNA -->
                                <div class="col-md-3">
                                    <label name="lblTitulo">Titulo:</label>
                                    <input type="text" placeholder="Titulo" name="txtTitulo" class="form-control"/> 
                                </div>
                            </div>     
                        </div>
                        <!-- FILA -->
                        <div class="form-group">
                            <div class="form-row">
                                <!-- COLUMNA -->
                                <div class="col-md-3">
                                    <label name="lblCorreoElectronico">Correo Electronico:</label>
                                    <input type="email" placeholder="Correo electronico" name="txtCorreoElectronico" class="form-control" required=""/>
                                </div>
                                <!-- COLUMNA -->
                                <div class="col-md-3">
                                    <label name="lblTelefono">Telefono:</label>
                                    <input type="text" placeholder="Telefono" name="txtTelefono" class="form-control"/>                                   
                                </div><!-- COLUMNA -->
                                <div class="col-md-3">
                                    <label name="lblFax">Fax:</label>
                                    <input type="text" placeholder="Fax" name="txtFax" class="form-control"/> 
                                </div><!-- COLUMNA -->
                                <div class="col-md-3">
                                    <label name="lblMovil">Movil:</label>
                                    <input type="text" placeholder="Movil" name="txtMovil" class="form-control"/> 
                                </div>
                            </div>     
                        </div>
                        <!-- FILA -->
                        <div class="form-group">
                            <div class="form-row">
                                <!-- COLUMNA -->
                                <div class="col-md-3">
                                    <label name="lblSitioWeb">Sitio Web:</label>
                                    <input type="text" placeholder="Sitio Web" name="txtSitioWeb" class="form-control"/>
                                </div>
                                <!-- COLUMNA -->
                                <div class="col-md-3">
                                    <label name="lblFuentePosibleCliente">Fuente De Posible Cliente:</label>
                                    <select class="form-control" name="ddlFuentePosibleCliente">
                                        <option select="true" value="1">None</option>
                                        <option value="2">Aviso</option>
                                        <option value="3">Llamada No Solicitada</option>
                                        <option value="4">Recomendacion De Empleado</option>
                                        <option value="5">Recomendacion Externa</option>
                                        <option value="6">Tienda En Linea</option>
                                    </select>                                   
                                </div><!-- COLUMNA -->
                                <div class="col-md-3">
                                    <label name="lblEstadoPosibleCliente">Estado De Posible Cliente:</label>
                                    <select class="form-control" name="ddlEstadoPosibleCliente">
                                        <option select="true" value="1">None</option>
                                        <option value="2">Intento De Contacto</option>
                                        <option value="3">Contactar En El Futuro</option>
                                        <option value="4">Contactado</option>
                                        <option value="5">Posible Cliente No Solicitado</option>
                                        <option value="6">Posible Cliente Perdido</option>
                                    </select> 
                                </div><!-- COLUMNA -->
                                <div class="col-md-3">
                                    <label name="lblSector">Sector:</label>
                                    <select class="form-control" name="ddlSector">
                                        <option select="true" value="1">None</option>
                                        <option value="2">APS(Provedor de Servicios de Aplicacion)</option>
                                        <option value="3">OEM de Datos</option>
                                        <option value="4">ERP(Planificacion de Recursos de Empresa)</option>
                                        <option value="5">Gobierno/Ejercito</option>
                                        <option value="6">Empresa Grande</option>
                                    </select>
                                </div>
                            </div>     
                        </div>
                        <!-- FILA -->
                        <div class="form-group">
                            <div class="form-row">
                                <!-- COLUMNA -->
                                <div class="col-md-3">
                                    <label name="lblCantidadEmpleados">Cantidad De Empleados:</label>
                                    <input type="number" placeholder="Cantidad de Empleados" name="txtCantidadEmpleados" class="form-control"/>
                                </div>
                                <!-- COLUMNA -->
                                <div class="col-md-3">
                                    <label name="lblIngresosAnuales">Ingresos Anuales:</label>
                                    <input type="number" placeholder="Ingresos Anuales" name="txtIngresosAnuales" class="form-control"/>                                   
                                </div><!-- COLUMNA -->
                                <div class="col-md-3">
                                    <label name="lblCalificacion">Calificacion:</label>
                                    <select class="form-control" name="ddlCalificacion">
                                        <option select="true" value="1">None</option>
                                        <option value="2">Adquirido</option>
                                        <option value="3">Activo</option>
                                        <option value="4">Contactado</option>
                                        <option value="5">Fallo Del Mercado</option>
                                        <option value="6">Proyecto Cancelado</option>
                                        <option value="7">Apagar</option>
                                    </select>
                                </div><!-- COLUMNA -->
                                <div class="col-md-3">
                                    <label name="lblNoParticipacionCorreoElectronico">
                                        <input type="checkbox" name="chkNoParticipacionCorreoElectronio"/>
                                        No Participacion Correo Electronico</label>                                   
                                </div>
                            </div>     
                        </div>
                        <!-- FILA -->
                        <div class="form-group">
                            <div class="form-row">
                                <!-- COLUMNA -->
                                <div class="col-md-3">
                                    <label name="lblIDSkype">ID De Skype:</label>
                                    <input type="text" placeholder="ID De Skype" name="txtIDSkype" class="form-control"/>
                                </div>
                                <!-- COLUMNA -->
                                <div class="col-md-3">
                                    <label name="lblIngresosAnuales">Twitter:</label>
                                    <input type="text" placeholder="Twitter" name="txtTwitter" class="form-control"/>                                   
                                </div><!-- COLUMNA -->
                                <div class="col-md-6">
                                    <label name="lblCalificacion">Correo Electronico Segundario:</label>
                                    <input type="email" placeholder="Correo Electronico Segundario" name="txtCorreoElectronicoSegundario" class="form-control"/>
                                </div>                                   
                            </div>
                        </div> 
                    </form>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
