<?php

$servidor = Ruta::ctrRutaServidor();


?>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<title>Steel Planet</title>

		<script src="https://kit.fontawesome.com/c39c7b9a5b.js" crossorigin="anonymous"></script>
		<!-- FONTS DE GOOGLE -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
"
          <!--======================================
			ARCHIVOS CSS PLUGINS 
		==========================================-->


		<!--======================================
			ARCHIVOS CSS PLUGINS 
		==========================================-->
		<link type="text/css" rel="stylesheet" href="vistas/css/plugins/bootstrap.min.css"/>
	
		<link rel="stylesheet" href="vistas/css/plugins/flexslider.css">


        <!--======================================
		HOJAS DE ESTILO PLANTILLA UTILIZADA
		==========================================-->
             <!-- Slick -->
		<link type="text/css" rel="stylesheet" href="vistas/css/plugins/slick.css"/>
		<link type="text/css" rel="stylesheet" href="vistas/css/plugins/slick-theme.css"/>


		<!-- nouislider -->
		<link type="text/css" rel="stylesheet" href="vistas/css/plugins/nouislider.min.css"/>

		<!-- Font Awesome Icon -->
		

		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="vistas/css/plugins/style.css"/>
         
        <!--======================================
		HOJAS DE ESTILO CARUCEL MARCAS
		==========================================-->
		<link rel="stylesheet" href="vistas/css/plugins/marcas.css">
		<link rel="stylesheet" href="vistas/css/plugins/owl.carousel.css">
		<link rel="stylesheet" href="vistas/css/plugins/owl.theme.default.css">

		<!--=====================================
		HOJAS DE ESTILO PROPIAS
		======================================-->
		<link type="text/css" rel="stylesheet" href="vistas/css/cabezote.css"/>
		<link type="text/css" rel="stylesheet" href="vistas/css/slide.css"/>
		<link type="text/css" rel="stylesheet" href="vistas/css/plantilla.css"/>
		<link type="text/css" rel="stylesheet" href="vistas/css/redesSociales.css"/>
		<link type="text/css" rel="stylesheet" href="vistas/css/noticias.css"/>



    </head>
	<body>
		
	     <!-- ===== barra de social estatica =====-->
		 <div  id="contenedorsocial">
		 <div class="social">
			<a href="http://www.facebook.com"  target="_blank" class="icon icon-facebook2"><i class="fab fa-facebook-square"></i></a>
			<a href="http://www.twitter.com" target="_blank" class="icon icon-twitter"><i class="fab fa-twitter"></i></a>
			<a href="http://www.googleplus.com" target="_blank" class="icon icon-google-plus"><i class="fab fa-google"></i></a>
			<a href="http://www.pinterest.com" target="_blank" class="icon icon-instagram de"><i class="fab fa-instagram"></i></a>
			<a href="mailto:gerencia@steelplanet.com.co" class="icon icon-uniE4"><i class="fa fa-at"></i></a>
		</div>
		</div>

		<!-- boton flotante-->
		<div class="fixed-action-btn">
    		 <a class="btn-floating btn-large red">
       		   <i class="large material-icons">mode_edit</i></a>
				<ul>
				<li><a href="" class="btn-floating red"><i class="material-icons">insert_chart</i></a></li>
				<li><a href=""class="btn-floating yellow darken-1"><i class="material-icons">format_quote</i></a></li>
				<li><a href=""class="btn-floating green"><i class="material-icons">publish</i></a></li>
				<li><a href=""class="btn-floating blue"><i class="material-icons">attach_file</i></a></li>
				</ul>
      </div>

		<!-- HEADER -->
		<header>
			<!-- TOP HEADER -->
			<div id="top-header">
				<div class="container">
					<ul class="header-links pull-left">
						<li><a href="#"><i class="fa fa-phone"></i> +57 3176768349</a></li>
						<li><a href="#"><i class="fa fa-phone"></i> +57 3176768349</a></li>
						<li><a href="#"><i class="fa fa-envelope-o"></i> gerencia@steelplanet.com.co</a></li>
					
					</ul>
					<ul class="header-links pull-right">
						<li><a href="#"><i class="fa fa-globe"></i>IDIOMA</a></li>
						<li><a href="#"><i class="fas fa-sign-in-alt"></i>LOGIN</a></li>
					</ul>
				</div>
			</div>
			<!-- /TOP HEADER -->

			<!-- MAIN HEADER -->
			<div id="header">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<!-- LOGO -->
						<div class="col-md-3 logotipo">
							<div>
								<a href="#" class="logo">
									<img src="<?php echo$servidor; ?>view/img/img/logo.png" alt="" >
								</a>
							</div>
						</div>
						<!-- /LOGO -->

						<!-- SEARCH BAR -->
						<div class="col-md-6">
							<div class="header-search">
								<form>
									<select class="input-select">
										<option value="0">Categorias</option>
										<option value="1">Maquinaria</option>
										<option value="1">Herramientas</option>
										<option value="1">Consumibles</option>
										<option value="1">usado</option>


									</select>
									<input class="input" placeholder="Search here">
									<button class="search-btn">Search</button>
								</form>
							</div>
						</div>
						<!-- /SEARCH BAR -->

						<!-- ACCOUNT -->
						<div class="col-md-3 clearfix">
							<div class="header-ctn">
								<!-- Wishlist -->
								<div>
									<a href="#">
										<i class="fa fa-heart-o"></i>
										<span>Your Wishlist</span>
										<div class="qty">2</div>
									</a>
								</div>
								<!-- /Wishlist -->

								<!-- Cart -->
								<div class="dropdown">
									<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
										<i class="fa fa-shopping-cart"></i>
										<span>Your Cart</span>
										<div class="qty">3</div>
									</a>
									<div class="cart-dropdown">
										<div class="cart-list">
											<div class="product-widget">
												<div class="product-img">
													<img src="<?php echo$servidor; ?>view/img/img/product01.png" alt="">
												</div>
												<div class="product-body">
													<h3 class="product-name"><a href="#">product name goes here</a></h3>
													<h4 class="product-price"><span class="qty">1x</span>$980.00</h4>
												</div>
												<button class="delete"><i class="fa fa-close"></i></button>
											</div>

											<div class="product-widget">
												<div class="product-img">
													<img src="<?php echo$servidor; ?>view/img/img/product02.png" alt="">
												</div>
												<div class="product-body">
													<h3 class="product-name"><a href="#">product name goes here</a></h3>
													<h4 class="product-price"><span class="qty">3x</span>$980.00</h4>
												</div>
												<button class="delete"><i class="fa fa-close"></i></button>
											</div>
										</div>
										<div class="cart-summary">
											<small>3 Item(s) selected</small>
											<h5>SUBTOTAL: $2940.00</h5>
										</div>
										<div class="cart-btns">
											<a href="#">View Cart</a>
											<a href="#">Checkout  <i class="fa fa-arrow-circle-right"></i></a>
										</div>
									</div>
								</div>
								<!-- /Cart -->

								<!-- Menu Toogle -->
								<div class="menu-toggle">
									<a href="#">
										<i class="fa fa-bars"></i>
										<span>Menu</span>
									</a>
								</div>
								<!-- /Menu Toogle -->
							</div>
						</div>
						<!-- /ACCOUNT -->
					</div>
					<!-- row -->
				</div>
				<!-- container -->
			</div>
			<!-- /MAIN HEADER -->
		</header>
		<!-- /HEADER -->

		<!-- NAVIGATION -->
		<nav id="navigation">
			<!-- container -->
			<div class="container">
				<!-- responsive-nav -->
				<div id="responsive-nav">
					<!-- NAV -->
					<ul class="main-nav nav navbar-nav">
						<li class="active"><a href="#">INICIO</a></li>
						<li><a href="#">Acerca de</a></li>
						<li><a href="#">Socios Comerciales</a></li>
						<li><a href="#">Productos</a></li>
						<li><a href="#">Servicios</a></li>
						<li><a href="#">Novedades</a></li>
						<li><a href="#">Contacto</a></li>
					</ul>
					<!-- /NAV -->
				</div>
				<!-- /responsive-nav -->
			</div>
			<!-- /container -->
		</nav>
		<!-- /NAVIGATION -->
		 <?php
		 include "modulos/slide.php";
		 ?>
		


		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<h3 class="tituloMaquinaria">nuestra maquinaria</h3>
				<div class="row">
					<!-- shop -->
					<div class="col-md-4 col-xs-6">
						<div class="shop">
							<div class="shop-img">
								<img src="<?php echo$servidor; ?>view/img/img/taladrado.jpg" alt="">
							</div>
							<div class="shop-body">
								<h3>Maquinaria para<br>TALADRADO</h3>
								<a href="#" class="cta-btn">Ver ahora <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
					<!-- /shop -->

					<!-- shop -->
					<div class="col-md-4 col-xs-6">
						<div class="shop">
							<div class="shop-img">
								<img src="<?php echo$servidor; ?>view/img/img/punzonado.jpg" alt="">
							</div>
							<div class="shop-body">
								<h3>Maquinaria para<br>PUNZONADO</h3>
								<a href="#" class="cta-btn">Ver ahora  <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
					<!-- /shop -->

					<!-- shop -->
					<div class="col-md-4 col-xs-6">
						<div class="shop">
							<div class="shop-img">
								<img src="<?php echo$servidor; ?>view/img/img/termico.jpg" alt="">
							</div>
							<div class="shop-body">
								<h3>Maquinaria para<br>CORTE TERMICO</h3>
								<a href="#" class="cta-btn">Ver ahora <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
					<!-- /shop -->
				</div>
				<!-- /row -->


						<!-- row -->
						<div class="row">
					<!-- shop -->
					<div class="col-md-4 col-xs-6">
						<div class="shop">
							<div class="shop-img">
								<img src="<?php echo$servidor; ?>view/img/img/curvado.jpg" alt="">
							</div>
							<div class="shop-body">
								<h3>Maquinaria para<br>CURVADO</h3>
								<a href="#" class="cta-btn">Ver ahora <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
					<!-- /shop -->

					<!-- shop -->
					<div class="col-md-4 col-xs-6">
						<div class="shop">
							<div class="shop-img">
								<img src="<?php echo$servidor; ?>view/img/img/soldadura.jpg" alt="">
							</div>
							<div class="shop-body">
								<h3>Maquinaria para<br>SOLDADURA</h3>
								<a href="#" class="cta-btn">Ver ahora <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
					<!-- /shop -->

					<!-- shop -->
					<div class="col-md-4 col-xs-6">
						<div class="shop">
							<div class="shop-img">
								<img src="<?php echo$servidor; ?>view/img/img/doblado.jpg" alt="">
							</div>
							<div class="shop-body">
								<h3>Maquinaria para<br>DOBLADO</h3>
								<a href="#" class="cta-btn">Ver ahora <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
					<!-- /shop -->
				</div>
				<!-- /row -->

						<!-- row -->
						<div class="row">
					<!-- shop -->
					<div class="col-md-4 col-xs-6">
						<div class="shop">
							<div class="shop-img">
								<img src="<?php echo$servidor; ?>view/img/img/perfilado.jpg" alt="">
							</div>
							<div class="shop-body">
								<h3>Maquinaria para<br>PERFILADO</h3>
								<a href="#" class="cta-btn">Ver ahora <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
					<!-- /shop -->

					<!-- shop -->
					<div class="col-md-4 col-xs-6">
						<div class="shop">
							<div class="shop-img">
								<img src="<?php echo$servidor; ?>view/img/img/impresion.jpg" alt="">
							</div>
							<div class="shop-body">
								<h3>Maquinaria para<br>IMPRESION 3D</h3>
								<a href="#" class="cta-btn">Ver ahora <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
					<!-- /shop -->

					<!-- shop -->
					<div class="col-md-4 col-xs-6">
						<div class="shop">
							<div class="shop-img">
								<img src="<?php echo$servidor; ?>view/img/img/usado.jpg" alt="">
							</div>
							<div class="shop-body">
								<h3>Maquinaria<br>USADA</h3>
								<a href="#" class="cta-btn">Ver ahora <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
					<!-- /shop -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">

				<!-- row -->
				<div class="row">

					<!-- section title -->
					<div class="col-md-12">
						<div class="section-title">
							<h3 class="title">REPUESTOS Y CONSUMIBLES</h3>
						
						</div>
					</div>
					<!-- /section title -->

					<!-- Products tab & slick -->
					<div class="col-md-12">
						<div class="row">
							<div class="products-tabs">
								<!-- tab -->
								<div id="tab1" class="tab-pane active">
									<div class="products-slick" data-nav="#slick-nav-1">
										<!-- product -->
										<div class="product">
											<div class="product-img">

											
												<img src="<?php echo$servidor; ?>view/img/img/producto1.png" alt="">
										     
											</div>
											<div class="product-body">
												<p class="product-category">Category</p>
												<h3 class="product-name"><a href="#">product name goes here</a></h3>
												
												<div class="product-btns">
													<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">Ver</span></button>
												</div>
											</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa fa-heart-o"></i>Agregar a Deceos</button>
											</div>
										</div>
										<!-- /product -->

											<!-- product -->
											<div class="product">
											<div class="product-img">
												<img src="<?php echo$servidor; ?>view/img/img/producto2.png" alt="">
											</div>
											<div class="product-body">
												<p class="product-category">Category</p>
												<h3 class="product-name"><a href="#">product name goes here</a></h3>
												
												<div class="product-btns">
													<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">Ver</span></button>
												</div>
											</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa fa-heart-o"></i>Agregar a Deceos</button>
											</div>
										</div>
										<!-- /product -->

											<!-- product -->
										<div class="product">
											<div class="product-img">
												<img src="<?php echo$servidor; ?>view/img/img/producto3.png" alt="">
											</div>
											<div class="product-body">
												<p class="product-category">Category</p>
												<h3 class="product-name"><a href="#">product name goes here</a></h3>
												
												<div class="product-btns">
													<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">Ver</span></button>
												</div>
											</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa fa-heart-o"></i>Agregar a Deceos</button>
											</div>
										</div>
										<!-- /product -->


										<!-- product -->
										<div class="product">
											<div class="product-img">
												<img src="<?php echo$servidor; ?>view/img/img/producto1.png" alt="">
											</div>
											<div class="product-body">
												<p class="product-category">Category</p>
												<h3 class="product-name"><a href="#">product name goes here</a></h3>
												
												<div class="product-btns">
													<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">Ver</span></button>
												</div>
											</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa fa-heart-o"></i>Agregar a Deceos</button>
											</div>
										</div>
										<!-- /product -->

											<!-- product -->
											<div class="product">
											<div class="product-img">
												<img src="<?php echo$servidor; ?>view/img/img/producto5.png" alt="">
											</div>
											<div class="product-body">
												<p class="product-category">Category</p>
												<h3 class="product-name"><a href="#">product name goes here</a></h3>
												
												<div class="product-btns">
													<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">Ver</span></button>
												</div>
											</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa fa-heart-o"></i>Agregar a Deceos</button>
											</div>
										</div>
										<!-- /product -->
											<!-- product -->
											<div class="product">
											<div class="product-img">
												<img src="<?php echo$servidor; ?>view/img/img/producto2.png" alt="">
											</div>
											<div class="product-body">
												<p class="product-category">Category</p>
												<h3 class="product-name"><a href="#">product name goes here</a></h3>
												
												<div class="product-btns">
													<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">Ver</span></button>
												</div>
											</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa fa-heart-o"></i>Agregar a Deceos</button>
											</div>
										</div>
										<!-- /product -->
									</div>
									<div id="slick-nav-1" class="products-slick-nav"></div>
								</div>
								<!-- /tab -->
							</div>
						</div>
					</div>
					<!-- Products tab & slick -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->
