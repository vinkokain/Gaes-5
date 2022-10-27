<%@page import="modelo.Producto"%>
<%@page import="dao.ProductoDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Harmonie</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="./bootstrap-4.6.1-dist/css/main.css">
    </head>
    <body>
        <!-- SideBar -->
        <section class="full-box cover dashboard-sideBar">
            <div class="full-box dashboard-sideBar-bg btn-menu-dashboard"></div>
            <div class="full-box dashboard-sideBar-ct">
                <!--SideBar Title -->
                <div class="full-box text-uppercase text-center text-titles dashboard-sideBar-title">
                    L'Harmonie <i class="zmdi zmdi-close btn-menu-dashboard visible-xs"></i>
                </div>
                <!-- SideBar User info -->
                <div class="full-box dashboard-sideBar-UserInfo">
                    <figure class="full-box">
                        <img src="bootstrap-4.6.1-dist/assets/avatars/spa.png" alt="UserIcon">
                        <figcaption class="text-center text-titles">Administrador</figcaption>
                    </figure>
                    <ul class="full-box list-unstyled text-center">
                        <li>
                            <a href="my-data.html" title="Mis datos">
                                <i class="zmdi zmdi-account-circle"></i>
                            </a>
                        </li>
                        <li>
                            <a href="./administradores/admin.html" title="Mi cuenta">
                                <i class="zmdi zmdi-settings"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#!" title="Salir del sistema" class="btn-exit-system">
                                <i class="zmdi zmdi-power"></i>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- SideBar Menu -->
                <ul class="list-unstyled full-box dashboard-sideBar-Menu">
                    <li>
                        <a href="inicio.jsp">
                            <i class="zmdi zmdi-view-dashboard zmdi-hc-fw"></i> Home
                        </a>
                    </li>
                    <li>
                        <a href="#!" class="btn-sideBar-SubMenu">
                            <i class="zmdi zmdi-account-add zmdi-hc-fw"></i> Usuarios 
                        </a>
                        <ul class="list-unstyled full-box">

                            <li>
                                <a href="colaborador.html"><i class="zmdi zmdi-face zmdi-hc-fw"></i> Usuarios</a>
                            </li>
                            <li>
                                <a href="client.html"><i class="zmdi zmdi-male-female zmdi-hc-fw"></i> Clientes</a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="servicio.html">
                            <i class="zmdi zmdi-case zmdi-hc-fw"></i> Ventas
                        </a>
                    </li>

                    <li>
                        <a href="#" class="btn-sideBar-SubMenu">
                            <i class="zmdi zmdi-case zmdi-hc-fw"></i> Productos <i class="zmdi zmdi-caret-down pull-right"></i>
                        </a>
                        <ul class="list-unstyled full-box">
                            <li>
                                <a href="ProductoControlador?accion=listar"><i class="zmdi zmdi-book zmdi-hc-fw"></i> Productos</a>
                            </li>
                            <li>
                                <a href="CategoriaControlador?accion=listar"><i class="zmdi zmdi-labels zmdi-hc-fw"></i> Categorías</a>
                            </li>

                        </ul>
                    </li>

                    <li>
                        <a href="catalog.html">
                            <i class="zmdi zmdi-book-image zmdi-hc-fw"></i> Reportes
                        </a>
                    </li>
                </ul>
            </div>
        </section>
        <!-- NAVBAR -->

        <section class="full-box dashboard-contentPage">
            <!-- NavBar -->
            <nav class="full-box dashboard-Navbar" style="background:#49663D"  >
                <ul class="full-box list-unstyled text-right">
                    <li class="pull-left">
                        <a href="#!" class="btn-menu-dashboard"><i class="zmdi zmdi-more-vert"></i></a>
                    </li>
                    <li>
                        <a href="search.html" class="btn-search">
                            <i class="zmdi zmdi-search"></i>
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- Content page -->
            <div class="container-fluid">
                <div class="page-header">
                    <h1 class="text-titles"><i class="zmdi zmdi-city-alt zmdi-hc-fw"></i> Administración <small>Servicios</small></h1>




                    <!-- panel datos de la empresa -->
                    <div class="container-fluid">
                        <div class="panel panel-info">
                            <div class="panel-heading" style="background:#63B840">
                                <h3 class="panel-title" ><i class="zmdi zmdi-plus"  ></i> &nbsp; EDITAR PRODUCTO</h3>
                            </div>
                            <div class="panel-body" style="background:#DDFDD1" >
                                <form>
                                    <fieldset>
                                        <legend><i class="zmdi zmdi-assignment"></i> &nbsp; </legend>
                                        <div class="container-fluid">

                                            <%
                                                ProductoDao dao = new ProductoDao();
                                                int idPro = Integer.parseInt((String) request.getAttribute("editarid"));
                                                Producto p = (Producto) dao.list(idPro);
                                            %>

                                            <div  class="row">
                                                <div class="col-xs-12 col-sm-6">
                                                    <div class="form-group label-floating">
                                                        <label class="control-label" style="color: black;">ID Producto</label>
                                                        <input pattern="[0-9-]{1,30}" class="form-control" name="txtid" value="<%= p.getIdPro()%>" type="number" required="" maxlength="10">
                                                    </div>
                                                </div>


                                                <div class="col-xs-12 col-sm-6">
                                                    <div class="form-group label-floating">
                                                        <label class="control-label" style="color: black;">Nombre Producto </label>
                                                        <input pattern="[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ ]{1,40}" class="form-control" name="txtProducto" value="<%= p.getNombrePro()%>" type="text" required="" maxlength="40">
                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-6">
                                                    <div class="form-group label-floating">
                                                        <label class="control-label" style="color: black;">Descripcion </label>
                                                        <input pattern="[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ ]{1,40}" class="form-control" name="txtDescripcion" value="<%= p.getDescripcionPro()%>" type="text" required="" maxlength="40">
                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-6">
                                                    <div class="form-group label-floating">
                                                        <label class="control-label" style="color: black;">Marca </label>
                                                        <input pattern="[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ ]{1,40}" class="form-control" name="txtMarca" value="<%= p.getMarcaPro()%>" type="text" required="" maxlength="40">
                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-6">
                                                    <div class="form-group label-floating">
                                                        <label class="control-label" style="color: black;">Unidades </label>
                                                        <input pattern="[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ ]{1,40}" class="form-control" name="txtCant" value="<%= p.getCantPro()%>" type="text" required="" maxlength="40">
                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-6">
                                                    <div class="form-group label-floating">
                                                        <label class="control-label" style="color: black;">Precio </label>
                                                        <input pattern="[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ ]{1,40}" class="form-control" name="txtPrecio" value="<%= p.getPrecioPro()%>" type="text" required="" maxlength="40">
                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-6">
                                                    <div class="form-group label-floating">
                                                        <label class="control-label" style="color: black;">Categoria </label>
                                                        <input pattern="[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ ]{1,40}" class="form-control" name="txtCategoria" value="<%= p.getIdCategoriaPro()%>" type="text" required="" maxlength="40">
                                                    </div>
                                                </div>



                                            </div>
                                        </div>
                                    </fieldset>
                                    <br>
                                    <p class="text-center" style="margin-top: 20px;">
                                        <input class="btn btn-warning btn-raised btn-sm" type="submit" name="accion" value="Actualizar">
                                        <a class="btn btn-dark btn-raised btn-sm" href="ProductoControlador?accion=listar">Regresar</a>

                                        <br>
                                </form>
                            </div>
                        </div>
                    </div>

                    </section>



                    <!--====== Scripts -->
                    <script src="./bootstrap-4.6.1-dist/js/jquery-3.1.1.min.js"></script>
                    <script src="./bootstrap-4.6.1-dist/js/sweetalert2.min.js"></script>
                    <script src="./bootstrap-4.6.1-dist/js/bootstrap.min.js"></script>
                    <script src="./bootstrap-4.6.1-dist/js/material.min.js"></script>
                    <script src="./bootstrap-4.6.1-dist/js/ripples.min.js"></script>
                    <script src="./bootstrap-4.6.1-dist/js/jquery.mCustomScrollbar.concat.min.js"></script>
                    <script src="./bootstrap-4.6.1-dist/js/main.js"></script>

                    </body>
                    </html>