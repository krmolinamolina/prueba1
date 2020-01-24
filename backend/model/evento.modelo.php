
<?php

require_once "conexion.php";

class ModeloEvento{

		/*=============================================
	REGISTRO DE EVENTO
	=============================================*/

	static public function mdlRegistroEventos($ruta1,$ruta2,$fechaInicio,$fechaFinal,$titulo,$direccion,$descripcion){

		$stmt = Conexion::conectar()->prepare("INSERT INTO evento(desEvento,fecIniEvento,fecFinEvento,imgEvento,titEvento,ubiEvento,porEvento) VALUES (:desEvento,:fecIniEvento,:fecFinEvento,:imgEvento,:titEvento,:ubiEvento,:porEvento)");

		$stmt->bindParam(":desEvento", $descripcion, PDO::PARAM_STR);
		$stmt->bindParam(":fecIniEvento", $fechaInicio, PDO::PARAM_STR);
		$stmt->bindParam(":fecFinEvento", $fechaFinal, PDO::PARAM_STR);
		$stmt->bindParam(":imgEvento", $ruta1, PDO::PARAM_STR);
		$stmt->bindParam(":titEvento", $titulo, PDO::PARAM_STR);
		$stmt->bindParam(":ubiEvento", $direccion, PDO::PARAM_STR);
		$stmt->bindParam(":porEvento", $ruta2, PDO::PARAM_STR);

		if($stmt->execute()){

			return "ok";

		}else{

			return "error";
		
		}

		$stmt->close();
		$stmt = null;

	}

		/*=============================================
	ACTUALIZAR USUARIO
	=============================================*/

	static public function mdlActualizarEventos($codEvento,$nuevaRutaImgP,$nuevaRutaImg,$fechaInicio,$fechaFinal,$titulo,$direccion,$descripcion){

		if($descripcion == ""){

			$stmt = Conexion::conectar()->prepare("UPDATE evento SET fecIniEvento=:fecIniEvento,fecFinEvento=:fecFinEvento,imgEvento=:imgEvento,titEvento=:titEvento,ubiEvento=:ubiEvento,porEvento=:porEvento WHERE codEvento = :codEvento");

		$stmt->bindParam(":fecIniEvento", $fechaInicio, PDO::PARAM_STR);
		$stmt->bindParam(":fecFinEvento", $fechaFinal, PDO::PARAM_STR);
		$stmt->bindParam(":imgEvento", $nuevaRutaImgP, PDO::PARAM_STR);
		$stmt->bindParam(":titEvento", $titulo, PDO::PARAM_STR);
		$stmt->bindParam(":ubiEvento", $direccion, PDO::PARAM_STR);
		$stmt->bindParam(":porEvento", $nuevaRutaImg, PDO::PARAM_STR);
		$stmt->bindParam(":codEvento", $codEvento, PDO::PARAM_STR);



		}else{

			$stmt = Conexion::conectar()->prepare("UPDATE evento SET desEvento = :desEvento,fecIniEvento=:fecIniEvento,fecFinEvento=:fecFinEvento,imgEvento=:imgEvento,titEvento=:titEvento,ubiEvento=:ubiEvento,porEvento=:porEvento WHERE codEvento = :codEvento");

			$stmt->bindParam(":desEvento", $descripcion, PDO::PARAM_STR);
			$stmt->bindParam(":fecIniEvento", $fechaInicio, PDO::PARAM_STR);
			$stmt->bindParam(":fecFinEvento", $fechaFinal, PDO::PARAM_STR);
			$stmt->bindParam(":imgEvento", $nuevaRutaImgP, PDO::PARAM_STR);
			$stmt->bindParam(":titEvento", $titulo, PDO::PARAM_STR);
			$stmt->bindParam(":ubiEvento", $direccion, PDO::PARAM_STR);
			$stmt->bindParam(":porEvento", $nuevaRutaImg, PDO::PARAM_STR);
			$stmt->bindParam(":codEvento", $codEvento, PDO::PARAM_STR);
	

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
	MOSTRAR EVENTOS
	=============================================*/

	static public function mdlMostrarEventos($tabla, $ordenar, $item, $valor, $base, $tope){

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
	LISTAR EVENTOS
	=============================================*/
	static public function mdlListarEventos($tabla, $ordenar, $item, $valor){

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
	MOSTRAR INFO EVENTO
	=============================================*/

	static public function mdlMostrarInfoEvento($tabla,$valor){


			$stmt = Conexion::conectar()->prepare("SELECT *FROM $tabla WHERE codEvento = :valor");

			$stmt -> bindParam(":valor", $valor, PDO::PARAM_INT);

			$stmt -> execute();

			return $stmt -> fetch();

		

		$stmt -> close();

		$stmt = null;

	}
	
	/*=============================================
	TRAER ULTIMO ID DEL EVENTO
	=============================================*/
	static public function mdlMostrarIdEvento(){


            $stmt = Conexion::conectar()->prepare("SELECT `AUTO_INCREMENT`
													FROM  INFORMATION_SCHEMA.TABLES
													WHERE TABLE_SCHEMA = 'focus'
													AND   TABLE_NAME   = 'evento'");
         

            $stmt -> execute();

            return $stmt -> fetch();



        $stmt -> close();

        $stmt = null;

    }


}