</div>
		
		<!--- NOTICIAS SECTION-->
<header>
		<div id ="Sec-noticias" class="noticias">
    <div class="container">
			
        <div class="row1">	
<!--NOVEDADES-->

		<div class="example-2 card">
			<div class="wrapper"><img src="<?php echo$servidor; ?>view/img/img/impresion.jpg"  alt="">
				<div class="data">
					<div class="content">
					<span class="author">Novedades</span>
					<h1 class="title"><a href="#">Fabricación aditiva 3D</a></h1>
					<p class="text">ENA VISION La primera impresora 3D de metal de Turquía ...</p>
					<a href="#" class="button">VER MÁS</a>
					</div>
				</div>
		  	</div>
		</div>
<!--NOTICIAS--> 
		<div class="example-2 card">
            <div class="wrapper"><img src="<?php echo$servidor; ?>view/img/img/noticia1.jpg"  alt="">
              <div class="data">
                <div class="content">
                  <span class="author">Noticias</span>
                  <h1 class="title"><a href="#">Video Corporativo de FICEP</a></h1>
                  <p class="text">¿Quieres saber por qué somos considerados los líderes y qué hay detrás de nuestro liderazgo?</p>
                  <a href="#" class="button">VER MÁS</a>
                </div>
              </div>
            </div>
		</div>
