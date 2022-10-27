<%@page import="modelo.Usuario" %>
<%@page import="dao.UsuarioDao" %>
<%@page import="java.util.List" %>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
	<title>Inicio</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="bootstrap-4.6.1-dist/css/main.css">
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
                                    <img src="bootstrap-4.6.1-dist/assets/avatars/AdminMaleAvatar.png" alt="UserIcon">
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
                                    <a href="#" class="btn-sideBar-SubMenu">
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

    <!-- NAVBAR -->
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
			  <h1 class="text-titles"><i class="zmdi zmdi-balance zmdi-hc-fw"></i> Administración <small>Usuarios</small></h1>
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

		<!-- panel lista de empresas -->
		<div class="container-fluid">
			<div class="panel panel-success">
				<div class="panel-heading" >
					<h3 class="panel-title"><i class="zmdi zmdi-format-list-bulleted"></i> &nbsp; LISTA DE USUARIOS</h3>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-hover text-center">
					
                    
                    <thead >
                        <tr>
									<th scope="col"class="text-center">Numero de documento</th>
									<th scope="col"class="text-center">Tipo de documento</th>
									<th scope="col"class="text-center">Nombres</th>
									<th scope="col"class="text-center">Apellidos</th>
									<th scope="col"class="text-center">Telefono</th>
									<th scope="col"class="text-center">Telefono 2</th>
									<th scope="col"class="text-center">Correo</th>
                                                                        <th scope="col"class="text-center">sexo</th>
                                                                        <th scope="col"class="text-center">Rol usuario</th>
                                                                        <!--<th scope="col"class="text-center">Clave usuario</th>-->
									<th scope="col"class="text-center">Editar</th>
                                                                        <th scope="col"class="text-center">Eliminar</th>
								</tr>
                                                                <% UsuarioDao dao=new UsuarioDao(); 
                                                                List<Usuario>list = dao.listar();
									Iterator<Usuario>iter = list.iterator();
										Usuario usu = null;
										while(iter.hasNext()){
										usu=iter.next();
										%>

                    </thead>
                    
                    <tbody>
                        
                        <tr>
                            <td><%= usu.getDocUsu() %></td>
                            <td><%= usu.getTipoDocUsu()%></td>
                            <td><%= usu.getNombreUsu()%></td> 
                            <td><%= usu.getApellidoUsu()%></td>
                            <td><%= usu.getTelUnoUsu()%></td>
                            <td><%= usu.getTelDosUsu()%></td>
                            <td><%= usu.getCorreoUsu()%></td>
                            <td><%= usu.getSexoUsu()%></td>
                            <td><%= usu.getRolUsu()%></td>
                       
                            
                            <td>
				<a href="UsuarioControlador?accion=editar&docUsu=<%=usu.getDocUsu()%>" class="btn btn-success btn-raised btn-xs">
					<i class="zmdi zmdi-refresh"></i>
				</a>
			</td>
			<td>
				<a href="UsuarioControlador?accion=eliminar&docUsu=<%=usu.getDocUsu()  %>" type="submit" class="btn  btn-raised btn-xs"> <!-- btn-danger -->
                                        <i class="zmdi zmdi-delete"></i>
                                </a>
										
			</td>
                            
                            
                       </tr>
							<% } %> 
							</tbody>
						</table>
					</div>
					<nav class="text-center">
						<ul class="pagination pagination-sm">
							<li class="disabled"><a href="./javascript:void(0)">«</a></li>
							<li class="active"><a href="./javascript:void(0)">1</a></li>
							<li><a href="javascript:void(0)">2</a></li>
							<li><a href="./javascript:void(0)">3</a></li>
							<li><a href="./javascript:void(0)">4</a></li>
							<li><a href="./javascript:void(0)">5</a></li>
							<li><a href="./javascript:void(0)">»</a></li>
						</ul>
					</nav>
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