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
                                           <p class="tituloEvento">NOVEDADES</p>
                                       </div>
                                   </div>
                                   <div class="col-lg-6">
                                       <ul class="breadcome-menu">
                                           <li><a href="#">Inicio</a> <span class="bread-slash">/</span>
                                           </li>
                                           <li><span class="bread-blod">Novedades</span>
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
             

            if(isset($_GET["admNovedad"])){

                if($_GET["admNovedad"]=="nuevoNovedad"){
                    
                    ?>

                    <form method="post" id="formNuevaNovedad" enctype="multipart/form-data">
                    <div class="container-fluid evento">
                                <div class="tituloNuevo"> 
                                     <p>REGISTRO DE NOVEDAD</p>
                                </div>

                                
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="col-lg-3">
                                            <strong><p class="form-control">TITULO: </p></strong>
                                        </div>


                                        <div class="col-lg-5">
                                            
                                            <textarea class="form-control" placeholder="max 80 caracteres" name="txtNuevoTituloNovedad" id="txtNuevoTituloNovedad" maxlength="80" required></textarea>

                                        </div>

                                    </div>
                                </div> 

                                <div class="row">
                                    <div class="col-lg-4">
                                        <input class="form-control" type="file" name="imgNuevoNovedad" id="imgNuevoNovedad" /> 
                                    </div>

                                    <div class="col-lg-4  portadaP">
                                        <strong><p>PORTADA PRINCIPAL</p></strong>
                                    </div>
                                </div>
                                


                                <div class="row">
                                    <div class="col-lg-2">
                                    </div>
                                    <div class="col-lg-8" id="imagePreview">
                                        <img id="imgSalidaP" width="100%"  src="img/novedades/default.jpg" />
                                    
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
                                                <textarea id="txtDescripcionNuevoNovedad" name="txtDescripcionNuevoNovedad"></textarea>
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

                                         $nuevoNovedad = new ControladorNovedad();
                                         $nuevoNovedad -> ctrRegistrarNovedad();

                                        ?>
                                          <button type="button" class="btn btn-default btn-block backColor2 " id="btnNuevoNovedad">Enviar</button>
                                     
                                        </div> 
                                        <div class="col-lg-4">
                                        
                                        </div>         
                                    </div>
                                </div>    


                                </div>
 



                                
                    </form>     

            
                  

                    <?php
                 }else if($_GET["admNovedad"]=="verNovedad"){
                    $valor=$_GET["codNovedad"];
                    $infoNovedad = ControladorNovedad::ctrMostrarInfoNovedad($valor);
                    
                   ?>


                         <?php echo'
                            
                            <div class="container-fluid actualizarNovedad">
                                <div class="row">
                                    <div class="col-lg-12 tituloNovedad">
                                         <p>'.$infoNovedad["titNovedad"].'</p>
                                    </div>
                                </div>

                                <div class="col-lg-2">
                                </div>
                                <div class="col-lg-8" id="imagePreview">
                                    <img id="imgSalidaP" width="100%"  src="'.$infoNovedad["imgNovedad"].'" />
                                    <div class="publicacion">';
                                   
                                        echo'<p><strong>FECHA DE PUBLICACION: </strong> '.ControladorEvento::ctrFechaMes($infoNovedad["fecNovedad"]).'</p>
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
                                            '.$infoNovedad["desNovedad"].'
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
                                                <a href="?p=novedades&admNovedad=actualizar&codNovedad='.$infoNovedad["codNovedad"].'" class="pixelEvento">
                                                    
                                                    <button type="button" class="btn btn-secondary" data-toggle="tooltip" title="Ver novedad">
                                                        
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
                    }else if($_GET["admNovedad"]=="actualizar"){
                            
                        $valor=$_GET["codNovedad"];
                        $infoNovedad = ControladorNovedad::ctrMostrarInfoNovedad($valor);

                      
                        
                        
                        
                  echo' <form method="post" id="formActualizarNovedad" enctype="multipart/form-data">
                        <div class="container-fluid evento">
                        <div class="tituloNuevo"> 
                             <p>ACTUALIZAR NOVEDAD</p>
                        </div>

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="col-lg-3">
                                    <strong><p class="form-control">TITULO: </p></strong>
                                </div>


                                <div class="col-lg-5">
                                    
                                    <textarea class="form-control" placeholder="max 80 caracteres" name="txtActualizarTituloNovedad" id="txtActualizarTituloNovedad" maxlength="50" required>'.$infoNovedad["titNovedad"].'</textarea>

                                </div>

                            </div>
                        </div> 
                        <div class="row">
                            <div class="col-lg-4">
                                <input type="hidden" name="codNovedadActualizar" id="codNovedadActualizar" value="'.$infoNovedad["codNovedad"].'" /> 
                                <input class="form-control" type="file" name="imgActualizarNovedad" id="imgActualizarNovedad" /> 
                            </div>

                            <div class="col-lg-4  portadaP">
                                <strong><p>PORTADA PRINCIPAL</p></strong>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-lg-2">
                            </div>
                            <div class="col-lg-8" id="imagePreview">
                                <img id="imgSalidaP" width="100%"  src="'.$infoNovedad["imgNovedad"].'" />
                               
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
                                        <textarea id="txtDescripcionActualizarNovedad" name="txtDescripcionActualizarNovedad"></textarea>
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
                                echo'<a href="?p=novedades&admNovedad=verNovedad&codNovedad='.$infoNovedad["codNovedad"].'"><button type="button" class="btn btn-default btn-block backColor2">CANCELAR</button></a>';
                                ?>
                                </div> 
                                <div class="col-lg-2">

                                <?php

                                 $actualizarNovedad = new ControladorNovedad();
                                 $actualizarNovedad -> ctrActualizarNovedad();

                                ?>
                                  <button type="button" class="btn btn-default btn-block backColor2 " id="btnEnviarActualizarNovedad">GUARDAR</button>
                             
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
              <a href="?p=novedades&admNovedad=nuevoNovedad">
                  <button type="button" class="btn btn-primary btn-lg btn-block ">REGISTRAR UNA NOVEDAD</button>
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
                echo'<input type="hidden" id="txtPaginacionNovedad" value="'.$paginacion.'">';

				$base = ($_GET["paginacion"] - 1)*12;
				$tope = 12;
                
           
			}else{

                $paginacion=1;

				$base = 0;
				$tope = 12;
				

			}   

					
             
            $ordenar="codNovedad";
            $item2="";
            $valor2="";
            
            $novedades = ControladorNovedad::ctrMostrarNovedad($ordenar, $item2, $valor2, $base, $tope);
            
			$listaNovedades = ControladorNovedad::ctrListarNovedad($ordenar, $item2, $valor2);  


			if(!$listaNovedades){ 

                echo '




            <div class="breadcome-area mg-b-30 small-dn">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="breadcome-list shadow-reset">
                                <div class="row  error404 text-center">
                                  
                                <h1><small>¡Oops!</small></h1>

                                <h2>Aún no hay Novedades Registradas</h2>
                                 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>';

               
        
			}else{
         
                

               echo' <!--=====================================
                VITRINA DE NOVEDADES EN CUADRÍCULA
                ======================================-->
               
            <div class="breadcome-area mg-b-30 small-dn">
                <div class="container-fluid">
                    <div class="row">   
                        <ul class="grid0">';
                                
                            foreach ($novedades as $key => $value) {
                    
                                echo'<li class="col-md-3 col-sm-6 col-xs-12">
                                    
                                    <!--===============================================-->
                        
                                    <figure>
                                        
                                    
                                            
                                        <img src="'.$value["imgNovedad"].'" class="img-responsive">
                    
                            
                    
                                    </figure>
                    
                    
                                    <!--===============================================-->
                                    <hr>
                                   
                                        <h4>
                                            <div class="cajaTitulo2">
                                            <small class="tituloEvento2">
                                            
                                            
                                            '.$value["titNovedad"].'<br>
                    
                                          
                    
                                             </small>	
                                            
                                            </div>
                                      		
                    
                                        </h4>
                
                        
                                   
                                   
                    
                                    <div class="col-xs-6 enlaces">
                                        
                                        <div class="btn-group pull-right">
                                            
                                        <div class="botonEvento">
                                             
                                            <a href="?p=novedades&admNovedad=verNovedad&codNovedad='.$value["codNovedad"].'" class="pixelEvento">
                                            
                                                <button type="button" class="btn btn-secondary" data-toggle="tooltip" title="Ver Novedad">
                                                    
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
                            if(count($listaNovedades) != 0){

                                $pagNovedad = ceil(count($listaNovedades)/12);

                                if($pagNovedad > 4){

                                    /*=============================================
                                    LOS BOTONES DE LAS PRIMERAS 4 PÁGINAS Y LA ÚLTIMA PÁG
                                    =============================================*/

                                    if($paginacion == 1){

                                        echo '<ul class="pagination">';
                                        
                                        for($i = 1; $i <= 4; $i ++){

                                            echo '<li id="pagNovedad'.$i.'"><a href="?p=novedades&paginacion='.$i.'">'.$i.'</a></li>';

                                        }

                                        echo ' <li class="disabled"><a>...</a></li>
                                            <li id="pagNovedad'.$pagNovedad.'"><a href="?p=novedades&paginacion='.$pagNovedad.'">'.$pagNovedad.'</a></li>
                                            <li><a href="?p=novedades&paginacion=2"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>

                                        </ul>';

                                    }

                                    /*=============================================
                                    LOS BOTONES DE LA MITAD DE PÁGINAS HACIA ABAJO
                                    =============================================*/

                                    else if($paginacion != $pagNovedad && 
                                            $paginacion != 1 &&
                                            $paginacion <  ($pagNovedad/2) &&
                                            $paginacion < ($pagNovedad-3)
                                            ){

                                            $numPagActual = $paginacion;

                                            echo '<ul class="pagination">
                                                <li><a href="?p=novedades&paginacion='.($numPagActual-1).'"><i class="fa fa-angle-left" aria-hidden="true"></i></a></li> ';
                                        
                                            for($i = $numPagActual; $i <= ($numPagActual+3); $i ++){

                                                echo '<li id="pagNovedad'.$i.'"><a href="?p=novedades&paginacion='.$i.'">'.$i.'</a></li>';

                                            }

                                            echo ' <li class="disabled"><a>...</a></li>
                                                <li id="pagNovedad'.$pagNovedad.'"><a href="?p=novedades&paginacion='.$pagNovedad.'">'.$pagNovedad.'</a></li>
                                                <li><a href="?p=novedades&paginacion='.($numPagActual+1).'"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>

                                            </ul>';

                                    }

                                    /*=============================================
                                    LOS BOTONES DE LA MITAD DE PÁGINAS HACIA ARRIBA
                                    =============================================*/

                                    else if($paginacion != $pagNovedad && 
                                            $paginacion != 1 &&
                                            $paginacion >=  ($pagNovedad/2) &&
                                            $paginacion < ($pagNovedad-3)
                                            ){

                                            $numPagActual = $paginacion;
                                        
                                            echo '<ul class="pagination">
                                            <li><a href="?p=novedades&paginacion='.($numPagActual-1).'"><i class="fa fa-angle-left" aria-hidden="true"></i></a></li> 
                                            <li id="item1"><a href="?p=novedades&paginacion=1">1</a></li>
                                            <li class="disabled"><a>...</a></li>
                                            ';
                                        
                                            for($i = $numPagActual; $i <= ($numPagActual+3); $i ++){

                                                echo '<li id="pagNovedad'.$i.'"><a href="?p=novedades&paginacion='.$i.'">'.$i.'</a></li>';

                                            }


                                            echo '  <li><a href="?p=novedades&paginacion='.($numPagActual+1).'"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                </ul>';
                                    }

                                    /*=============================================
                                    LOS BOTONES DE LAS ÚLTIMAS 4 PÁGINAS Y LA PRIMERA PÁG
                                    =============================================*/

                                    else{

                                        $numPagActual = $paginacion;

                                        echo '<ul class="pagination">
                                            <li><a href="?p=novedades&paginacion='.($numPagActual-1).'"><i class="fa fa-angle-left" aria-hidden="true"></i></a></li> 
                                            <li id="item1"><a href="?p=novedades&paginacion=1">1</a></li>
                                            <li class="disabled"><a>...</a></li>
                                            ';
                                        
                                        for($i = ($pagNovedad-3); $i <= $pagNovedad; $i ++){

                                            echo '<li id="pagNovedad'.$i.'"><a href="?p=novedades&paginacion='.$i.'">'.$i.'</a></li>';

                                        }

                                        echo ' </ul>';

                                    }

                                }else{

                                    echo '<ul class="pagination">';
                                    
                                    for($i = 1; $i <= $pagNovedad; $i ++){

                                        echo '<li id="pagNovedad'.$i.'"><a href="?p=novedades&paginacion='.$i.'">'.$i.'</a></li>';

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