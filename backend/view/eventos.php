
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
                                            <p class="tituloEvento">Eventos coorporativos</p>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <ul class="breadcome-menu">
                                            <li><a href="#">Inicio</a> <span class="bread-slash">/</span>
                                            </li>
                                            <li><span class="bread-blod">Eventos</span>
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
             

           if(isset($_GET["admEvento"])){

                
                 if($_GET["admEvento"]=="nuevoEvento"){
                    
                    ?>

                    <form method="post" id="frm-test" enctype="multipart/form-data">
                    <div class="container-fluid evento">
                                <div class="tituloNuevo"> 
                                     <p>REGISTRO DE EVENTOS COORPORATIVOS</p>
                                </div>

                                <div class="col-lg-4">
                                    <input class="form-control" type="file" name="imagenPortadaP" id="imagenPortadaP" /> 
                                </div>   
                                    
                                <div class="col-lg-4  portadaP">
                                    <strong><p>PORTADA PRINCIPAL</p></strong>
                                </div>
                                
                            
                                <div id="imagePreview">
                                    <img id="imgSalidaP" width="100%" height="50%" src="img/eventos/default/banerevento.jpg" />
                                </div>
                      
                                <hr>


                                <div class="row">
                                <div class="col-lg-12">
                                        <div class="col-lg-3">
                                           <strong><p class="form-control">FECHA INICIO DEL EVENTO:</p></strong>
                                        </div>


                                        <div class="col-lg-3">
                                          <input class="form-control" type="date" name="txtInicio" id="txtInicio">
                                        </div>
         
                                       
                                </div>
                                </div>

                                <div class="row">
                                <div class="col-lg-12">
                                        <div class="col-lg-3">
                                           <strong><p class="form-control">FECHA FIN DEL EVENTO:</p></strong>
                                        </div>


                                        <div class="col-lg-3">
                                          <input class="form-control" type="date" name="txtFinal" id="txtFinal">
                                        </div>
         
                                       
                                </div>
                                </div>
                           

                                

                                <div class="row">
                                    <div class="col-lg-12">
                                       <div class="col-lg-3">
                                          <strong><p class="form-control">TITULO EVENTO:</p></strong>
                                       </div>


                                       <div class="col-lg-5">
                                         
                                         <textarea class="form-control" placeholder="max 80 caracteres" name="txtTitulo" id="txtTitulo" maxlength="50" required></textarea>

                                       </div>
        
                                      
                                    </div>
                               </div>   

                               
                                <div class="row">
                                 <div class="col-lg-12">
                                        <div class="col-lg-3">
                                           <strong><p class="form-control">DIRECCION:</p></strong>
                                        </div>


                                        <div class="col-lg-5">
                                          <input class="form-control" type="TEXT" name="txtDireccion" id="txtDireccion" require>
                                        </div>
         
                                       
                                 </div>
                                </div>      
                                
                                <hr>


                                <div class="row">
                                <div class="col-lg-12">
                                        <div class="col-lg-4">
                                                    
                                              
                                                    
                                                <div class="col-lg-12  portadaP">
                                                    <strong><p>PORTADA</p></strong>
                                                </div>
                                                <div class="col-lg-12">
                                                <input class="form-control" type="file" name="imagenPortada" id="imagenPortada" /> 
                                                </div>   
                                                
                                            
                                                <div id="imagePreview2">
                                                    <img id="imgSalida" width="100%" height="50%" src="img/eventos/portada.png" />
                                                </div>

                                        </div>


                                        <div class="col-lg-8">
                                         
                                          <h3 class="portadaP"><strong>DESCRIPCION</strong></h3>
                                                  
                                          <div class="form-group txtArea">
                                                <textarea id="txt-content" name="txt-content" placeholder="Describa el evento"></textarea>
                                          </div>

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

                                         $nuevoEvento = new ControladorEvento();
                                         $nuevoEvento -> ctrRegistrarEventos();

                                        ?>
                                          <button type="button" class="btn btn-default btn-block backColor2 " id="btn-enviar">Enviar</button>
                                     
                                        </div> 
                                        <div class="col-lg-4">
                                        
                                        </div>         
                                    </div>
                                </div>    


                                </div>
 



                                
                    </form>     

            
                    
                    
                  

                    <?php
                 }else if($_GET["admEvento"]=="verEvento"){
                    $valor=$_GET["codEvento"];
                    $infoEvento = ControladorEvento::ctrMostrarInfoEvento($valor);
                    
                   ?>


                         <?php echo'
                           
                            <div class="container-fluid actualizarEvento">

                                <div id="imagePreview">
                                    <img id="imgSalidaP" width="100%" height="50%" src="'.$infoEvento["imgEvento"].'" />
                                </div>
                      
                                <hr>
                                
                                
                                
                               

                       
                          
                          

                        
                   

                                

                                <div class="row">
                                    <div class="col-lg-12">';
                                          if($infoEvento["fecFinEvento"] != $infoEvento["fecIniEvento"]){
                                            echo'<p class="fecha">'.ControladorEvento::ctrFechaMes($infoEvento["fecIniEvento"]).' AL '.ControladorEvento::ctrFechaMes($infoEvento["fecFinEvento"]).'</p>';
                                          }else{
                                            echo'<p class="fecha">'.ControladorEvento::ctrFechaMes($infoEvento["fecIniEvento"]).'</p>';
                                          }
                                         echo'<p class="direccion">'.$infoEvento["ubiEvento"].'</p>
                                         <p class="titulo">'.$infoEvento["titEvento"].'</p>
                                      
                                    </div>
                               </div>   

                            
                                <hr>


                                <div class="row">
                                <div class="col-lg-12">
                                        <div class="col-lg-4">          
                                                <div id="imagePreview2">
                                                    <img id="imgSalida" width="100%" height="50%" src="'.$infoEvento["porEvento"].'" />
                                                </div>

                                        </div>

                                        
                                        <div class="col-lg-8">
                                          
                                               
                                          <div>
                                          '.$infoEvento["desEvento"].'
                                          </div>

                                        </div>
         

                                </div>
                                </div>    
                                
                                <hr>
                               

                               <div class="row">
                                    <div class="col-lg-12">
                                        <div class="col-lg-4">

                                        </div>   
                                        <div class="col-lg-4">

                                       
                                                <a href="?p=eventos&admEvento=actualizar&codEvento='.$infoEvento["codEvento"].'" class="pixelEvento">
                                                    
                                                    <button type="button" class="btn btn-secondary" data-toggle="tooltip" title="Ver Evento">
                                                        
                                                    ACTUALIZAR
                        
                                                    </button>	
                                            
                                                </a>       

                                        </div> 
                                        <div class="col-lg-4">
                                        
                                        </div>         
                                    </div>
                                </div>    

                                </div>

                                ';
                                ?>
                            
 

                    <?php                
                    }else if($_GET["admEvento"]=="actualizar"){

                        $valor=$_GET["codEvento"];
                        $infoEvento = ControladorEvento::ctrMostrarInfoEvento($valor);
                        
                  echo' <form method="post" id="frm-test2" enctype="multipart/form-data">
                        <div class="container-fluid evento">
                        <div class="tituloNuevo"> 
                             <p>ACTUALIZAR EVENTO</p>
                        </div>

                        <div class="col-lg-4">
                            <input type="hidden" name="codEvento" id="codEvento" value="'.$infoEvento["codEvento"].'" /> 
                            <input class="form-control" type="file" name="imagenPortadaP2" id="imagenPortadaP2" /> 
                        </div>   
                            
                        <div class="col-lg-4  portadaP">
                            <strong><p>PORTADA PRINCIPAL</p></strong>
                        </div>
                        
                    
                        <div id="imagePreview">
                            <img id="imgSalidaP" width="100%" height="50%" src="'.$infoEvento["imgEvento"].'" />
                        </div>
                        <div class="alert alert-warning">
                        <p class="message-mg-rt"><strong>¡ATENCION!</strong> Recuerde que el tamaño de la imagen es de 1600 x 550</p>
                        </div>
                        <hr>

                        <div class="row">
                        <div class="col-lg-12">
                                <div class="col-lg-3">
                                   <strong><p class="form-control">FECHA INICIO DEL EVENTO:</p></strong>
                                </div>


                                <div class="col-lg-3">
                                  <input class="form-control" type="date" name="txtInicio2" id="txtInicio2" value="'.$infoEvento["fecIniEvento"].'">
                                </div>
 
                               
                        </div>
                        </div>

                        <div class="row">
                        <div class="col-lg-12">
                                <div class="col-lg-3">
                                   <strong><p class="form-control">FECHA FIN DEL EVENTO:</p></strong>
                                </div>


                                <div class="col-lg-3">
                                  <input class="form-control" type="date" name="txtFinal2" id="txtFinal2" value="'.$infoEvento["fecFinEvento"].'">
                                </div>
 
                               
                        </div>
                        </div>
                   

                        

                        <div class="row">
                            <div class="col-lg-12">
                               <div class="col-lg-3">
                                  <strong><p class="form-control">TITULO EVENTO:</p></strong>
                               </div>


                               <div class="col-lg-5">
                                 
                                 <textarea class="form-control" placeholder="max 80 caracteres" name="txtTitulo2" id="txtTitulo2" maxlength="50" required>'.$infoEvento["titEvento"].'</textarea>

                               </div>

                              
                            </div>
                       </div> 

                       
                        <div class="row">
                         <div class="col-lg-12">
                                <div class="col-lg-3">
                                   <strong><p class="form-control">DIRECCION:</p></strong>
                                </div>


                                <div class="col-lg-5">
                                  <input class="form-control" type="TEXT" name="txtDireccion2" id="txtDireccion2" value="'.$infoEvento["ubiEvento"].'" require>
                                </div>
 
                               
                         </div>
                        </div>      
                        
                        <hr>


                        <div class="row">
                        <div class="col-lg-12">
                                <div class="col-lg-4">
                                            
                                      
                                            
                                        <div class="col-lg-12  portadaP">
                                            <strong><p>PORTADA</p></strong>
                                        </div>
                                        <div class="col-lg-12">
                                        <input class="form-control" type="file" name="imagenPortada2" id="imagenPortada2" /> 
                                        </div>   
                                        
                                    
                                        <div id="imagePreview2">
                                            <img id="imgSalida" width="100%" height="50%" src="'.$infoEvento["porEvento"].'" />
                                        </div>
                                        <div class="alert alert-warning">
                                        <p class="message-mg-rt"><strong>¡ATENCION!</strong> Recuerde que el tamaño de la imagen es de 800 x 500</p>
                                        </div>

                                </div>';
                             
                                echo' <div class="col-lg-8">
                                  <h3 class="portadaP"><strong>DESCRIPCION</strong></h3>
                                   <div class="form-group txtArea">
                                        <textarea id="txt-content2" name="txt-content2"></textarea>
                                  </div>
                                  <div class="alert alert-warning">
                                    <p class="message-mg-rt"><strong>¡ATENCION!</strong> Si no desea cambios en la descripcion! No te preocupes quedara guardada la anterior</p>
                                  </div>
                                  <div class="alert alert-warning">
                                  <p class="message-mg-rt"><strong>¡ATENCION!</strong> Si desea cambios en la descripcion! tiene que realizarla de nuevo</p>
                                  </div>

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
                                echo'<a href="?p=eventos&admEvento=verEvento&codEvento='.$infoEvento["codEvento"].'"><button type="button" class="btn btn-default btn-block backColor2">CANCELAR</button></a>';
                                ?>
                                </div> 
                                <div class="col-lg-2">

                                <?php

                                 $nuevoEvento = new ControladorEvento();
                                 $nuevoEvento -> ctrActualizarEventos();

                                ?>
                                  <button type="button" class="btn btn-default btn-block backColor2 " id="btn-enviar2">GUARDAR</button>
                             
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
              <a href="?p=eventos&admEvento=nuevoEvento">
                  <button type="button" class="btn btn-primary btn-lg btn-block ">REGISTRAR UN NUEVO EVENTO COORPORATIVO</button>
              </a>
               </div>
               
               ';
                

            // <!--=====================================
             //   ¿LISTAR EVENTOS
           //  ======================================-->
  
           

			/*=============================================
			LLAMADO DE PAGINACIÓN
			=============================================*/
            

			if(isset($_GET["paginacion"])){

                $paginacion=$_GET["paginacion"];
                echo'<input type="hidden" id="txtPaginacion" value="'.$paginacion.'">';

				$base = ($_GET["paginacion"] - 1)*12;
				$tope = 12;
                
           
			}else{

                $paginacion=1;

				$base = 0;
				$tope = 12;
				

			}   

					
             
            $ordenar="codEvento";
            $item2="";
            $valor2="";
            
            $eventos = ControladorEvento::ctrMostrarEventos($ordenar, $item2, $valor2, $base, $tope);
            
			$listaEventos = ControladorEvento::ctrListarEventos($ordenar, $item2, $valor2);  


			if(!$listaEventos){ 

                echo '




            <div class="breadcome-area mg-b-30 small-dn">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="breadcome-list shadow-reset">
                                <div class="row  error404 text-center">
                                  
                                <h1><small>¡Oops!</small></h1>

                                <h2>Aún no hay Eventos Registrados</h2>
                                 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>';

               
        
			}else{
         
                

               echo' <!--=====================================
                VITRINA DE PRODUCTOS EN CUADRÍCULA
                ======================================-->
               
            <div class="breadcome-area mg-b-30 small-dn">
                <div class="container-fluid">
                    <div class="row">   
                        <ul class="grid0">';
                                
                            foreach ($eventos as $key => $value) {
                    
                                echo'<li class="col-md-3 col-sm-6 col-xs-12">
                                    
                                    <!--===============================================-->
                        
                                    <figure>
                                        
                                    
                                            
                                        <img src="'.$value["porEvento"].'" class="img-responsive">
                    
                            
                    
                                    </figure>
                    
                    
                                    <!--===============================================-->
                                    <hr>
                                   
                                        <h4>
                                            <div class="cajaTitulo2">
                                            <small class="tituloEvento2">
                                            
                                            
                                            '.$value["titEvento"].'<br>
                    
                                          
                    
                                             </small>	
                                            
                                            </div>
                                      		
                    
                                        </h4>
                
                        
                                   
                                   
                    
                                    <div class="col-xs-6 enlaces">
                                        
                                        <div class="btn-group pull-right">
                                            
                                        <div class="botonEvento">
                    
                                            <a href="?p=eventos&admEvento=verEvento&codEvento='.$value["codEvento"].'" class="pixelEvento">
                                            
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
                            if(count($listaEventos) != 0){

                                $pagEventos = ceil(count($listaEventos)/12);

                                if($pagEventos > 4){

                                    /*=============================================
                                    LOS BOTONES DE LAS PRIMERAS 4 PÁGINAS Y LA ÚLTIMA PÁG
                                    =============================================*/

                                    if($paginacion == 1){

                                        echo '<ul class="pagination">';
                                        
                                        for($i = 1; $i <= 4; $i ++){

                                            echo '<li id="item'.$i.'"><a href="?p=eventos&paginacion='.$i.'">'.$i.'</a></li>';

                                        }

                                        echo ' <li class="disabled"><a>...</a></li>
                                            <li id="item'.$pagEventos.'"><a href="?p=eventos&paginacion='.$pagEventos.'">'.$pagEventos.'</a></li>
                                            <li><a href="?p=eventos&paginacion=2"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>

                                        </ul>';

                                    }

                                    /*=============================================
                                    LOS BOTONES DE LA MITAD DE PÁGINAS HACIA ABAJO
                                    =============================================*/

                                    else if($paginacion != $pagEventos && 
                                            $paginacion != 1 &&
                                            $paginacion <  ($pagEventos/2) &&
                                            $paginacion < ($pagEventos-3)
                                            ){

                                            $numPagActual = $paginacion;

                                            echo '<ul class="pagination">
                                                <li><a href="?p=eventos&paginacion='.($numPagActual-1).'"><i class="fa fa-angle-left" aria-hidden="true"></i></a></li> ';
                                        
                                            for($i = $numPagActual; $i <= ($numPagActual+3); $i ++){

                                                echo '<li id="item'.$i.'"><a href="?p=eventos&paginacion='.$i.'">'.$i.'</a></li>';

                                            }

                                            echo ' <li class="disabled"><a>...</a></li>
                                                <li id="item'.$pagEventos.'"><a href="?p=eventos&paginacion='.$pagEventos.'">'.$pagEventos.'</a></li>
                                                <li><a href="?p=eventos&paginacion='.($numPagActual+1).'"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>

                                            </ul>';

                                    }

                                    /*=============================================
                                    LOS BOTONES DE LA MITAD DE PÁGINAS HACIA ARRIBA
                                    =============================================*/

                                    else if($paginacion != $pagEventos && 
                                            $paginacion != 1 &&
                                            $paginacion >=  ($pagEventos/2) &&
                                            $paginacion < ($pagEventos-3)
                                            ){

                                            $numPagActual = $paginacion;
                                        
                                            echo '<ul class="pagination">
                                            <li><a href="?p=eventos&paginacion='.($numPagActual-1).'"><i class="fa fa-angle-left" aria-hidden="true"></i></a></li> 
                                            <li id="item1"><a href="?p=eventos&paginacion=1">1</a></li>
                                            <li class="disabled"><a>...</a></li>
                                            ';
                                        
                                            for($i = $numPagActual; $i <= ($numPagActual+3); $i ++){

                                                echo '<li id="item'.$i.'"><a href="?p=eventos&paginacion='.$i.'">'.$i.'</a></li>';

                                            }


                                            echo '  <li><a href="?p=eventos&paginacion='.($numPagActual+1).'"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                </ul>';
                                    }

                                    /*=============================================
                                    LOS BOTONES DE LAS ÚLTIMAS 4 PÁGINAS Y LA PRIMERA PÁG
                                    =============================================*/

                                    else{

                                        $numPagActual = $paginacion;

                                        echo '<ul class="pagination">
                                            <li><a href="?p=eventos&paginacion='.($numPagActual-1).'"><i class="fa fa-angle-left" aria-hidden="true"></i></a></li> 
                                            <li id="item1"><a href="?p=eventos&paginacion=1">1</a></li>
                                            <li class="disabled"><a>...</a></li>
                                            ';
                                        
                                        for($i = ($pagEventos-3); $i <= $pagEventos; $i ++){

                                            echo '<li id="item'.$i.'"><a href="?p=eventos&paginacion='.$i.'">'.$i.'</a></li>';

                                        }

                                        echo ' </ul>';

                                    }

                                }else{

                                    echo '<ul class="pagination">';
                                    
                                    for($i = 1; $i <= $pagEventos; $i ++){

                                        echo '<li id="item'.$i.'"><a href="?p=eventos&paginacion='.$i.'">'.$i.'</a></li>';

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