<!--EVENTOS-->
        <div class="example-2 card">
			<div class="wrapper"><img src="<?php echo$servidor; ?>view/img/img/evento.jpg"  alt="">
				<div class="data">
					<div class="content">
						<span class="author">Eventos</span>
						<h1 class="title"><a href="#">13.01.20 - 16.01.20 STEEL FAB 2020</a></h1>
						<p class="text">Pronto comenzará un nuevo año y, como cada año, nuestra temporada de exposiciones comenzará desde los EAU con STEEL FAB.</p>
						<a href="#" class="button">VER MÁS</a>
					</div>
                </div>
			</div>
		</div>
</header>
<!--CONTACTO-->
    <div class="container">
        <div class="container" > 
            
            <h3>Formulario de contacto </h3>
            <div class="container" float=right;>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3978.7254998802573!2d-74.4176068129518!3d4.273490425072887!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e3f1d28ec37cf8d%3A0xcd039dbf608396dc!2sSTEEL%20PLANET%20SAS!5e0!3m2!1ses-419!2sco!4v1576778447941!5m2!1ses-419!2sco" width= "400" height="150" frameborder="0" style="border:0;" allowfullscreen=""></iframe></div>
            
                <br>
                <strong>Contactenos</strong><br><strong>Email: </strong>gerencia@steelplanet.com.co<br><strong>Telefono:</strong> (+57)3176768349 -  (+57) 3173009651 <br><strong>Santiago Acosta </strong> <br>Gerente General
            <hr>
            
        </div>
        <div class="contacto" id="container1">
            
            <form role="form" id="Formulario" action="../php/contacto2.php" method="POST" >
                <div class="form-group" >
                    <style>
                        .contacto{
							width: 60%;
							height:50%;
							float: left;
						}
                        </style> 
                    <label class="control-label" for="Nombre">Nombres</label>
                    <input type="text" class="form-control" id="Nombre" name="Nombre" placeholder="Introduzca su nombre" required autofocus />
                </div>            
                <div class="form-group">
                    <label class="control-label" for="Motivo">Motivo de Contacto</label>
                    <select name="Motivo" class="form-control">
                        <option value="Consulta General">Consulta General</option>
                        <option value="Realizar Pedido">Solicitud de asesoramiento</option>
                        <option value="Informe un problema">Asistencia Tecnica</option>
                        <option value="Informe un problema">Asistencia Tecnica</option>
                    </select>
                </div>
                <div class="form-group">
                    <label class="control-label" for="Empresa">Empresa</label>
                    <input type="text" class="form-control" id="Empresa" name="Empresa" placeholder="Introduzca el nombre de su empresa" required />
                </div>
                <div class="form-group">
                    <label class="control-label" for="Correo">Dirección de Correo Electrónico</label>
                    <input type="email" class="form-control" id="Correo" name="Correo" placeholder="Introduzca su correo electrónico" required />
                </div>
                <div class="form-group">
                    <label class="control-label" for="Telefono">Numero de Telefono</label>
                    <input type="tel" class="form-control" id="Telefono" name="Telefono" placeholder="Introduzca su numero de Telefono" required pattern="[0-9]{9}"  />
                </div>
                <div class="form-group">
                    <label class="control-label" for="Mensaje">Mensaje</label>
                    <textarea rows="5" cols="30" class="form-control" id="Mensaje" name="Mensaje" placeholder="Introduzca su mensaje" required ></textarea>
                </div>
                <div class="form-group">                
                    <input type="submit" class="btn btn-primary" value="Enviar">
                    <input type="reset" class="btn btn-default" value="Limpiar">                
                </div>
                <div id="respuesta" style="display: none;"></div>
            </form>
        </div>       
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../js/jquery.min.js"><\/script>')</script>
    <script src="../js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../js/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../js/ie10-viewport-bug-workaround.js"></script>

