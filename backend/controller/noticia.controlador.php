<?php

class ControladorNoticia{

	 	/*=============================================
	MOSTRAR INFO NOTICIA
	=============================================*/

	static public function ctrMostrarInfoNoticia($valor){

		$tabla = "noticia";

		$respuesta = ModeloNoticia::mdlMostrarInfoNoticiaS($tabla,$valor);

		return $respuesta;
	}


   	/*=============================================
	MOSTRAR NOTICIAS
	=============================================*/
	static public function ctrMostrarNoticia($ordenar, $item, $valor, $base, $tope){

		$tabla = "noticia";

		$respuesta = ModeloNoticia::mdlMostrarNoticia($tabla, $ordenar, $item, $valor, $base, $tope);

		return $respuesta;
	}

	/*=============================================
	LISTAR NOTICIAS
	=============================================*/

	static public function ctrListarNoticia($ordenar, $item, $valor){

		$tabla = "noticia";

		$respuesta = ModeloNoticia::mdlListarNoticia($tabla, $ordenar, $item, $valor);

		return $respuesta;

	}

	/*=============================================
	NUEVO NOTICIAS
	=============================================*/
	static public function ctrRegistrarNoticia(){

	     if (isset($_POST["txtNuevoTituloNoticia"])) {


				 echo'HOLA MINDUO';
				 $respuesta = ModeloNoticia::mdlMostrarIdNoticia();

		   

				 $carpeta=$respuesta['AUTO_INCREMENT'];
				/*=======CREACION DE LA CARPETA EN EL SERVIDOR=====*/
				 $directorio = "../view/img/noticias/".$carpeta;
				 mkdir($directorio, 0755);
	  
	  
				 /*=======RUTAS DE LA IMAGENES Y COPIARLAS AL SERVIDOR=*/
				 $aleatorio = mt_rand(100, 999);
				 $ruta1=$directorio."/".$aleatorio.".jpg";
				 
				 move_uploaded_file($_FILES["imgNuevoNoticia"]["tmp_name"],$ruta1);
	  
				 
				
				 $titulo=$_POST["txtNuevoTituloNoticia"];
				 
				 $descripcion=$_POST["txtDescripcionNuevoNoticia"];
	  
				 $respuesta = ModeloNoticia::mdlRegistroNoticia($ruta1,$titulo,$descripcion);
	  
				 if($respuesta =="ok"){
	  
					 echo '<script> 
	  
					 swal({
						   title: "¡OK!",
						   text: "¡La noticia se registro correctamente!",
						   type:"success",
						   confirmButtonText: "Cerrar",
						   closeOnConfirm: false
						 },
	  
						 function(isConfirm){
	  
							 if(isConfirm){
								 
								 window.location="../view/index.php?p=noticias";
							 }
						 });
	  
					  </script>';
			 
	  
				 }

		 }

	}


	/*=============================================
	ACTUALIZAR NOTICIA
	=============================================*/

	static public function ctrActualizarNoticias(){

		if (isset($_POST["txtActualizarTituloNoticia"])) {

            $tabla="noticia"; $valor=$_POST["codNoticiaActualizar"];
            $respuesta = ModeloNoticia::mdlMostrarInfoNoticias($tabla,$valor);
		   

		    
			if(!empty($_FILES["imgActualizarNoticia"]["tmp_name"])){

				//ELIMINAMOS LA IMAGEN ANTERIOR DEL SERVIDOR
				$rutaEliminar=$respuesta["imgNoticia"];
				unlink($rutaEliminar);

				//COPIAMOS LA NUEVA IMAGEN EN EL SERVIDOR

				$directorio= '../view/img/noticias/'.$respuesta["codNoticia"];
				$aleatorio = mt_rand(100, 999);
				$nuevaRutaImgP=$directorio."/".$aleatorio.".jpg";
				
				move_uploaded_file($_FILES["imgActualizarNoticia"]["tmp_name"],$nuevaRutaImgP);
	 
			}else{
               $nuevaRutaImgP=$respuesta["imgNoticia"];
			}

	    	$codNoticia=$_POST["codNoticiaActualizar"];
		   $titulo=$_POST["txtActualizarTituloNoticia"];

		   if($_POST["txtDescripcionActualizarNoticia"] == ""){

                $descripcion="";
		   }else{
		     	$descripcion=$_POST["txtDescripcionActualizarNoticia"];
		   }
		  



		   $respuesta = ModeloNoticia::mdlActualizarNoticia($codNoticia,$nuevaRutaImgP,$titulo,$descripcion);

		   if($respuesta =="ok"){

			   echo '<script> 

			   swal({
					 title: "¡OK!",
					 text: "¡La noticia se Actualizo correctamente!",
					 type:"success",
					 confirmButtonText: "Cerrar",
					 closeOnConfirm: false
				   },

				   function(isConfirm){

					   if(isConfirm){
						   
						   window.location="../view/index.php?p=noticias";
					   }
				   });

				</script>';
	   

		   }
			   

		}

   }



}
