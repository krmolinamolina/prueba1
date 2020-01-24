<?php

class ControladorNovedad{

	/* 	/*=============================================
	MOSTRAR INFO NOVEDAD
	=============================================*/
    
	static public function ctrMostrarInfoNovedad($valor){

		$tabla = "novedad";

		$respuesta = ModeloNovedad::mdlMostrarInfoNovedad($tabla,$valor);

		return $respuesta;
	}


   	/*=============================================
	MOSTRAR NOVEDAD
	=============================================*/
	static public function ctrMostrarNovedad($ordenar, $item, $valor, $base, $tope){

		$tabla = "novedad";

		$respuesta = ModeloNovedad::mdlMostrarNovedad($tabla, $ordenar, $item, $valor, $base, $tope);

		return $respuesta;
	}

	/*=============================================
	LISTAR NOVEDAD
	=============================================*/

	static public function ctrListarNovedad($ordenar, $item, $valor){

		$tabla = "novedad";

		$respuesta = ModeloNovedad::mdlListarNovedad($tabla, $ordenar, $item, $valor);

		return $respuesta;

	}
     
	/*=============================================
	NUEVO NOVEDAD
	=============================================*/
	static public function ctrRegistrarNovedad(){

	     if (isset($_POST["txtNuevoTituloNovedad"])) {

				 $respuesta = ModeloNovedad::mdlMostrarIdNovedad();

		   

				 $carpeta=$respuesta['AUTO_INCREMENT'];
				/*=======CREACION DE LA CARPETA EN EL SERVIDOR=====*/
				 $directorio = "../view/img/novedades/".$carpeta;
				 mkdir($directorio, 0755);
	  
	  
				 /*=======RUTAS DE LA IMAGENES Y COPIARLAS AL SERVIDOR=*/
				 $aleatorio = mt_rand(100, 999);
				 $ruta1=$directorio."/".$aleatorio.".jpg";
				 
				 move_uploaded_file($_FILES["imgNuevoNovedad"]["tmp_name"],$ruta1);
	  
				 
				
				 $titulo=$_POST["txtNuevoTituloNovedad"];
				 
				 $descripcion=$_POST["txtDescripcionNuevoNovedad"];
	  
				 $respuesta = ModeloNovedad::mdlRegistroNovedad($ruta1,$titulo,$descripcion);
	  
				 if($respuesta =="ok"){
	  
					 echo '<script> 
	  
					 swal({
						   title: "¡OK!",
						   text: "¡La novedad se registro correctamente!",
						   type:"success",
						   confirmButtonText: "Cerrar",
						   closeOnConfirm: false
						 },
	  
						 function(isConfirm){
	  
							 if(isConfirm){
								 
								 window.location="../view/index.php?p=novedades";
							 }
						 });
	  
					  </script>';
			 
	  
				 }

		 }

	}


// 	/*=============================================
// 	ACTUALIZAR NOVEDAD
// 	=============================================*/

	static public function ctrActualizarNovedad(){

		if (isset($_POST["txtActualizarTituloNovedad"])) {

            $tabla="novedad"; $valor=$_POST["codNovedadActualizar"];
            $respuesta = ModeloNovedad::mdlMostrarInfoNovedad($tabla,$valor);
		   

		    
			if(!empty($_FILES["imgActualizarNovedad"]["tmp_name"])){

				//ELIMINAMOS LA IMAGEN ANTERIOR DEL SERVIDOR
				$rutaEliminar=$respuesta["imgNovedad"];
				unlink($rutaEliminar);

				//COPIAMOS LA NUEVA IMAGEN EN EL SERVIDOR

				$directorio= '../view/img/novedades/'.$respuesta["codNovedad"];
				$aleatorio = mt_rand(100, 999);
				$nuevaRutaImgP=$directorio."/".$aleatorio.".jpg";
				
				move_uploaded_file($_FILES["imgActualizarNovedad"]["tmp_name"],$nuevaRutaImgP);
	 
			}else{
               $nuevaRutaImgP=$respuesta["imgNovedad"];
			}

	    	$codNovedad=$_POST["codNovedadActualizar"];
		   $titulo=$_POST["txtActualizarTituloNovedad"];

		   if($_POST["txtDescripcionActualizarNovedad"] == ""){

                $descripcion="";
		   }else{
		     	$descripcion=$_POST["txtDescripcionActualizarNovedad"];
		   }
		  



		   $respuesta = ModeloNovedad::mdlActualizarNovedad($codNovedad,$nuevaRutaImgP,$titulo,$descripcion);

		   if($respuesta =="ok"){

			   echo '<script> 

			   swal({
					 title: "¡OK!",
					 text: "¡La novedad se Actualizo correctamente!",
					 type:"success",
					 confirmButtonText: "Cerrar",
					 closeOnConfirm: false
				   },

				   function(isConfirm){

					   if(isConfirm){
						   
						   window.location="../view/index.php?p=novedades";
					   }
				   });

				</script>';
	   

		   }
			   

		}

   }



}
