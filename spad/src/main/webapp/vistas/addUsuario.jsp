<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="dao.UsuarioDao"%>
<%@page import="modelo.Usuario"%>
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
					<a href="UsuarioControlador?accion=listar" class="btn-sideBar-SubMenu">
						<i class="zmdi zmdi-account-add zmdi-hc-fw"></i> Usuarios 
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
			  		<a href="UsuarioControlador?accion=add" class="btn btn-info">
			  			<i class="zmdi zmdi-plus"></i> &nbsp; NUEVO USUARIO
			  		</a>
			  	</li>
			  	<li>
			  		<a href="UsuarioControlador?accion=listar" class="btn btn-success">
			  			<i class="zmdi zmdi-format-list-bulleted"></i> &nbsp;
			  		</a>
			  	</li>
			</ul>
		</div>

		<!-- inicia formulario -->
		<div class="container-fluid">
			<div class="panel panel-info">
				<div class="panel-heading">
					<h3 class="panel-title"><i class="zmdi zmdi-plus"></i> &nbsp; DATOS DEL USUARIO</h3>
				</div>
				<div class="panel-body">
					
            <form>
                <div class="row">
                    <div class="col">
                        <label for="">Numero de documento <span class="red">*</span></label>
                        <input  name="usuId" value="" type="number" class="form-control" required>
                    </div>

                    <div class="col">
                        <label for="numeroderuc">Tipo de documento</label>
                        <select name="usuTipDoc" value="" type="text" class="form-select" aria-label="Seleccione una opción">
                            <option selected>CC</option>
                            <option value="1">CE</option>
                            <option value="2">PS</option>
                        </select>
                    </div>
                </div><br><br>




                <div class="row">
                    <div class="col">
                        <label for="">Nombres del usuario </label>
                        <input name="usuNombre" value="" type="text" class="form-control" required>
                     </div>
                    <div class="col">
                        <label for="">Speliidos del usuario </label>
                        <input name="usuApellido" value="" type="text" class="form-control" required>
                    </div>
                </div><br><br>

                <div class="row">
                    <div class="col">
                        <label for="">Tel/cel <span class="red">*</span></label>
                        <input name="usuTel1" value="" type="text" class="form-control" required>
                    </div>
                    <div class="col">
                        <label for="">Tel/cel acudiente<span class="red">*</span></label>
                        <input name="usuTel2" value="" type="text" class="form-control" required>
                    </div>
                </div><br><br>
                
                <div class="row">
                    <div class="col">
                        <label for="">Correo electronico <span class="red">*</span></label>
                        <input name="usuCorreo" value="" type="email" class="form-control" required>
                    </div>
                    <div class="col">
                        <label for="">Genero de nacimiento<span class="red">*</span></label>
                        <select name="usuSexo" value="" type="text" class="form-select" aria-label="Seleccione una opción">
                            <option selected>Masculino</option>
                            <option value="1">Femenino</option>
                        </select>
                    </div>
                </div><br><br>
                
                <div class="row">
                    <div class="col">
                        <label for="">Rol de usuario<span class="red">*</span></label>
                        <select name="rolUsuario" value="" type="text" class="form-select" aria-label="Seleccione una opción">
                            <option selected>admin</option>
                            <option value="1">vendedor</option>
                        </select>
                    </div>
                    <div class="col">
                        <label for="">Clave <span class="red">*</span></label>
                        <input name="usuClave" value="" type="password" class="form-control" required>
                    </div>
                </div><br><br>


                <div class="row text-center">
                    <p class="col">
                         <button type="reset" class="btn btn-primary mb-2">Regresar</button>
                    </p>
                                                           
                    <p class="col text-center">
                        <button type="submit" class="btn btn-primary mb-2"name="accion" value="Agregar">Enviar</button>
                    </p>
                </div>



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