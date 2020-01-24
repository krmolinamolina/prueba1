<?php

class ControladorEvento{

	 	/*=============================================
	MOSTRAR INFO EVENTO
	=============================================*/

	static public function ctrMostrarInfoEvento($valor){

		$tabla = "evento";

		$respuesta = ModeloEvento::mdlMostrarInfoEvento($tabla,$valor);

		return $respuesta;
	}


   	/*=============================================
	MOSTRAR EVENTOS
	=============================================*/

	static public function ctrMostrarEventos($ordenar, $item, $valor, $base, $tope){

		$tabla = "evento";

		$respuesta = ModeloEvento::mdlMostrarEventos($tabla, $ordenar, $item, $valor, $base, $tope);

		return $respuesta;
	}

	/*=============================================
	LISTAR EVENTOS
	=============================================*/

	static public function ctrListarEventos($ordenar, $item, $valor){

		$tabla = "evento";

		$respuesta = ModeloEvento::mdlListarEventos($tabla, $ordenar, $item, $valor);

		return $respuesta;

	}

	/*=============================================
	NUEVO EVENTO
	=============================================*/

	static public function ctrRegistrarEventos(){

	     if (isset($_POST["txtDireccion"])) {


			
			
			$respuesta = ModeloEvento::mdlMostrarIdEvento();

			

			$carpeta=$respuesta['AUTO_INCREMENT'];
		   /*=======CREACION DE LA CARPETA EN EL SERVIDO=*/
			$directorio = "img/eventos/".$carpeta;
            mkdir($directorio, 0755);


			/*=======RUTAS DE LA IMAGENES Y COPIARLAS AL SERVIDOR=*/
            $aleatorio = mt_rand(100, 999);
			$ruta1=$directorio."/".$aleatorio.".jpg";
			
			move_uploaded_file($_FILES["imagenPortadaP"]["tmp_name"],$ruta1);

			$aleatorio = mt_rand(100, 999);
			$ruta2=$directorio."/".$aleatorio.".jpg";

			move_uploaded_file($_FILES["imagenPortada"]["tmp_name"],$ruta2);

		   
			$fechaInicio=$_POST["txtInicio"];
			$fechaFinal=$_POST["txtFinal"];
			$titulo=$_POST["txtTitulo"];
			$direccion=$_POST["txtDireccion"];
			$descripcion=$_POST["txt-content"];

			$respuesta = ModeloEvento::mdlRegistroEventos($ruta1,$ruta2,$fechaInicio,$fechaFinal,$titulo,$direccion,$descripcion);

			if($respuesta =="ok"){

				echo '<script> 

				swal({
					  title: "¡OK!",
					  text: "¡El evento se registro correctamente!",
					  type:"success",
					  confirmButtonText: "Cerrar",
					  closeOnConfirm: false
					},

					function(isConfirm){

						if(isConfirm){
							
							window.location="../view/index.php?p=eventos";
						}
			    	});

		     	</script>';
		

			}
				
			

		 }

	}


	/*=============================================
	ACTUALIZAR EVENTO
	=============================================*/

