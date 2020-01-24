
<?php

require_once "conexion.php";

class ModeloNoticia{

		/*=============================================
	REGISTRO DE NOTICIA
	=============================================*/

	static public function mdlRegistroNoticia($ruta1,$titulo,$descripcion){

		$stmt = Conexion::conectar()->prepare("INSERT INTO noticia(titNoticia,desNoticia,imgNoticia) VALUES (:titNoticia,:desNoticia,:imgNoticia)");

		$stmt->bindParam(":titNoticia", $titulo, PDO::PARAM_STR);
		$stmt->bindParam(":desNoticia", $descripcion, PDO::PARAM_STR);
		$stmt->bindParam(":imgNoticia", $ruta1, PDO::PARAM_STR);
	

		if($stmt->execute()){

			return "ok";

		}else{

			return "error";
		
		}

		$stmt->close();
		$stmt = null;

	}

	
		/*=============================================
	ACTUALIZAR NOTICIA
	=============================================*/
  
	static public function mdlActualizarNoticia($codNoticia,$nuevaRutaImgP,$titulo,$descripcion){

		if($descripcion == ""){

			$stmt = Conexion::conectar()->prepare("UPDATE noticia SET titNoticia=:titNoticia,imgNoticia=:imgNoticia WHERE codNoticia = :codNoticia");

		$stmt->bindParam(":titNoticia", $titulo, PDO::PARAM_STR);
		$stmt->bindParam(":imgNoticia", $nuevaRutaImgP, PDO::PARAM_STR);
	
		$stmt->bindParam(":codNoticia", $codNoticia, PDO::PARAM_STR);



		}else{

			$stmt = Conexion::conectar()->prepare("UPDATE noticia SET titNoticia=:titNoticia,desNoticia=:desNoticia,imgNoticia=:imgNoticia WHERE codNoticia = :codNoticia");

			$stmt->bindParam(":titNoticia", $titulo, PDO::PARAM_STR);
		$stmt->bindParam(":desNoticia", $descripcion, PDO::PARAM_STR);
		$stmt->bindParam(":imgNoticia", $nuevaRutaImgP, PDO::PARAM_STR);
	
		$stmt->bindParam(":codNoticia", $codNoticia, PDO::PARAM_STR);


	

		}
		

		if($stmt -> execute()){

			return "ok";

		}else{

			return "error";

		}

		$stmt-> close();

		$stmt = null;

	}


	/*=============================================
	MOSTRAR NOTICIA
	=============================================*/
     
	static public function mdlMostrarNoticia($tabla, $ordenar, $item, $valor, $base, $tope){

		if($item != null){

			$stmt = Conexion::conectar()->prepare("SELECT *FROM $tabla WHERE $item = :$item ORDER BY $ordenar DESC LIMIT $base, $tope");

			$stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);

			$stmt -> execute();

			return $stmt -> fetchAll();

		}else{

			$stmt = Conexion::conectar()->prepare("SELECT *FROM $tabla ORDER BY $ordenar DESC LIMIT $base, $tope");

			$stmt -> execute();

			return $stmt -> fetchAll();

		}

		$stmt -> close();

		$stmt = null;

	}


    	/*=============================================
	LISTAR NOTICIA
	=============================================*/
	
	static public function mdlListarNoticia($tabla, $ordenar, $item, $valor){

        if($item != null){

            $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item = :$item ORDER BY $ordenar DESC");
            $stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);

            $stmt -> execute();

            return $stmt -> fetchAll();

        }else{

            $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla ORDER BY $ordenar DESC");

            $stmt -> execute();

            return $stmt -> fetchAll();

        }

        $stmt -> close();

        $stmt = null;

	}

	
	/*=============================================
	MOSTRAR INFO NOTICIA
	=============================================*/
    
	static public function mdlMostrarInfoNoticias($tabla,$valor){


			$stmt = Conexion::conectar()->prepare("SELECT *FROM $tabla WHERE codNoticia = :valor");

			$stmt -> bindParam(":valor", $valor, PDO::PARAM_INT);

			$stmt -> execute();

			return $stmt -> fetch();

		

		$stmt -> close();

		$stmt = null;

	}
	
	/*=============================================
	TRAER EL PROXIMO ID DEL NOTICIA
	=============================================*/
	
	static public function mdlMostrarIdNoticia(){


            $stmt = Conexion::conectar()->prepare("SELECT `AUTO_INCREMENT`
													FROM  INFORMATION_SCHEMA.TABLES
													WHERE TABLE_SCHEMA = 'focus'
													AND   TABLE_NAME   = 'noticia'");
         

            $stmt -> execute();

            return $stmt -> fetch();



        $stmt -> close();

        $stmt = null;

    }


}