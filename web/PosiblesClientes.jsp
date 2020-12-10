<%-- 
    Document   : PosiblesClientes
    Created on : 01-dic-2020, 14:37:56
    Author     : Sebastian
--%>

<%@page import="Models.clsSector"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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

    <%

        Models.clsPosiblesClientes obclsPosiblesClientes = new Models.clsPosiblesClientes();

        if (request.getAttribute("obclsPosiblesClientes") != null) {
            obclsPosiblesClientes =(Models.clsPosiblesClientes) request.getAttribute("obclsPosiblesClientes");
        
        }

        List<Models.clsPosiblesClientes> lstclsPosiblesClientes
                = new ArrayList<Models.clsPosiblesClientes>();

        //EXISTENCIA DE LA VARIABLE DE SECCION
        if (session.getAttribute("session_lstclsPosiblesClientes") != null) {

            //CASTING PARA DARLE UN TIPO DE DATO A LA VARIABLE DE SECCION
            lstclsPosiblesClientes = (List<Models.clsPosiblesClientes>) session.getAttribute("session_lstclsPosiblesClientes");
        }

        if (request.getAttribute("stMensaje") != null
                && request.getAttribute("stTipo") != null) {
    %>

    <input type="text" hidden="" id="txtMensaje"
           value="<%=request.getAttribute("stMensaje")%>"/>
    <input type="text" hidden="" id="txtTipo"
           value="<%=request.getAttribute("stTipo")%>"/>

    <script>
        var = mensaje = document.getElementById("txtMensaje").value;
        var tipo = document.getElementById("txtTipo").value;

        swal("Mensaje", mensaje, tipo);
    </script>
    <%
        }
    %>

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
                                <input type="text" placeholder="Empresa" name="txtEmpresa" class="form-control" required=""
                                       value="<%= obclsPosiblesClientes.getStEmpresa() !=null ? obclsPosiblesClientes.getStEmpresa() : "" %>"/>
                            </div>
                            <!-- COLUMNA -->
                            <div class="col-md-3">
                                <label name="lblNombre">Nombre:</label>
                                <input type="text" placeholder="Nombre" name="txtNombre" class="form-control" required=""
                                       value="<%= obclsPosiblesClientes.getStNombre()!=null ? obclsPosiblesClientes.getStNombre(): "" %>"/>                                   
                            </div><!-- COLUMNA -->
                            <div class="col-md-3">
                                <label name="lblApellidos">Apellidos:</label>
                                <input type="text" placeholder="Apellidos" name="txtApellidos" class="form-control" required=""
                                       value="<%= obclsPosiblesClientes.getStApellidos()!=null ? obclsPosiblesClientes.getStApellidos(): "" %>"/> 
                            </div><!-- COLUMNA -->
                            <div class="col-md-3">
                                <label name="lblTitulo">Titulo:</label>
                                <input type="text" placeholder="Titulo" name="txtTitulo" class="form-control"
                                       value="<%= obclsPosiblesClientes.getStTitulo()!=null ? obclsPosiblesClientes.getStTitulo(): "" %>"/> 
                            </div>
                        </div>     
                    </div>
                    <!-- FILA -->
                    <div class="form-group">
                        <div class="form-row">
                            <!-- COLUMNA -->
                            <div class="col-md-3">
                                <label name="lblCorreoElectronico">Correo Electronico:</label>
                                <input type="email" placeholder="Correo electronico" name="txtCorreoElectronico" class="form-control" required=""
                                       value="<%= obclsPosiblesClientes.getStCorreoElectronico()!=null ? obclsPosiblesClientes.getStCorreoElectronico(): "" %>"/>
                            </div>
                            <!-- COLUMNA -->
                            <div class="col-md-3">
                                <label name="lblTelefono">Telefono:</label>
                                <input type="text" placeholder="Telefono" name="txtTelefono" class="form-control"
                                       value="<%= obclsPosiblesClientes.getStTelefono()!=null ? obclsPosiblesClientes.getStTelefono(): "" %>"/>                                   
                            </div><!-- COLUMNA -->
                            <div class="col-md-3">
                                <label name="lblFax">Fax:</label>
                                <input type="text" placeholder="Fax" name="txtFax" class="form-control"
                                       value="<%= obclsPosiblesClientes.getStFax() !=null ? obclsPosiblesClientes.getStFax(): "" %>"/> 
                            </div><!-- COLUMNA -->
                            <div class="col-md-3">
                                <label name="lblMovil">Movil:</label>
                                <input type="text" placeholder="Movil" name="txtMovil" class="form-control"
                                       value="<%= obclsPosiblesClientes.getStMovil()!=null ? obclsPosiblesClientes.getStMovil(): "" %>"/> 
                            </div>
                        </div>     
                    </div>
                    <!-- FILA -->
                    <div class="form-group">
                        <div class="form-row">
                            <!-- COLUMNA -->
                            <div class="col-md-3">
                                <label name="lblSitioWeb">Sitio Web:</label>
                                <input type="text" placeholder="Sitio Web" name="txtSitioWeb" class="form-control"
                                       value="<%= obclsPosiblesClientes.getStSitioWeb()!=null ? obclsPosiblesClientes.getStSitioWeb(): "" %>"/>
                            </div>
                            <!-- COLUMNA -->
                            <div class="col-md-3">
                                <label name="lblFuentePosibleCliente">Fuente De Posible Cliente:</label>
                                <select class="form-control" name="ddlFuentePosibleCliente">
                                    <option select="true" value="1" <%= obclsPosiblesClientes.obclsFuentePosibleCliente != null ? obclsPosiblesClientes.obclsFuentePosibleCliente.getInCodigo() == 1 ? "selected" : "" : "" %>>Ninguno</option>
                                    <option value="2" <%= obclsPosiblesClientes.obclsFuentePosibleCliente != null ? obclsPosiblesClientes.obclsFuentePosibleCliente.getInCodigo() == 1 ? "selected" : "" : "" %>>Aviso</option>
                                    <option value="3" <%= obclsPosiblesClientes.obclsFuentePosibleCliente != null ? obclsPosiblesClientes.obclsFuentePosibleCliente.getInCodigo() == 2 ? "selected" : "" : "" %>>Llamada No Solicitada</option>
                                    <option value="4"<%= obclsPosiblesClientes.obclsFuentePosibleCliente != null ? obclsPosiblesClientes.obclsFuentePosibleCliente.getInCodigo() == 3 ? "selected" : "" : "" %> >Recomendacion De Empleado</option>
                                    <option value="5"<%= obclsPosiblesClientes.obclsFuentePosibleCliente != null ? obclsPosiblesClientes.obclsFuentePosibleCliente.getInCodigo() == 4 ? "selected" : "" : "" %>>Recomendacion Externa</option>
                                    <option value="6"<%= obclsPosiblesClientes.obclsFuentePosibleCliente != null ? obclsPosiblesClientes.obclsFuentePosibleCliente.getInCodigo() == 5 ? "selected" : "" : "" %>>Tienda En Linea</option>
                                </select>                                   
                            </div><!-- COLUMNA -->
                            <div class="col-md-3">
                                <label name="lblEstadoPosibleCliente">Estado De Posible Cliente:</label>
                                <select class="form-control" name="ddlEstadoPosibleCliente">
                                    <option select="true" value="1" <%= obclsPosiblesClientes.obclsEstadoPosibleCliente != null ? obclsPosiblesClientes.obclsEstadoPosibleCliente.getInCodigo() == 1 ? "selected" : "" : "" %>>Ninguno</option>
                                    <option value="2" <%= obclsPosiblesClientes.obclsEstadoPosibleCliente != null ? obclsPosiblesClientes.obclsEstadoPosibleCliente.getInCodigo() == 2 ? "selected" : "" : "" %>>Intento De Contacto</option>
                                    <option value="3" <%= obclsPosiblesClientes.obclsEstadoPosibleCliente != null ? obclsPosiblesClientes.obclsEstadoPosibleCliente.getInCodigo() == 3 ? "selected" : "" : "" %>>Contactar En El Futuro</option>
                                    <option value="4" <%= obclsPosiblesClientes.obclsEstadoPosibleCliente != null ? obclsPosiblesClientes.obclsEstadoPosibleCliente.getInCodigo() == 4 ? "selected" : "" : "" %>>Contactado</option>
                                    <option value="5" <%= obclsPosiblesClientes.obclsEstadoPosibleCliente != null ? obclsPosiblesClientes.obclsEstadoPosibleCliente.getInCodigo() == 5 ? "selected" : "" : "" %>>Posible Cliente No Solicitado</option>
                                    <option value="6" <%= obclsPosiblesClientes.obclsEstadoPosibleCliente != null ? obclsPosiblesClientes.obclsEstadoPosibleCliente.getInCodigo() == 6 ? "selected" : "" : "" %>>Posible Cliente Perdido</option>
                                </select> 
                            </div><!-- COLUMNA -->
                            <div class="col-md-3">
                                <label name="lblSector">Sector:</label>
                                <select class="form-control" name="ddlSector">
                                    <option select="true" value="1">Ninguno</option>
                                    <option value="2" >APS(Provedor de Servicios de Aplicacion)</option>
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
                                <input type="number" placeholder="Cantidad de Empleados" name="txtCantidadEmpleados" class="form-control"
                                       value="<%= obclsPosiblesClientes.getInCantidadEmpleados()!=0 ? obclsPosiblesClientes.getInCantidadEmpleados(): "" %>"/>
                            </div>
                            <!-- COLUMNA -->
                            <div class="col-md-3">
                                <label name="lblIngresosAnuales">Ingresos Anuales:</label>
                                <input type="number" placeholder="Ingresos Anuales" name="txtIngresosAnuales" class="form-control"
                                       value="<%= obclsPosiblesClientes.getDbIngresosAnuales() !=0 ? obclsPosiblesClientes.getDbIngresosAnuales(): "" %>"/>                                   
                            </div><!-- COLUMNA -->
                            <div class="col-md-3">
                                <label name="lblCalificacion">Calificacion:</label>
                                <select class="form-control" name="ddlCalificacion">
                                    <option select="true" value="1" <%= obclsPosiblesClientes.obclsCalificacion != null ? obclsPosiblesClientes.obclsCalificacion.getInCodigo() == 1 ? "selected" : "" : "" %>>Ninguno</option>
                                    <option value="2" <%= obclsPosiblesClientes.obclsCalificacion != null ? obclsPosiblesClientes.obclsCalificacion.getInCodigo() == 2 ? "selected" : "" : "" %>>Adquirido</option>
                                    <option value="3"<%= obclsPosiblesClientes.obclsCalificacion != null ? obclsPosiblesClientes.obclsCalificacion.getInCodigo() == 3 ? "selected" : "" : "" %>>Activo</option>
                                    <option value="4"<%= obclsPosiblesClientes.obclsCalificacion != null ? obclsPosiblesClientes.obclsCalificacion.getInCodigo() == 4 ? "selected" : "" : "" %>>Contactado</option>
                                    <option value="5"<%= obclsPosiblesClientes.obclsCalificacion != null ? obclsPosiblesClientes.obclsCalificacion.getInCodigo() == 5 ? "selected" : "" : "" %>>Fallo Del Mercado</option>
                                    <option value="6"<%= obclsPosiblesClientes.obclsCalificacion != null ? obclsPosiblesClientes.obclsCalificacion.getInCodigo() == 6 ? "selected" : "" : "" %>>Proyecto Cancelado</option>
                                    <option value="7"<%= obclsPosiblesClientes.obclsCalificacion != null ? obclsPosiblesClientes.obclsCalificacion.getInCodigo() == 7 ? "selected" : "" : "" %>>Apagar</option>
                                </select>
                            </div><!-- COLUMNA -->
                            <div class="col-md-3">
                                <label name="lblNoParticipacionCorreoElectronico">
                                    <input type="checkbox" name="chkNoParticipacionCorreoElectronio"
                                           <%= obclsPosiblesClientes.getChNoParticipacionCorreoElectronico() == 'S' ? "checked" : "" %>/>
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
                                <input type="text" placeholder="ID De Skype" name="txtIDSkype" class="form-control"
                                       value="<%= obclsPosiblesClientes.getStIDSkype()!=null ? obclsPosiblesClientes.getStIDSkype(): "" %>"/>
                            </div>
                            <!-- COLUMNA -->
                            <div class="col-md-3">
                                <label name="lblIngresosAnuales">Twitter:</label>
                                <input type="text" placeholder="Twitter" name="txtTwitter" class="form-control"
                                       value="<%= obclsPosiblesClientes.getStTwittir()!=null ? obclsPosiblesClientes.getStTwittir(): "" %>"/>                                   
                            </div><!-- COLUMNA -->
                            <div class="col-md-6">
                                <label name="lblCalificacion">Correo Electronico Segundario:</label>
                                <input type="email" placeholder="Correo Electronico Segundario" name="txtCorreoElectronicoSegundario" class="form-control"
                                       value="<%= obclsPosiblesClientes.getStCorreoElectronicoSegundario()!=null ? obclsPosiblesClientes.getStCorreoElectronicoSegundario(): "" %>"/>
                            </div>                                   
                        </div>
                    </div> 
                    <div class="form-group">
                        <div class="form-row">
                            <!-- COLUMNA -->
                            <div class="col-12">
                                <b>
                                    <i class="fa fa-clipboard"></i>
                                    Registros: <%= lstclsPosiblesClientes.size()%>
                                </b>
                            </div>
                        </div>
                    </div>

                    <!-- FILA -->
                    <div class="form-group">
                        <div class="form-row">
                            <!-- COLUMNA -->
                            <div class="col-12">
                                <table class="table table-bordered table-success table-responsive">
                                    <!-- FILA -->
                                    <tr>
                                        <!-- COLUMNA -->  
                                        <td>Empresa</td>
                                        <td>Nombre</td>
                                        <td>Apellidos</td>
                                        <td>Titulo</td>
                                        <td>Correo Electronico</td>
                                        <td>Telefono</td>
                                        <td>Fax</td>
                                        <td>Movil</td>
                                        <td>Sitio Web</td>
                                        <td>Fuente Posible Cliente</td>
                                        <td>Estado De Posible Cliente</td>
                                        <td>Sector</td>
                                        <td>Cantidad De Empleados</td>
                                        <td>Ingresos Anuales</td>
                                        <td>Calificacion</td>
                                        <td>No Participacion Correo Electronico</td>
                                        <td>ID de Skype</td>
                                        <td>Twitter</td>
                                        <td>Correo Electronico Segundario</td>
                                    </tr>
                                    <%
                                        for (Models.clsPosiblesClientes item : lstclsPosiblesClientes) {
                                            Models.clsFuentePosibleCliente obclsFuentePosibleCliente = item.getObclsFuentePosibleCliente();
                                            Models.clsEstadoPosibleCliente obclsEstadoPosibleCliente = item.getObclsEstadoPosibleCliente();
                                            Models.clsCalificacion obclsCalificacion = item.getObclsCalificacion();
                                    %>
                                    <tr>
                                        <td><%= item.getStEmpresa()%></td>
                                        <td><%= item.getStNombre()%></td>
                                        <td><%= item.getStApellidos()%></td>
                                        <td><%= item.getStTitulo()%></td>
                                        <td><%= item.getStCorreoElectronico()%></td>
                                        <td><%= item.getStTelefono()%></td>
                                        <td><%= item.getStFax()%></td>
                                        <td><%= item.getStMovil()%></td>
                                        <td><%= item.getStSitioWeb()%></td>
                                        <td><%= obclsFuentePosibleCliente.getStDescripcion()%></td>
                                        <td><%= obclsEstadoPosibleCliente.getStDescripcion()%></td> 
                                        <td><%= item.getInCantidadEmpleados()%></td>
                                        <td><%= item.getDbIngresosAnuales()%></td>
                                        <td><%= obclsCalificacion.getStDescripcion()%></td>
                                        <td><%= item.getChNoParticipacionCorreoElectronico()%></td>
                                        <td><%= item.getStIDSkype()%></td>
                                        <td><%= item.getStTwittir()%></td>
                                        <td><%= item.getStCorreoElectronicoSegundario()%></td>
                                        <td>
                                            <a class="btn- btn-success btn-sm"
                                               href="PosiblesClientesController?stOpcion=M&codigoSeleccionado=<%= item.getInCodigo()%>">
                                                Modificar</a>

                                            <a class="btn- btn-danger btn-sm"
                                               href="PosiblesClientesController?stOpcion=E&codigoSeleccionado=<%= item.getInCodigo()%>">
                                                Elimanar</a>
                                        </td>

                                    </tr>   
                                    <%
                                        }
                                    %>
                                </table>  
                            </div>
                        </div>
                    </div>    
                </form>
            </div>
        </div>
    </div>
</div>


</html>