</body>

		<!-- HOT DEAL SECTION -->
		<div id="hot-deal" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<div class="hot-deal">
							<h2 class="text-uppercase">NUESTRAS MARCAS</h2>
									<div class="wrapper">
										<div class="client-carousel section-padding owl-carousel">
											<div class="img-area">
												<img src="imag/ficep.png" alt="">
											</div>
											<div class="img-area">
												<img src="imag/corimpex.png" alt="">
											</div>
											<div class="img-area">
													<img src="imag/cloos.png" alt="">
											</div>
											<div class="img-area">
												<img src="imag/ermaksan.png" alt="">
											</div>
											<div class="img-area">
												<img src="imag/turbotecnica.png" alt="" width="20px">
											</div>
											<div class="img-area">
												<img src="imag/amob.png" alt="">
											</div>
										</div>
									</div>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /HOT DEAL SECTION -->
		<!-- ================noticias=============================================-->
		
	

		
		<!-- FOOTER -->
		<footer id="footer">
			<!-- top footer -->
			<div class="section">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Acerca de </h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.</p>
								<ul class="footer-links">
									<li><a href="#"><i class="fa fa-map-marker"></i></a></li>
									<li><a href="#"><i class="fa fa-phone"></i>+57 3176768349</a></li>
									<li><a href="#"><i class="fa fa-envelope-o"></i>gerencia@steelplanet.com.co</a></li>
								</ul>
							</div>
						</div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Categorias</h3>
								<ul class="footer-links">
									<li><a href="#">Maquinaria</a></li>
									<li><a href="#">Repuestos y consumibles</a></li>
									<li><a href="#">Herramientas</a></li>
									<li><a href="#">Maquinaria usada</a></li>
									<li><a href="#">Solicitar asesoria Gratuita</a></li>
								</ul>
							</div>
						</div>

						<div class="clearfix visible-xs"></div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Informacion</h3>
								<ul class="footer-links">
									<li><a href="#">Quienes somos</a></li>
									<li><a href="#">Contactanos</a></li>
									<li><a href="#">Privacy Policy</a></li>
									<li><a href="#">Orders and Returns</a></li>
									<li><a href="#">Terms & Conditions</a></li>
								</ul>
							</div>
						</div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Servicios</h3>
								<ul class="footer-links">
									<li><a href="#">Mi cuenta</a></li>
									<li><a href="#">lista de deseos</a></li>
									<li><a href="#">Mis solicitudes</a></li>
									<li><a href="#">Asistencia tecnica</a></li>
									<li><a href="#">Capacitaciones</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /top footer -->

			<!-- bottom footer -->
			<div id="bottom-footer" class="section">
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-12 text-center">
							<span class="copyright">
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved |  <i class="fa fa-heart-o" aria-hidden="true"></i> by Steel Planet</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</span>
						</div>
					</div>
						<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /bottom footer -->
		</footer>
		<!-- /FOOTER -->

		<!--======================================
			ARCHIVOS JAVASCRIPT PLUGINS 
		==========================================-->
		<script src="vistas/js/plugins/jquery.min.js"></script>
		<script src="vistas/js/plugins/bootstrap.min.js"></script>
		<script src="vistas/js/plugins/slick.min.js"></script>
		<script src="vistas/js/plugins/nouislider.min.js"></script>
		<script src="vistas/js/plugins/jquery.zoom.min.js"></script>
		<script src="vistas/js/plugins/main.js"></script>

		<script src="vistas/js/plugins/jquery.flexslider.js"></script>
		<script src="vistas/js/plugins/jquery.easing.js"></script>
		<script src="vistas/js/plugins/owl.carousel.min.js"></script>

        
		<!--======================================
			ARCHIVOS JAVASCRIPT PROPIOS 
		==========================================-->
		<script src="vistas/js/slide.js"></script>
		<script src="vistas/js/plantilla.js"></script>
		<script src="vistas/js/noticias.js"></script>

		
		<script>
        $('.client-carousel').owlCarousel({
            loop:true,
            margin:40,
            autoplay: true,
            autoplaySpeed:3000,
             responsive:{
                0:{
                    items:1
                },
                600:{
                    items:3
                },
                1000:{
                    items:5
                }
            }

        })
    </script>

	</body>
</html>
