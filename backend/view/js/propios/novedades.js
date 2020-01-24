/*=============================================
ENLACES PAGINACIÓN NOVEDAD
=============================================*/


var pagActual = $('#txtPaginacionNovedad').val();

if(isNaN(pagActual)){

   $("#pagNovedad1").addClass("active");
   
}else{

   $("#pagNovedad"+pagActual).addClass("active");
 
}


/*=============================================
PREVISUALIZACION DE IMAGEN ACTUALIZAR
=============================================*/

$(window).load(function(){

   $(function() {
   $('#imgActualizarNovedad').change(function(e) {
       addImage(e); 
       });

       function addImage(e){
       var file = e.target.files[0],
       imageType = /image.*/;
   
       if (!file.type.match(imageType))
       return;
   
       var reader = new FileReader();
       reader.onload = fileOnload;
       reader.readAsDataURL(file);
       }
   
       function fileOnload(e) {
       var result=e.target.result;
       $('#imgSalidaP').attr("src",result);
       }
   });
});



/*=============================================
EDITOR DE TEXTO ACTUALIZAR NOVEDAD
=============================================*/

$('#txtDescripcionActualizarNovedad').Editor();

$('#btnEnviarActualizarNovedad').click(function(e){
   e.preventDefault();
  
   $('#txtDescripcionActualizarNovedad').text($('#txtDescripcionActualizarNovedad').Editor('getText'));
   

  

   if($("#txtActualizarTituloNovedad").val()==""){
      $("#txtActualizarTituloNovedad").after('<div class="alert alert-warning">'+
      '<p class="message-mg-rt"><strong>¡Advertencia!</strong>Escriba el titulo de la novedad.</p></div>');
      $("#txtActualizarTituloNovedad").focus();
		return;
      
   }else{
     $('#formActualizarNovedad').submit();	
   }
 
});




$("#txtActualizarTituloNovedad").keyup(function(){
   
   $(".alert").remove();

});


//========================== */

 /*=============================================
      VALIDAMOS IMAGEN ACTUALIZAR
      =============================================*/
      $("#imgActualizarNovedad").change(function(){
   
         var imagen = this.files[0];
      
         /*=============================================
         VALIDAMOS EL FORMATO DE LA IMAGEN
         =============================================*/
         
         if(imagen["type"] != "image/jpeg" ){
      
            $("#imgActualizarNovedad").val("");
            
            $("#imgActualizarNovedad").after('<div class="alert alert-danger">'+
            '<p class="message-mg-rt"><strong>¡Advertencia!</strong>La imagen no cumple con los parametros Extension.</p></div>');
            $("#imgActualizarNovedad").focus();
            return;
            
         }
         
      });
   //==========================================//




   /*=============================================
PREVISUALIZACION DE IMAGEN NUEVA NOVEDAD
=============================================*/

$(window).load(function(){

   $(function() {
   $('#imgNuevoNovedad').change(function(e) {
       addImage(e); 
       });

       function addImage(e){
       var file = e.target.files[0],
       imageType = /image.*/;
   
       if (!file.type.match(imageType))
       return;
   
       var reader = new FileReader();
       reader.onload = fileOnload;
       reader.readAsDataURL(file);
       }
   
       function fileOnload(e) {
       var result=e.target.result;
       $('#imgSalidaP').attr("src",result);
       }
   });
});



/*=============================================
EDITOR DE TEXTO NUEVA NOVEDAD
=============================================*/

$('#txtDescripcionNuevoNovedad').Editor();
  
$('#btnNuevoNovedad').click(function(e){
   e.preventDefault();
  
   $('#txtDescripcionNuevoNovedad').text($('#txtDescripcionNuevoNovedad').Editor('getText'));
   

   if($("#txtNuevoTituloNovedad").val()==""){
      $("#txtNuevoTituloNovedad").after('<div class="alert alert-warning">'+
      '<p class="message-mg-rt"><strong>¡Advertencia!</strong>Escriba el titulo de la novedad.</p></div>');
      $("#txtNuevoTituloNovedad").focus();
		return;
      
   }else if($("#imgNuevoNovedad").val()==""){
      $("#imgNuevoNovedad").after('<div class="alert alert-warning">'+
      '<p class="message-mg-rt"><strong>¡Advertencia!</strong>Por favor seleccione imagen de portada.</p></div>');
      $("#imgNuevoNovedad").focus();
		return;
      
   }else if($("#txtDescripcionNuevoNovedad").val()==""){
      $("#txtDescripcionNuevoNovedad").after('<div class="alert alert-warning">'+
      '<p class="message-mg-rt"><strong>¡Advertencia!</strong>Escriba la descripcion.</p></div>');
      $("#txtDescripcionNuevoNovedad").focus();
		return;
      
   }else  {
     $('#formNuevaNovedad').submit();	
   }
 
});




$("#txtNuevoTituloNovedad").keyup(function(){
   
   $(".alert").remove();

});

$("#imgNuevoNovedad").change(function(){

   $(".alert").remove();

});


$("#txtDescripcionNuevoNovedad").keyup(function(){

   $(".alert").remove();

});



//========================== */

 /*=============================================
      VALIDAMOS IMAGEN NUEVA NOVEDAD
      =============================================*/
      $("#imgNuevoNovedad").change(function(){
   
         var imagen = this.files[0];
      
         /*=============================================
         VALIDAMOS EL FORMATO DE LA IMAGEN
         =============================================*/
         
         if(imagen["type"] != "image/jpeg" ){
      
            $("#imgNuevoNovedad").val("");
            
            $("#imgNuevoNovedad").after('<div class="alert alert-danger">'+
            '<p class="message-mg-rt"><strong>¡Advertencia!</strong>La imagen no cumple con los parametros Extension.</p></div>');
            $("#imgNuevoNovedad").focus();
            return;
            
         }
         
      });
   //==========================================//



   