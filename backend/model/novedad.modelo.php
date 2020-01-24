
<?php

require_once "conexion.php";

class ModeloNovedad{

		/*=============================================
	REGISTRO DE NOVEDAD
	=============================================*/

	static public function mdlRegistroNovedad($ruta1,$titulo,$descripcion){

		$stmt = Conexion::conectar()->prepare("INSERT INTO novedad(titNovedad,imgNovedad,desNovedad) VALUES (:titNovedad,:imgNovedad,:desNovedad)");

		$stmt->bindParam(":titNovedad", $titulo, PDO::PARAM_STR);
		$stmt->bindParam(":imgNovedad", $ruta1, PDO::PARAM_STR);
		$stmt->bindParam(":desNovedad", $descripcion, PDO::PARAM_STR);
	

		 if($stmt->execute()){

		return "ok";
	 
	    }else{

			return "error";
		
		}

		$stmt->close();
		$stmt = null;

	}

	
		/*=============================================
	ACTUALIZAR NOVEDAD
	=============================================*/
  
	static public function mdlActualizarNovedad($codNovedad,$nuevaRutaImgP,$titulo,$descripcion){

		if($descripcion == ""){

			$stmt = Conexion::conectar()->prepare("UPDATE novedad SET titNovedad=:titNovedad,imgNovedad=:imgNovedad WHERE codNovedad = :codNovedad");

		$stmt->bindParam(":titNovedad", $titulo, PDO::PARAM_STR);
		$stmt->bindParam(":imgNovedad", $nuevaRutaImgP, PDO::PARAM_STR);
	
		$stmt->bindParam(":codNovedad", $codNovedad, PDO::PARAM_STR);



		}else{

			$stmt = Conexion::conectar()->prepare("UPDATE novedad SET titNovedad=:titNovedad,imgNovedad=:imgNovedad,desNovedad=:desNovedad WHERE codNovedad = :codNovedad");

			$stmt->bindParam(":titNovedad", $titulo, PDO::PARAM_STR);
			$stmt->bindParam(":imgNovedad", $nuevaRutaImgP, PDO::PARAM_STR);
		$stmt->bindParam(":desNovedad", $descripcion, PDO::PARAM_STR);

	
		$stmt->bindParam(":codNovedad", $codNovedad, PDO::PARAM_STR);


	

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
	MOSTRAR NOVEDAD
	=============================================*/
     
	static public function mdlMostrarNovedad($tabla, $ordenar, $item, $valor, $base, $tope){

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
	LISTAR NOVEDAD
	=============================================*/
	
	static public function mdlListarNovedad($tabla, $ordenar, $item, $valor){

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
	MOSTRAR INFO NOVEDAD
	=============================================*/
    
	static public function mdlMostrarInfoNovedad($tabla,$valor){


			$stmt = Conexion::conectar()->prepare("SELECT *FROM $tabla WHERE codNovedad = :valor");

			$stmt -> bindParam(":valor", $valor, PDO::PARAM_INT);

			$stmt -> execute();

			return $stmt -> fetch();

		

		$stmt -> close();

		$stmt = null;

	}
	
	/*=============================================
	TRAER EL PROXIMO ID DEL NOVEDAD
	=============================================*/
	
	static public function mdlMostrarIdNovedad(){


            $stmt = Conexion::conectar()->prepare("SELECT `AUTO_INCREMENT`
													FROM  INFORMATION_SCHEMA.TABLES
													WHERE TABLE_SCHEMA = 'focus'
													AND   TABLE_NAME   = 'novedad'");
         

            $stmt -> execute();

            return $stmt -> fetch();



        $stmt -> close();

        $stmt = null;

    }


}