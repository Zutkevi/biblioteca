<?php
session_start();
include("admin/conexion.php");
if(isset($_SESSION['usuario']))
 {
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Biblioteca Virtual | Contacto</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">

</head>

<body>
	 <?php include ('includes/header.php');?>
	 <br>
	 <div id="contact-page" class="container">
    	<div class="bg">
	    	<div class="row">    		
	    		<div class="col-sm-12">    			   			
					<h2 class="title text-center">Nuestra Ubicacion<strong></strong></h2>    			    				    				
					<div id="gmap" class="contact-map">
					<iframe src="https://www.google.com/maps/place/Instituci%C3%B3n+Educativa+Ram%C3%B3n+M%C3%BAnera+Lopera/@6.2692842,-75.5436859,15z/data=!4m2!3m1!1s0x0:0x55a9a5d09a7e5710?sa=X&ved=2ahUKEwjbrKOd57D6AhWisoQIHR_BDT8Q_BJ6BAg1EAU" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
					<br>
       <small>
      <a href="https://www.google.com/maps/place/Instituci%C3%B3n+Educativa+Ram%C3%B3n+M%C3%BAnera+Lopera/@6.2692842,-75.5436859,15z/data=!4m2!3m1!1s0x0:0x55a9a5d09a7e5710?sa=X&ved=2ahUKEwjbrKOd57D6AhWisoQIHR_BDT8Q_BJ6BAg1EAU"><B>Ver en Mapa<B></a>
       </small>
					</div>
				</div>			 		
			</div>  
			<br>
			<br>        	
		<div class="row">  	
	    		<div class="col-sm-8">
	    			<div class="contact-form">
	    				<h2 class="title text-center">Escribenos </h2>
	    				<div class="status alert alert-success" style="display: none"></div>
				    	<form id="main-contact-form" action="funciones_php/validar_mensaje.php" class="contact-form row" name="contact-form" method="post">
				            <div class="form-group col-md-6">
				                <input type="text" name="nombre" class="form-control" required placeholder="Nombre">
				            </div>
				            <div class="form-group col-md-6">
				                <input type="email" name="email" class="form-control" required placeholder="Email">
				            </div>
				            <div class="form-group col-md-12">
				                <input type="text" name="asunto" class="form-control" required placeholder="Asunto">
				            </div>
				            <div class="form-group col-md-12">
				                <textarea name="mensaje" id="message" required class="form-control" rows="8" placeholder="Escribe tu mensaje"></textarea>
				            </div>                        
				            <div class="form-group col-md-12">
				                <input type="submit" name="submit" class="btn btn-primary pull-right" value="Enviar Mensaje">
				            </div>
				        </form>
	    			</div>
	    		</div>
	    		<div class="col-sm-4">
	    			<div class="contact-info">
	    				<h2 class="title text-center">Informacion de Biblioteca</h2>
	    				<address>
	    					<p>Biblioteca Virtual</p>
							<p>De los semaforos de la gasoliner Esso 5C. al Este</p>
							<p>Juigalpa, Chontales</p>
							<p>Telefono: 2512344</p>
							<p>Celular: 83848448</p>
							<p>Email: unijuigalpa@yahoo.com</p>
	    				</address>
	    			</div>
    			</div>    			
	    	</div>  
    	</div>	
    </div><!--/#contact-page-->
	 <?php include ('includes/footer.php');?>

    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script type="text/javascript" src="js/gmaps.js"></script>
	<script src="js/contact.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
<?php include "log.php"; ?>
<?php
}else{
    echo '<script> window.location="index.php"; </script>';
}
?>