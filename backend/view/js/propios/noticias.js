/*=============================================
ENLACES PAGINACIÓN NOTICIAS
=============================================*/


var pagActual = $('#txtPaginacionNoticia').val();

if(isNaN(pagActual)){

   $("#pagNoticias1").addClass("active");
   
}else{

   $("#pagNoticias"+pagActual).addClass("active");
 
}


/*=============================================
PREVISUALIZACION DE IMAGEN ACTUALIZAR
=============================================*/

$(window).load(function(){

   $(function() {
   $('#imgActualizarNoticia').change(function(e) {
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
EDITOR DE TEXTO ACTUALIZAR NOTICIA
=============================================*/

$('#txtDescripcionActualizarNoticia').Editor();

$('#btnEnviarActualizarNoticia').click(function(e){
   e.preventDefault();
  
   $('#txtDescripcionActualizarNoticia').text($('#txtDescripcionActualizarNoticia').Editor('getText'));
   

  

   if($("#txtActualizarTituloNoticia").val()==""){
      $("#txtActualizarTituloNoticia").after('<div class="alert alert-warning">'+
      '<p class="message-mg-rt"><strong>¡Advertencia!</strong>Escriba el titulo de la noticia.</p></div>');
      $("#txtActualizarTituloNoticia").focus();
		return;
      
   }else{
     $('#formActualizarNoticia').submit();	
   }
 
});




$("#txtActualizarTituloNoticia").keyup(function(){
   
   $(".alert").remove();

});


//========================== */

 /*=============================================
      VALIDAMOS IMAGEN ACTUALIZAR
      =============================================*/
      $("#imgActualizarNoticia").change(function(){
   
         var imagen = this.files[0];
      
         /*=============================================
         VALIDAMOS EL FORMATO DE LA IMAGEN
         =============================================*/
         
         if(imagen["type"] != "image/jpeg" ){
      
            $("#imgActualizarNoticia").val("");
            
            $("#imgActualizarNoticia").after('<div class="alert alert-danger">'+
            '<p class="message-mg-rt"><strong>¡Advertencia!</strong>La imagen no cumple con los parametros Extension.</p></div>');
            $("#imgActualizarNoticia").focus();
            return;
            
         }
         
      });
   //==========================================//




   /*=============================================
PREVISUALIZACION DE IMAGEN NUEVA NOTICIA
=============================================*/

$(window).load(function(){

   $(function() {
   $('#imgNuevoNoticia').change(function(e) {
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
EDITOR DE TEXTO NUEVA NOTICIA
=============================================*/

$('#txtDescripcionNuevoNoticia').Editor();
  
$('#btnNuevoNoticia').click(function(e){
   e.preventDefault();
  
   $('#txtDescripcionNuevoNoticia').text($('#txtDescripcionNuevoNoticia').Editor('getText'));
   

   if($("#txtNuevoTituloNoticia").val()==""){
      $("#txtNuevoTituloNoticia").after('<div class="alert alert-warning">'+
      '<p class="message-mg-rt"><strong>¡Advertencia!</strong>Escriba el titulo de la noticia.</p></div>');
      $("#txtNuevoTituloNoticia").focus();
		return;
      
   }else if($("#imgNuevoNoticia").val()==""){
      $("#imgNuevoNoticia").after('<div class="alert alert-warning">'+
      '<p class="message-mg-rt"><strong>¡Advertencia!</strong>Por favor seleccione imagen de portada.</p></div>');
      $("#imgNuevoNoticia").focus();
		return;
      
   }else if($("#txtDescripcionNuevoNoticia").val()==""){
      $("#txtDescripcionNuevoNoticia").after('<div class="alert alert-warning">'+
      '<p class="message-mg-rt"><strong>¡Advertencia!</strong>Escriba la descripcion.</p></div>');
      $("#txtDescripcionNuevoNoticia").focus();
		return;
      
   }else  {
     $('#formNuevaNoticia').submit();	
   }
 
});




$("#txtNuevoTituloNoticia").keyup(function(){
   
   $(".alert").remove();

});

$("#imgNuevoNoticia").change(function(){

   $(".alert").remove();

});


$("#txtDescripcionNuevoNoticia").keyup(function(){

   $(".alert").remove();

});



//========================== */

 /*=============================================
      VALIDAMOS IMAGEN NUEVA NOTICIA
      =============================================*/
      $("#imgNuevoNoticia").change(function(){
   
         var imagen = this.files[0];
      
         /*=============================================
         VALIDAMOS EL FORMATO DE LA IMAGEN
         =============================================*/
         
         if(imagen["type"] != "image/jpeg" ){
      
            $("#imgNuevoNoticia").val("");
            
            $("#imgNuevoNoticia").after('<div class="alert alert-danger">'+
            '<p class="message-mg-rt"><strong>¡Advertencia!</strong>La imagen no cumple con los parametros Extension.</p></div>');
            $("#imgNuevoNoticia").focus();
            return;
            
         }
         
      });
   //==========================================//



   