	static public function ctrActualizarEventos(){

		if (isset($_POST["txtDireccion2"])) {
            $tabla="evento"; $valor=$_POST["codEvento"];
            $respuesta = ModeloEvento::mdlMostrarInfoEvento($tabla,$valor);
		   
			
		    
			if(!empty($_FILES["imagenPortadaP2"]["tmp_name"])){

				//ELIMINAMOS LA IMAGEN ANTERIOR DEL SERVIDOR
				$rutaEliminar=$respuesta["imgEvento"];
				unlink($rutaEliminar);

				//COPIAMOS LA NUEVA IMAGEN EN EL SERVIDOR

				$directorio= '../view/img/eventos/'.$respuesta["codEvento"];
				$aleatorio = mt_rand(100, 999);
				$nuevaRutaImgP=$directorio."/".$aleatorio.".jpg";
				
				move_uploaded_file($_FILES["imagenPortadaP2"]["tmp_name"],$nuevaRutaImgP);
	 
			}else{
               $nuevaRutaImgP=$respuesta["imgEvento"];
			}

			if(!empty($_FILES["imagenPortada2"]["tmp_name"])){

				//ELIMINAMOS LA IMAGEN ANTERIOR DEL SERVIDOR
				$rutaEliminar=$respuesta["porEvento"];
				unlink($rutaEliminar);

				//COPIAMOS LA NUEVA IMAGEN EN EL SERVIDOR

				$directorio= '../view/img/eventos/'.$respuesta["codEvento"];
				$aleatorio = mt_rand(100, 999);
				$nuevaRutaImg=$directorio."/".$aleatorio.".jpg";
				
				move_uploaded_file($_FILES["imagenPortada2"]["tmp_name"],$nuevaRutaImg);
	 
			}else{
               $nuevaRutaImg=$respuesta["porEvento"];
			}
           



		   /*=======RUTAS DE LA IMAGENES Y COPIARLAS AL SERVIDOR=*/
		  
		   $fechaInicio=$_POST["txtInicio2"];
		   $fechaFinal=$_POST["txtFinal2"];
		   $titulo=$_POST["txtTitulo2"];
		   $direccion=$_POST["txtDireccion2"];
		   $codEvento=$respuesta["codEvento"];


		   if($_POST["txt-content2"] == ""){

                $descripcion="";
		   }else{
		     	$descripcion=$_POST["txt-content2"];
		   }
		  



		   $respuesta = ModeloEvento::mdlActualizarEventos($codEvento,$nuevaRutaImgP,$nuevaRutaImg,$fechaInicio,$fechaFinal,$titulo,$direccion,$descripcion);

		   if($respuesta =="ok"){

			   echo '<script> 

			   swal({
					 title: "¡OK!",
					 text: "¡El evento se Actualizo correctamente!",
					 type:"success",
					 confirmButtonText: "Cerrar",
					 closeOnConfirm: false
				   },

				   function(isConfirm){

					   if(isConfirm){
						   
						   window.location="../view/index.php?p=eventos";
					   }
				   });

				</script>';
	   

		   }
			   
		

		}

   }



	/*=============================================
	RETORNAR MES EN LETRAS
	=============================================*/

	static public function ctrFechaMes($valor){

		$fecha2=explode (" ",$valor);
		$fecha=explode ("-",$fecha2[0]);

		if ($fecha[1] == 1) {
			$respuesta=$fecha[2]." de "."Enero"." ".$fecha[0];
		}else if ($fecha[1] == 2) {
			$respuesta=$fecha[2]." de "."Febrero"." ".$fecha[0];
		}else if ($fecha[1] == 3) {
			$respuesta=$fecha[2]." de "."Marzo"." ".$fecha[0];
		}else if ($fecha[1] == 4) {
			$respuesta=$fecha[2]." de "."Abril"." ".$fecha[0];
		}else if ($fecha[1] == 5) {
			$respuesta=$fecha[2]." de "."Mayo"." ".$fecha[0];
		}else if ($fecha[1] == 6) {
			$respuesta=$fecha[2]." de "."Junio"." ".$fecha[0];
		}else if ($fecha[1] == 7) {
			$respuesta=$fecha[2]." de "."Julio"." ".$fecha[0];
		}else if ($fecha[1] == 8) {
			$respuesta=$fecha[2]." de "."Agosto"." ".$fecha[0];
		}else if ($fecha[1] == 9) {
			$respuesta=$fecha[2]." de "."septiembre"." ".$fecha[0];
		}else if ($fecha[1] == 10) {
			$respuesta=$fecha[2]." de "."Octubre"." ".$fecha[0];
		}else if ($fecha[1] == 11) {
			$respuesta=$fecha[2]." de "."Noviembre"." ".$fecha[0];
		}else if ($fecha[1] == 12) {
			$respuesta=$fecha[2]." de "."Diciembre"." ".$fecha[0];
		}
	    return $respuesta;

	}




}
