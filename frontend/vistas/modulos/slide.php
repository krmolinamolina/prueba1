<!--=====================================
SLIDESHOW  
======================================-->

<div class="container-fluid" id="slide">
	
	<div class="row">
		
		<!--=====================================
		DIAPOSITIVAS
		======================================-->

		<ul>
   
		<?php


				$slide = ControladorSlide::ctrMostrarSlide();

				foreach ($slide as $key => $value) {	


					$estiloImgProducto = json_decode($value["estiloImgProducto"], true);
					$estiloTextoSlide = json_decode($value["estiloTextoSlide"], true);
					$titulo1 = json_decode($value["titulo1"], true);
					$titulo2 = json_decode($value["titulo2"], true);
					$titulo3 = json_decode($value["titulo3"], true);
			
			echo'<li>
				
				<img src="'.$servidor.$value["imgFondo"].'">

				<div class="slideOpciones '.$value["tipoSlide"].'">';
				 
				if($value["imgProducto"] != ""){
					echo '<img class="imgProducto" src="'.$servidor.$value["imgProducto"].'" style="top:'.$estiloImgProducto["top"].'%; right:'.$estiloImgProducto["right"].'%; width:'.$estiloImgProducto["width"].'%; left:'.$estiloImgProducto["left"].'%">';
				}

				echo'<div class="textosSlide" style="top:'.$estiloTextoSlide["top"].'%; left:'.$estiloTextoSlide["left"].'%; width:'.$estiloTextoSlide["width"].'%; right:'.$estiloTextoSlide["right"].'%">
									
					<h1 style="color:'.$titulo1["color"].'">'.$titulo1["texto"].'</h1>

					<h2 style="color:'.$titulo2["color"].'">'.$titulo2["texto"].'</h2>

					<h3 style="color:'.$titulo3["color"].'">'.$titulo3["texto"].'</h3>';

					if($value["boton"] != ""){

						echo '<a href="'.$value["url"].'">
							
							<button class="btn btn-default backColor text-uppercase">

							'.$value["boton"].' <span class="fa fa-chevron-right"></span>

							</button>

						</a>';

					}

					echo'</div>	

				</div>

			</li>';
			
			/*

			<!-- SLIDE 2 -->
		
			<li>
				
				<img src="http://localhost/focus/img/maquina2.jpg">

				<div class="slideOpciones slideOpcion2">
					
					<img class="imgProducto" src="" style="top:5%; left:15%; width:25%">

					<div class="textosSlide" style="top:15%; right:15%; width:40%">
						
						<h1 style="color:#333">Lorem Ipsum</h1>

						<h2 style="color:#777">Lorem ipsum dolor sit</h2>

						<h3 style="color:#888">Lorem ipsum dolor sit</h3>

						<a href="#">
							
							<button class="btn btn-default backColor text-uppercase">

							VER PRODUCTO <span class="fa fa-chevron-right"></span>

							</button>

						</a>

					</div>	

				</div>

			</li>	*/
				}

		    ?>		

		</ul>

		<!--=====================================
		PAGINACIÓN
		======================================-->

	    <ol id="paginacion">

			<?php

				for($i = 1; $i <= count($slide); $i++){

					echo '<li item="'.$i.'"><span class="fa fa-circle"></span></li>';

				}		

			?>

		</ol>	

		<!--=====================================
		FLECHAS
		======================================-->	

		<div class="flechas" id="retroceder"><span class="fa fa-chevron-left"></span></div>
		<div class="flechas" id="avanzar"><span class="fa fa-chevron-right"></span></div>

	</div>

</div>

<center>
	
	<button id="btnSlide" class="backColor">
		
			<i class="fa fa-angle-up"></i>

	</button>

</center>