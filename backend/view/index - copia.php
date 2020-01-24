

<?php
 

 require_once "../controller/evento.controlador.php";
 require_once "../controller/noticia.controlador.php";
 require_once "../controller/novedad.controlador.php";
 require_once "../controller/slide.controlador.php";


 require_once "../model/evento.modelo.php";
 require_once "../model/noticia.modelo.php";
 require_once "../model/novedad.modelo.php";
 require_once "../model/slide.modelo.php";
 
 require_once "../model2/slide.modelo.php";






//capturar la pagina que se quiere abrir
$pagina=isset($_GET['p'])? strtolower($_GET['p']):'header';
//=========================ESTABLECER PAGINA DE INICIO================


   
//Fragmento que contiene SOLAMENTE LOS MENUS O CABECERA de la web
require_once 'header.php';

//Considerar el parametro enviado tiene el mismo nombre del archivo a cargar, si este no es asi se produce un error de archivo no encontrado
//require_once 'view/'.$pagina. '.php';
require_once ''.$pagina.'.php';

//otra opcion es validar por medio de un swicth


//el fragmento de html que contiene el pie d pagina de nuestra web
require_once 'footer.php';


?>
















