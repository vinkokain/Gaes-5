<%@page import="modelo.Producto"%>
<%@page import="dao.ProductoDao"%>
<%@page import="modelo.Usuario"%>
<%@page import="dao.UsuarioDao"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<title>Inicio</title>
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
					<a href="UsuarioControlador?accion=listar">
						<i class="zmdi zmdi-book zmdi-hc-fw"></i> Usuarios 
					</a>
					
				</li>
				
				<li>
					<a href="VentaControlador?accion=listar">
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
        
        <section class="full-box dashboard-contentPage">
		<!-- NavBar -->
		<nav class="full-box dashboard-Navbar" style="background:#49663D">
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
			  <h1 class="text-titles"><i class="zmdi zmdi-balance zmdi-hc-fw"></i> Administración <small>Producto</small></h1>
			</div>
			<p class="lead">No tienes que buscar el máximo bienestar, lo tenemos a disposición para tí.
				Ven a nuestro spa y descubrirás de qué se trata aquí.</p>
		</div>

		<div class="container-fluid">
			<ul class="breadcrumb breadcrumb-tabs">
			  	<li>
			  		<a href="VentaControlador?accion=add" class="btn btn-info">
			  			<i class="zmdi zmdi-plus"></i> &nbsp; REGISTRA VENTA
			  		</a>
			  	</li>
			  	<li>
			  		<a href="VentaControlador?accion=listar" class="btn btn-success">
			  			<i class="zmdi zmdi-format-list-bulleted"></i> &nbsp;
			  		</a>
			  	</li>
			</ul>
		</div>

                <!-- inicia formulario -->
		<div class="container-fluid">
			<div class="panel panel-info">
				<div class="panel-heading">
					<h3 class="panel-title"><i class="zmdi zmdi-plus"></i> &nbsp; DATOS DE LA VENTA</h3>
				</div>
				<div class="panel-body">
					<form>
				    	<fieldset>
				    		<legend><i class="zmdi zmdi-assignment"></i> &nbsp; Completar </legend>
				    		<div class="container-fluid">
				    			
		                                                              
                                    
                                    <div >
					<div >
					    <label style="color: black;">Estilista </label>
					    <select  name="cajaIdUsuario" value="" type="number" class="custom-select" required>
                                                
                                                <%
                                                    UsuarioDao dao = new UsuarioDao();
                                                    List<Usuario> list = dao.listar();
                                                    Iterator<Usuario> iter = list.iterator();
                                                    Usuario u = null;
                                                    while (iter.hasNext()) {
                                                        u = iter.next();
                                                %>
                                                <option value="<%= u.getDocUsu()%>"><%= u.getNombreUsu()%></option>
                                                <% } %>
                                            </select>
					</div>
				    </div>
                                    

                                <div class="form-row"><!-- INICIO FILA CARD-BODY -->
                                    <div class="col-sm-6"><!-- COLUMNA 1-->
                                                                               
                                        <label>Codigo Producto/servicio</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text"><i class="fa-solid fa-address-card"></i></div>
                                            </div>
                                            <select  name="cajaIdProdcuto" value="" type="number"class="custom-select" required>
                                                
                                                <%
                                                    ProductoDao dae = new ProductoDao();
                                                    List<Producto> listt = dao.listar();
                                                    Iterator<Producto> iterr = listt.iterator();
                                                    Producto pro = null;
                                                    while (iter.hasNext()) {
                                                        pro = iterr.next();
                                                %>
                                                <option value="<%= pro.getIdPro()%>"><%= pro.getNombrePro()%></option>
                                                <% } %>
                                            </select>
                                            
                                        </div>
                                    </div><!--FIN COLUMNA 1-->  

                                    <div class="col-sm-6"><!--COLUMNA1.1-->
                                        <label>Producto/Servicio</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text"><i class="fa-solid fa-circle-user"></i></div>
                                            </div>
                                            <input name="cajaProducto" value="" type="text" class="form-control" required>
                                              
                                        </div>
                                    </div><!--FIN COLUMNA1.1-->
                                </div><!-- FIN FILA CARD-BODY -->

                                
                                <div class="form-row"><!-- INICIO FILA CARD-BODY -->
                                    <div class="col-sm-6"><!-- COLUMNA 1-->
                                        <label>Cantidad</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text"><i class="fa-solid fa-address-card"></i></div>
                                            </div>
                                            <input name="cajaCant" value="" type="number" class="form-control" placeholder="" required>
                                        </div>
                                    </div><!--FIN COLUMNA 1-->  

                                    <div class="col-sm-6"><!--COLUMNA1.1-->
                                        <label>Fecha</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text"><i class="fa-solid fa-address-card"></i></div>
                                            </div>
                                            <input name="CajaFecha" value="" type="date" class="form-control" placeholder="" required>
                                        </div>
                                    </div><!--FIN COLUMNA1.1--> 
                                </div><!-- FIN FILA CARD-BODY -->
                                
                                <div class="form-row"><!-- INICIO FILA CARD-BODY -->
                                    <div class="col-sm-6"><!-- COLUMNA 1-->
                                        <label>Precio Unitario</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text"><i class="fa-solid fa-address-card"></i></div>
                                            </div>
                                            <input name="cajaPrecio" value="" type="number" class="form-control" required>
                                           </div>
                                    </div><!--FIN COLUMNA 1-->  

                                    <div class="col-sm-6"><!--COLUMNA1.1-->
                                        <label>Total Venta</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text"><i class="fa-solid fa-circle-user"></i></div>
                                            </div>
                                            <input name="CajaTotal" value="" type="number" class="form-control" placeholder="" required>
                                            
                                        </div>
                                    </div><!--FIN COLUMNA1.1--> 
                                </div><!-- FIN FILA CARD-BODY -->
                                                              
                                <hr>
                                <input class="btn btn-success" type="submit" name="accion" value="Agregar">
                            </form>
                            <!-- ==================================================
                            FIN FORMULARIO

                </div>
            </div><!-- FIN FILA -->
        </div><!-- FIN CONTAINER -->

        
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