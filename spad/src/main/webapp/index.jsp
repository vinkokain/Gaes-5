<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	 <title>Milyi </title>
    <link rel="shortcut icon" href="linda/images/logotipopeque.png" type="image/png">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <<link rel="stylesheet" 
	
</head>
<body>
    <div class="row">
	<div class="col-6" id="menu">
             
            </div>
            <div class="col-6" id="menu">
		<form action="inicio.jsp" method="" autocomplete="on" class="logInForm">
			<p class="text-center text-muted"><i class="zmdi zmdi-account-circle zmdi-hc-5x"></i></p>
			<p class="text-center text-muted text-uppercase">Inicia sesión con tu cuenta</p>
			<div class="form-group label-floating">
			  <label class="control-label" for="UserName">Usuario</label>
			  <input class="form-control" id="UserName" type="text" required>
			  <p class="help-block">Escribe tú nombre de usuario</p>
			</div>
			<div class="form-group label-floating">
			  <label class="control-label" for="UserPass">Contraseña</label>
			  <input class="form-control" id="UserPass" type="password" required>
			  <p class="help-block">Escribe tú contraseña</p>
			</div>
			<div class="form-group text-center">
				<div class="sign-up">
					<a href="home.jsp" style="float:right;font-size:12px;">Olvido su contraseña?</a>
				</div>
				
                            <a href="inicio.jsp" type="submit" value=" " class="btn-btn-info" style="color: rgb(15, 170, 62);">ok </a>
			</div>
		</form>
            
	</div>
        </div>
	
	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/material.min.js"></script>
	<script src="js/ripples.min.js"></script>
	<script src="js/sweetalert2.min.js"></script>
	<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="js/main.js"></script>
	
	
</body>
</html>