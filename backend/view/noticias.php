<div class="wrapper-pro">
       
       <div class="content-inner-all">
       <!-- Breadcome start-->
           <div class="breadcome-area mg-b-30 small-dn">
               <div class="container-fluid">
                   <div class="row">
                       <div class="col-lg-12">
                           <div class="breadcome-list shadow-reset">
                               <div class="row">
                                   <div class="col-lg-6">
                                       <div class="breadcome-heading">
                                           <p class="tituloEvento">NOTICIAS</p>
                                       </div>
                                   </div>
                                   <div class="col-lg-6">
                                       <ul class="breadcome-menu">
                                           <li><a href="#">Inicio</a> <span class="bread-slash">/</span>
                                           </li>
                                           <li><span class="bread-blod">Noticias</span>
                                           </li>
                                       </ul>
                                   </div>
                               </div>
                           </div>
                       </div>
                   </div>
               </div>
            </div>


            <?php
             

            if(isset($_GET["admNoticia"])){

                if($_GET["admNoticia"]=="nuevoNoticia"){
                    
                    ?>

                    <form method="post" id="formNuevaNoticia" enctype="multipart/form-data">
                    <div class="container-fluid evento">
                                <div class="tituloNuevo"> 
                                     <p>REGISTRO DE NOTICIAS</p>
                                </div>

                                
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="col-lg-3">
                                            <strong><p class="form-control">TITULO: </p></strong>
                                        </div>


                                        <div class="col-lg-5">
                                            
                                            <textarea class="form-control" placeholder="max 80 caracteres" name="txtNuevoTituloNoticia" id="txtNuevoTituloNoticia" maxlength="80" required></textarea>

                                        </div>

                                    </div>
                                </div> 

                                <div class="row">
                                    <div class="col-lg-4">
                                        <input class="form-control" type="file" name="imgNuevoNoticia" id="imgNuevoNoticia" /> 
                                    </div>

                                    <div class="col-lg-4  portadaP">
                                        <strong><p>PORTADA PRINCIPAL</p></strong>
                                    </div>
                                </div>
                                


                                <div class="row">
                                    <div class="col-lg-2">
                                    </div>
                                    <div class="col-lg-8" id="imagePreview">
                                        <img id="imgSalidaP" width="100%"  src="img/noticias/default.jpg" />
                                    
                                        <div class="alert alert-warning">
                                        <p class="message-mg-rt"><strong>¡ATENCION!</strong> Recuerde que el tamaño de la imagen es de 800 x 500</p>
                                        </div>
                                        <hr>

                                    </div>
                                    <div class="col-lg-2">
                                    </div>
                                </div>   


                              

                               

                               
                                
                                <hr>


                                <div class="row">
                                    <div class="col-lg-12">
                                        

                                            <h3 class="portadaP"><strong>DESCRIPCION</strong></h3>
                                            <div class="form-group txtArea">
                                                <textarea id="txtDescripcionNuevoNoticia" name="txtDescripcionNuevoNoticia"></textarea>
                                        </div>
                                        
                                    </div>
                                </div>    

                                <hr>
                            

                               <div class="row">
                                    <div class="col-lg-12">
                                        <div class="col-lg-4">

                                        </div>   
                                        <div class="col-lg-4">

                                        <?php

                                         $nuevoEvento = new ControladorNoticia();
                                         $nuevoEvento -> ctrRegistrarNoticia();

                                        ?>
                                          <button type="button" class="btn btn-default btn-block backColor2 " id="btnNuevoNoticia">Enviar</button>
                                     
                                        </div> 
                                        <div class="col-lg-4">
                                        
                                        </div>         
                                    </div>
                                </div>    


                                </div>
 



                                
                    </form>     

            
                  

                    <?php
                 }else if($_GET["admNoticia"]=="verNoticia"){
                    $valor=$_GET["codNoticia"];
                    $infoNoticia = ControladorNoticia::ctrMostrarInfoNoticia($valor);
                    
                   ?>


                         <?php echo'
                            
                            <div class="container-fluid actualizarNoticia">
                                <div class="row">
                                    <div class="col-lg-12 tituloNoticia">
                                         <p>'.$infoNoticia["titNoticia"].'</p>
                                    </div>
                                </div>

                                <div class="col-lg-2">
                                </div>
                                <div class="col-lg-8" id="imagePreview">
                                    <img id="imgSalidaP" width="100%"  src="'.$infoNoticia["imgNoticia"].'" />
                                    <div class="publicacion">';
                                   
                                        echo'<p><strong>FECHA DE PUBLICACION: </strong> '.ControladorEvento::ctrFechaMes($infoNoticia["fecPubNoticia"]).'</p>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                </div>
                      
                                <hr>

                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="col-lg-1">
                                            
                                        </div>
                                        <div class="col-lg-10">
                                            '.$infoNoticia["desNoticia"].'
                                        </div>
                                        <div class="col-lg-1">
                                        </div>
                                    </div>
                                </div>   

                            
                                <hr>

   

                               <div class="row">
                                    <div class="col-lg-12">
                                        <div class="col-lg-4">
                                        </div>   

                                        <div class="col-lg-4">

                                          <center>
                                                <a href="?p=noticias&admNoticia=actualizar&codNoticias='.$infoNoticia["codNoticia"].'" class="pixelEvento">
                                                    
                                                    <button type="button" class="btn btn-secondary" data-toggle="tooltip" title="Ver Evento">
                                                        
                                                    ACTUALIZAR
                        
                                                    </button>	
                                            
                                                </a>    
                                           </center>   

                                        </div> 
                                        <div class="col-lg-4">
                                            
                                        </div>         
                                    </div>
                                </div>    

                                </div>

                                ';
                                ?>
                            
 

                    <?php                
                    }else if($_GET["admNoticia"]=="actualizar"){
                            
                        $valor=$_GET["codNoticias"];
                        $infoNoticia = ControladorNoticia::ctrMostrarInfoNoticia($valor);

                      
                        
                        
                        
                  echo' <form method="post" id="formActualizarNoticia" enctype="multipart/form-data">
                        <div class="container-fluid evento">
                        <div class="tituloNuevo"> 
                             <p>ACTUALIZAR NOTICIA</p>
                        </div>

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="col-lg-3">
                                    <strong><p class="form-control">TITULO: </p></strong>
                                </div>


                                <div class="col-lg-5">
                                    
                                    <textarea class="form-control" placeholder="max 80 caracteres" name="txtActualizarTituloNoticia" id="txtActualizarTituloNoticia" maxlength="50" required>'.$infoNoticia["titNoticia"].'</textarea>

                                </div>

                            </div>
                        </div> 
                        <div class="row">
                            <div class="col-lg-4">
                                <input type="hidden" name="codNoticiaActualizar" id="codNoticiaActualizar" value="'.$infoNoticia["codNoticia"].'" /> 
                                <input class="form-control" type="file" name="imgActualizarNoticia" id="imgActualizarNoticia" /> 
                            </div>

                            <div class="col-lg-4  portadaP">
                                <strong><p>PORTADA PRINCIPAL</p></strong>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-lg-2">
                            </div>
                            <div class="col-lg-8" id="imagePreview">
                                <img id="imgSalidaP" width="100%"  src="'.$infoNoticia["imgNoticia"].'" />
                               
                                <div class="alert alert-warning">
                                <p class="message-mg-rt"><strong>¡ATENCION!</strong> Recuerde que el tamaño de la imagen es de 800 x 500</p>
                                </div>
                                <hr>

                            </div>
                            <div class="col-lg-2">
                            </div>
                        </div>    
                      
                    
                   

            
                        <hr>


                        <div class="row">
                            <div class="col-lg-12">
                                
    
                                    <h3 class="portadaP"><strong>DESCRIPCION</strong></h3>
                                    <div class="form-group txtArea">
                                        <textarea id="txtDescripcionActualizarNoticia" name="txtDescripcionActualizarNoticia"></textarea>
                                </div>
                                <div class="alert alert-warning">
                                    <p class="message-mg-rt"><strong>¡ATENCION!</strong> Si no desea cambios en la descripcion! No te preocupes quedara guardada la anterior</p>
                                </div>
                                <div class="alert alert-warning">
                                <p class="message-mg-rt"><strong>¡ATENCION!</strong> Si desea cambios en la descripcion! tiene que realizarla de nuevo</p>
                                </div>


                            </div>
                        </div>    
                        
                        <hr>';
                        ?>  

                    
  
                       <div class="row">
                            <div class="col-lg-12">
                                <div class="col-lg-4">

                                </div>   
                                <div class="col-lg-2">
                                
                                <?php
                                echo'<a href="?p=noticias&admNoticia=verNoticia&codNoticia='.$infoNoticia["codNoticia"].'"><button type="button" class="btn btn-default btn-block backColor2">CANCELAR</button></a>';
                                ?>
                                </div> 
                                <div class="col-lg-2">

                                <?php

                                 $actualizarNoticia = new ControladorNoticia();
                                 $actualizarNoticia -> ctrActualizarNoticias();

                                ?>
                                  <button type="button" class="btn btn-default btn-block backColor2 " id="btnEnviarActualizarNoticia">GUARDAR</button>
                             
                                </div> 
                                <div class="col-lg-4">
                                
                                </div>         
                            </div>
                        </div>    


                        </div>

                    </form>  

            <?php      
                    }
            
            }else{
            
            echo'


                    <!-- Breadcome start-->
              <div class="container-fluid backColor">
              <a href="?p=noticias&admNoticia=nuevoNoticia">
                  <button type="button" class="btn btn-primary btn-lg btn-block ">REGISTRAR UNA NOTICIA</button>
              </a>
               </div>
               
               ';
                

            // <!--=====================================
             //   ¿LISTAR NOTICIAS
           //  ======================================-->
  
           

			/*=============================================
			LLAMADO DE PAGINACIÓN
			=============================================*/
            

			if(isset($_GET["paginacion"])){

                $paginacion=$_GET["paginacion"];
                echo'<input type="hidden" id="txtPaginacionNoticia" value="'.$paginacion.'">';

				$base = ($_GET["paginacion"] - 1)*12;
				$tope = 12;
                
           
			}else{

                $paginacion=1;

				$base = 0;
				$tope = 12;
				

			}   

					
             
            $ordenar="codNoticia";
            $item2="";
            $valor2="";
            
            $noticias = ControladorNoticia::ctrMostrarNoticia($ordenar, $item2, $valor2, $base, $tope);
            
			$listaNoticias = ControladorNoticia::ctrListarNoticia($ordenar, $item2, $valor2);  


			if(!$listaNoticias){ 

                echo '




            <div class="breadcome-area mg-b-30 small-dn">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="breadcome-list shadow-reset">
                                <div class="row  error404 text-center">
                                  
                                <h1><small>¡Oops!</small></h1>

                                <h2>Aún no hay Noticias Registradas</h2>
                                 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>';

               
        
			}else{
         
                

               echo' <!--=====================================
                VITRINA DE NOTICIAS EN CUADRÍCULA
                ======================================-->
               
            <div class="breadcome-area mg-b-30 small-dn">
                <div class="container-fluid">
                    <div class="row">   
                        <ul class="grid0">';
                                
                            foreach ($noticias as $key => $value) {
                    
                                echo'<li class="col-md-3 col-sm-6 col-xs-12">
                                    
                                    <!--===============================================-->
                        
                                    <figure>
                                        
                                    
                                            
                                        <img src="'.$value["imgNoticia"].'" class="img-responsive">
                    
                            
                    
                                    </figure>
                    
                    
                                    <!--===============================================-->
                                    <hr>
                                   
                                        <h4>
                                            <div class="cajaTitulo2">
                                            <small class="tituloEvento2">
                                            
                                            
                                            '.$value["titNoticia"].'<br>
                    
                                          
                    
                                             </small>	
                                            
                                            </div>
                                      		
                    
                                        </h4>
                
                        
                                   
                                   
                    
                                    <div class="col-xs-6 enlaces">
                                        
                                        <div class="btn-group pull-right">
                                            
                                        <div class="botonEvento">
                                             
                                            <a href="?p=noticias&admNoticia=verNoticia&codNoticia='.$value["codNoticia"].'" class="pixelEvento">
                                            
                                                <button type="button" class="btn btn-secondary" data-toggle="tooltip" title="Ver Evento">
                                                    
                                                   Ver Mas
                    
                                                </button>	
                                            
                                            </a>
                                    
                                            </div>
                                        </div>
                    
                                    </div>
                    
                                </li>';
                    
                             
                            }  
                            echo'</ul>';
                  
                             
                           }
                            ?>
                            <div class="clearfix"></div>
                            <center>

                            <!--=====================================
                            PAGINACIÓN
                            ======================================-->
                        <?php
                            if(count($listaNoticias) != 0){

                                $pagNoticias = ceil(count($listaNoticias)/12);

                                if($pagNoticias > 4){

                                    /*=============================================
                                    LOS BOTONES DE LAS PRIMERAS 4 PÁGINAS Y LA ÚLTIMA PÁG
                                    =============================================*/

                                    if($paginacion == 1){

                                        echo '<ul class="pagination">';
                                        
                                        for($i = 1; $i <= 4; $i ++){

                                            echo '<li id="pagNoticias'.$i.'"><a href="?p=noticias&paginacion='.$i.'">'.$i.'</a></li>';

                                        }

                                        echo ' <li class="disabled"><a>...</a></li>
                                            <li id="pagNoticias'.$pagNoticias.'"><a href="?p=noticias&paginacion='.$pagNoticias.'">'.$pagNoticias.'</a></li>
                                            <li><a href="?p=noticias&paginacion=2"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>

                                        </ul>';

                                    }

                                    /*=============================================
                                    LOS BOTONES DE LA MITAD DE PÁGINAS HACIA ABAJO
                                    =============================================*/

                                    else if($paginacion != $pagNoticias && 
                                            $paginacion != 1 &&
                                            $paginacion <  ($pagNoticias/2) &&
                                            $paginacion < ($pagNoticias-3)
                                            ){

                                            $numPagActual = $paginacion;

                                            echo '<ul class="pagination">
                                                <li><a href="?p=noticias&paginacion='.($numPagActual-1).'"><i class="fa fa-angle-left" aria-hidden="true"></i></a></li> ';
                                        
                                            for($i = $numPagActual; $i <= ($numPagActual+3); $i ++){

                                                echo '<li id="pagNoticias'.$i.'"><a href="?p=noticias&paginacion='.$i.'">'.$i.'</a></li>';

                                            }

                                            echo ' <li class="disabled"><a>...</a></li>
                                                <li id="pagNoticias'.$pagNoticias.'"><a href="?p=noticias&paginacion='.$pagNoticias.'">'.$pagNoticias.'</a></li>
                                                <li><a href="?p=noticias&paginacion='.($numPagActual+1).'"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>

                                            </ul>';

                                    }

                                    /*=============================================
                                    LOS BOTONES DE LA MITAD DE PÁGINAS HACIA ARRIBA
                                    =============================================*/

                                    else if($paginacion != $pagNoticias && 
                                            $paginacion != 1 &&
                                            $paginacion >=  ($pagNoticias/2) &&
                                            $paginacion < ($pagNoticias-3)
                                            ){

                                            $numPagActual = $paginacion;
                                        
                                            echo '<ul class="pagination">
                                            <li><a href="?p=noticias&paginacion='.($numPagActual-1).'"><i class="fa fa-angle-left" aria-hidden="true"></i></a></li> 
                                            <li id="item1"><a href="?p=noticias&paginacion=1">1</a></li>
                                            <li class="disabled"><a>...</a></li>
                                            ';
                                        
                                            for($i = $numPagActual; $i <= ($numPagActual+3); $i ++){

                                                echo '<li id="pagNoticias'.$i.'"><a href="?p=noticias&paginacion='.$i.'">'.$i.'</a></li>';

                                            }


                                            echo '  <li><a href="?p=noticias&paginacion='.($numPagActual+1).'"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                </ul>';
                                    }

                                    /*=============================================
                                    LOS BOTONES DE LAS ÚLTIMAS 4 PÁGINAS Y LA PRIMERA PÁG
                                    =============================================*/

                                    else{

                                        $numPagActual = $paginacion;

                                        echo '<ul class="pagination">
                                            <li><a href="?p=noticias&paginacion='.($numPagActual-1).'"><i class="fa fa-angle-left" aria-hidden="true"></i></a></li> 
                                            <li id="item1"><a href="?p=noticias&paginacion=1">1</a></li>
                                            <li class="disabled"><a>...</a></li>
                                            ';
                                        
                                        for($i = ($pagNoticias-3); $i <= $pagNoticias; $i ++){

                                            echo '<li id="pagNoticias'.$i.'"><a href="?p=noticias&paginacion='.$i.'">'.$i.'</a></li>';

                                        }

                                        echo ' </ul>';

                                    }

                                }else{

                                    echo '<ul class="pagination">';
                                    
                                    for($i = 1; $i <= $pagNoticias; $i ++){

                                        echo '<li id="pagNoticias'.$i.'"><a href="?p=noticias&paginacion='.$i.'">'.$i.'</a></li>';

                                    }

                                    echo '</ul>';

                                }

                                }

                                ?>
                     
                                </center>




                    </div>
                </div>

            </div>

                            <?php   } ?>

        </div>
 </div>   