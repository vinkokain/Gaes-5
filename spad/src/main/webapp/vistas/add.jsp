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
					<a href="index.jsp">
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
                                                    <a href="CategoriaControlador?accion=listar"><i class="zmdi zmdi-labels zmdi-hc-fw"></i> Categor??as</a>
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

	<!-- Content page-->
	<section class="full-box dashboard-contentPage"  >
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
			<div class="page-header" >
			  <h1 class="text-titles"><i class="zmdi zmdi-balance zmdi-hc-fw"></i> Administraci??n <small>Categoria</small></h1>
			</div>
			<p class="lead">No tienes que buscar el m??ximo bienestar, lo tenemos a disposici??n para t??.
				Ven a nuestro spa y descubrir??s de qu?? se trata aqu??.</p>
		</div>

		<div class="container-fluid">
			<ul class="breadcrumb breadcrumb-tabs">
			  	<li>
			  		<a href="CategoriaControlador?accion=add" class="btn btn-info">
			  			<i class="zmdi zmdi-plus"></i> &nbsp; NUEVA CATEGORIA
			  		</a>
			  	</li>
			  	<li>
			  		<a href="CategoriaControlador?accion=listar" class="btn btn-success">
			  			<i class="zmdi zmdi-format-list-bulleted"></i> &nbsp; 
			  		</a>
			  	</li>
			</ul>
                </div>

                <div class="container-fluid">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="zmdi zmdi-plus"></i> &nbsp; DATOS DE LA CATEGORIA</h3>
                        </div>
                        <div class="panel-body">
                            <form>
                                <fieldset>
                                    <legend><i class="zmdi zmdi-assignment"></i> &nbsp; Completar </legend>
                                    <div class="container-fluid">
                                        <div class="row">

              <div class="col-xs-12 col-sm-6">
			<div class="form-group label-floating">
			   <label class="control-label" style="color: black;">ID Categoria *</label>
			   <input pattern="[0-9$]{1,15}" class="form-control" name="txtid" value="" type="number" class="form-control" maxlength="4" required>
			</div>
	     </div>
                                            
	     <div class="col-xs-12 col-sm-6">
			<div class="form-group label-floating">
				<label class="control-label" style="color: black;">Categoria</label>
				<input  class="form-control" name="txtnombre" value="" type="text" required >
			</div>
	     </div>                                    

</div>
				    		</div>
				    	</fieldset>
				    	
						
					    <p class="text-center" style="margin-top: 20px;">
					    	<button type="submit" class="btn btn-info btn-raised btn-sm" name="accion" value="Agregar"><i class="zmdi zmdi-floppy"></i> Guardar</button>
					    </p>
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