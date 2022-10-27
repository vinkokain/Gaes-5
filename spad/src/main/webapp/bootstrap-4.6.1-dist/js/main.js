$(document).ready(function(){
	$('.btn-sideBar-SubMenu').on('click', function(e){
		e.preventDefault();
		var SubMenu=$(this).next('ul');
		var iconBtn=$(this).children('.zmdi-caret-down');
		if(SubMenu.hasClass('show-sideBar-SubMenu')){
			iconBtn.removeClass('zmdi-hc-rotate-180');
			SubMenu.removeClass('show-sideBar-SubMenu');
		}else{
			iconBtn.addClass('zmdi-hc-rotate-180');
			SubMenu.addClass('show-sideBar-SubMenu');
		}
	});
	$('.btn btn-info').on('click', function(e){
		e.preventDefault();
		
		swal({
		  	title: 'Bienvenido',
		  	text: "Hola, desa ingresar?",
		  	type: 'warning',
		  	showCancelButton: true,
		  	confirmButtonColor: '#03A9F4',
		  	cancelButtonColor: '#F44336',
		  	
		}).then(function () {
			window.location.href="home.html";
		});
	});
	$('.btn-exit-system').on('click', function(e){
		e.preventDefault();
		swal({
		  	title: 'Estas seguro?',
		  	text: "La sesión actual se cerrará",
		  	type: 'warning',
		  	showCancelButton: true,
		  	confirmButtonColor: '#03A9F4',
		  	cancelButtonColor: '#F44336',
		  	confirmButtonText: '<i class="zmdi zmdi-run"></i> Si, salir!',
		  	cancelButtonText: '<i class="zmdi zmdi-close-circle"></i> No, Cancelar!'
		}).then(function () {
			window.location.href="index.html";
		});
	});
	$('.btn-danger-pro').on('click', function(e){
		e.preventDefault();
		swal({
		  	title: '¡Precaucion!',
		  	text: "La informacion se borrara del sistema, desea cuntinuar?",
		  	type: 'question',
			width: '35%',
		  	showCancelButton: true,
		  	confirmButtonColor: '#03A9F4',
		  	cancelButtonColor: '#F44336',
		  	confirmButtonText: '<i class="zmdi zmdi-cuentas"></i> Si, Borrar!',
		  	cancelButtonText: '<i class="zmdi zmdi-menos-círculo"></i> No, Cancelar!',
		}).then(function () {
			window.location.href="ProductoControlador?accion=eliminar&idPro=<%= pro.getIdPro()%>";
		});
	});

	$('.btn-danger').on('click', function(e){
		e.preventDefault();
		swal({
		  	title: '¡Precaucion!',
		  	text: "La informacion se borrara del sistema, desea cuntinuar?",
		  	type: 'question',
			width: '35%',
		  	showCancelButton: true,
		  	confirmButtonColor: '#03A9F4',
		  	cancelButtonColor: '#F44336',
		  	confirmButtonText: '<i class="zmdi zmdi-cuentas"></i> Si, Borrar!',
		  	cancelButtonText: '<i class="zmdi zmdi-menos-círculo"></i> No, Cancelar!',
		}).then(function () {
			window.location.href="";
		});
	});





	$('.zmdi-settings').on('click', function(e){
		e.preventDefault();
		swal({
		  	title: '¡hola!',
		  	text: "Porfavor ingresa contraseña de administrador",
		  	type: 'info',
			width: '35%',
		  	showCancelButton: true,
		  	confirmButtonColor: '#03A9F4',
		  	cancelButtonColor: '#F44336',
			input: 'text',
			inputLabel: 'Password',
			inputPlaceholder: 'contraseña',
		}).then(function () {
			window.location.href="./administradores/admin.html";
		});
	});

	$('.btn-menu-dashboard').on('click', function(e){
		e.preventDefault();
		var body=$('.dashboard-contentPage');
		var sidebar=$('.dashboard-sideBar');
		if(sidebar.css('pointer-events')=='none'){
			body.removeClass('no-paddin-left');
			sidebar.removeClass('hide-sidebar').addClass('show-sidebar');
		}else{
			body.addClass('no-paddin-left');
			sidebar.addClass('hide-sidebar').removeClass('show-sidebar');
		}
	});
});
(function($){
    $(window).on("load",function(){
        $(".dashboard-sideBar-ct").mCustomScrollbar({
        	theme:"light-thin",
        	scrollbarPosition: "inside",
        	autoHideScrollbar: true,
        	scrollButtons: {enable: true}
        });
        $(".dashboard-contentPage, .Notifications-body").mCustomScrollbar({
        	theme:"dark-thin",
        	scrollbarPosition: "inside",
        	autoHideScrollbar: true,
        	scrollButtons: {enable: true}
        });
    });
})(jQuery);