<%@page import="modelo.Venta"%>
<%@page import="dao.VentaDao"%>
<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDao"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
			  <h1 class="text-titles"><i class="zmdi zmdi-balance zmdi-hc-fw"></i> Administración <small>Ventas</small></h1>
			</div>
			<p class="lead"></p>
		</div>

		<div class="container-fluid">
			<ul class="breadcrumb breadcrumb-tabs">
			  	<li>
			  		<a href="VentaControlador?accion=add" class="btn btn-info">
			  			<i class="zmdi zmdi-plus"></i> &nbsp; NUEVA VENTA
			  		</a>
			  	</li>
			  	<li>
			  		<a href="VentaControlador?accion=listar" class="btn btn-success">
			  			<i class="zmdi zmdi-format-list-bulleted"></i> &nbsp; 
			  		</a>
			  	</li>
			</ul>
		</div>

            
    <br>
    
    <div class="container"><!-- INICIO CONTAINER -->
        <div class="row"><!-- INICIO FILA -->
            <div class="col-md-12">
                <h2 class="text-center">Modulo Ventas</h2> 
                <a class="btn btn-success" href="VentaControlador?accion=add"><i class="fa-solid fa-user-plus"></i> Nuevo Venta</a>
                <hr>
                <table class="table table-striped">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Usuario</th>
                            <th scope="col">ID Producto</th>
                            <th scope="col">Producto</th>
                            <th scope="col">Cant</th>
                            <th scope="col">Fecha V</th>
                            <th scope="col">V. Unitario</th>
                            <th scope="col">Total</th>
                            <th scope="col"class="text-center">Editar</th>
                            <th scope="col"class="text-center">Eliminar</th>
                        </tr>
                    </thead>
                    <%
                        VentaDao dao = new VentaDao();
                        List<Venta>list = dao.listar();
                        Iterator<Venta>iter = list.iterator();
                        Venta ven = null;
                        while(iter.hasNext()){
                        ven=iter.next();
                    %>
                    <tbody>
                        
                        <tr>
                            <td><%= ven.getId()%></td>
                            <td><%= ven.getDocUsu()%></td>
                            <td><%= ven.getIdP()%></td>
                            <td><%= ven.getNombreP()%></td>
                            <td><%= ven.getCant()%></td>
                            <td><%= ven.getFechaV()%></td>
                            <td><%= ven.getPrecioProV()%></td>
                            <td><%= ven.getPrecT()%></td>
                                                        
                            <td>
                                <a href="VentaControlador?accion=editar&id=<%= ven.getId()%>" class="btn btn-success btn-raised btn-xs">
                                    <i class="zmdi zmdi-refresh"></i>
                                </a>
                            </td>
                            <td>


                                <input type="hidden" id="codigo" value="<%= ven.getId()%>" />
                                <a id="deleteUser" href="VentaControlador?accion=eliminar&id=<%= ven.getId()%>" type="submit" class="btn  btn-raised btn-xs"> <!-- btn-danger -->
                                    <i class="zmdi zmdi-delete"></i> 
                                </a>

                            </td>
                        </tr>
                    <% } %>    
                    </tbody>

                </table>
            </div>

            <div class="col-md-0">

            </div>
        </div><!-- FIN FILA -->
    </div><!-- FIN CONTAINER -->
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