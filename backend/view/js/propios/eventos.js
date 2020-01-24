/*=============================================
ENLACES PAGINACIÓN
=============================================*/


var pagActual = $('#txtPaginacion').val();

if(isNaN(pagActual)){

   $("#item1").addClass("active");
   
}else{

   $("#item"+pagActual).addClass("active");
 
}


/*=============================================
PREVISUALIZACION DE IMAGEN PORTADA PRINCIPAL
=============================================*/

$(window).load(function(){

   $(function() {
   $('#imagenPortadaP').change(function(e) {
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
PREVISUALIZACION DE IMAGEN PORTADA
=============================================*/

$(window).load(function(){

   $(function() {
   $('#imagenPortada').change(function(e) {
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
       $('#imgSalida').attr("src",result);
       }
   });
});



/*=============================================
PREVISUALIZACION DE IMAGEN PORTADA PRINCIPAL ACTUALIZAR
=============================================*/

$(window).load(function(){

   $(function() {
   $('#imagenPortadaP2').change(function(e) {
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
PREVISUALIZACION DE IMAGEN PORTADA ACTUALIZAR
=============================================*/

$(window).load(function(){

   $(function() {
   $('#imagenPortada2').change(function(e) {
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
       $('#imgSalida').attr("src",result);
       }
   });
});




/*=============================================
EDITOR DE TEXTO NUEVO EVENTO
=============================================*/

   
$('#txt-content').Editor();

$('#btn-enviar').click(function(e){
   e.preventDefault();
   $('#txt-content').text($('#txt-content').Editor('getText'));
   

   if($("#imagenPortadaP").val() == ""){
      $("#imagenPortadaP").after('<div class="alert alert-warning">'+
      '<p class="message-mg-rt"><strong>¡Advertencia!</strong> Seleccione Imagen</p></div>');
      $("#imagenPortadaP").focus();
      return;
      
   }

   if($("#txtInicio").val()==""){
      $("#txtInicio").after('<div class="alert alert-warning">'+
      '<p class="message-mg-rt"><strong>¡Advertencia!</strong>Seleccione una fecha de inicio del evento.</p></div>');
      $("#txtInicio").focus();
		return;

   }else if($("#txtFinal").val()==""){
      $("#txtFinal").after('<div class="alert alert-warning">'+
      '<p class="message-mg-rt"><strong>¡Advertencia!</strong>Seleccione una fecha de final del evento.</p></div>');
      $("#txtFinal").focus();
		return;

   }else if($("#txtTitulo").val()==""){
      $("#txtTitulo").after('<div class="alert alert-warning">'+
      '<p class="message-mg-rt"><strong>¡Advertencia!</strong>Escriba el titulo del evento.</p></div>');
      $("#txtTitulo").focus();
		return;
      
   }else if($("#txtDireccion").val()==""){
      $("#txtDireccion").after('<div class="alert alert-warning">'+
      '<p class="message-mg-rt"><strong>¡Advertencia!</strong> Escriba la dirreccion del evento.</p></div>');
      $("#txtDireccion").focus();
		return;
      
   }else if($("#imagenPortada").val()==""){
      $("#imagenPortada").after('<div class="alert alert-warning">'+
      '<p class="message-mg-rt"><strong>¡Advertencia!</strong>Seleccione imagen de portada.</p></div>');
      $("#imagenPortada").focus();
		return;

   }else if($("#txt-content").val()==""){
      $("#txt-content").after('<div class="alert alert-warning">'+
      '<p class="message-mg-rt"><strong>¡Advertencia!</strong>Describa el evento.</p></div>');
      $("#txt-content").focus();
		return;

   }else{
     $('#frm-test').submit();	
   }
 
});

$("#imagenPortadaP").change(function(){

   $(".alert").remove();

});

$("#txtInicio").change(function(){

   $(".alert").remove();

});

$("#txtFinal").change(function(){

   $(".alert").remove();

});

$("#txtTitulo").keyup(function(){
   
   $(".alert").remove();

});

$("#txtDireccion").keyup(function(){
   
   $(".alert").remove();
 })

$("#imagenPortada").change(function(){

   $(".alert").remove();

});

$("#txt-content").keyup(function(){

   $(".alert").remove();

});



  /*=============================================
	VALIDAMOS IMAGEN PORTADA PRINCIPAL
	=============================================*/
   $("#imagenPortadaP").change(function(){

      var imagen = this.files[0];
   
      /*=============================================
      VALIDAMOS EL FORMATO DE LA IMAGEN
      =============================================*/
      
      if(imagen["type"] != "image/jpeg" ){
   
         $("#imagenPortadaP").val("");
         
         $("#imagenPortadaP").after('<div class="alert alert-danger">'+
         '<p class="message-mg-rt"><strong>¡Advertencia!</strong>La imagen no cumple con los parametros Extension.</p></div>');
         $("#imagenPortadaP").focus();
         return;
         
      }
      
   });
   
   
    /*=============================================
      VALIDAMOS IMAGEN PORTADA
      =============================================*/
   $("#imagenPortada").change(function(){
   
      var imagen = this.files[0];
   
      /*=============================================
      VALIDAMOS EL FORMATO DE LA IMAGEN
      =============================================*/
      
      if(imagen["type"] != "image/jpeg" ){
   
         $("#imagenPortada").val("");
         
         $("#imagenPortada").after('<div class="alert alert-danger">'+
         '<p class="message-mg-rt"><strong>¡Advertencia!</strong>La imagen no cumple con los parametros Extension.</p></div>');
         $("#imagenPortada").focus();
         return;
         
      }
      
   });
//==========================================//

/*=============================================
EDITOR DE TEXTO ACTUALIZAR EVENTO
=============================================*/

$('#txt-content2').Editor();

$('#btn-enviar2').click(function(e){
   e.preventDefault();
  
   $('#txt-content2').text($('#txt-content2').Editor('getText'));
   

  

   if($("#txtInicio2").val()==""){
      $("#txtInicio2").after('<div class="alert alert-warning">'+
      '<p class="message-mg-rt"><strong>¡Advertencia!</strong>Seleccione una fecha de inicio del evento.</p></div>');
      $("#txtInicio2").focus();
		return;

   }else if($("#txtFinal2").val()==""){
      $("#txtFinal2").after('<div class="alert alert-warning">'+
      '<p class="message-mg-rt"><strong>¡Advertencia!</strong>Seleccione una fecha de final del evento.</p></div>');
      $("#txtFinal2").focus();
		return;

   }else if($("#txtTitulo2").val()==""){
      $("#txtTitulo2").after('<div class="alert alert-warning">'+
      '<p class="message-mg-rt"><strong>¡Advertencia!</strong>Escriba el titulo del evento.</p></div>');
      $("#txtTitulo2").focus();
		return;
      
   }else if($("#txtDireccion2").val()==""){
      $("#txtDireccion2").after('<div class="alert alert-warning">'+
      '<p class="message-mg-rt"><strong>¡Advertencia!</strong> Escriba la dirreccion del evento.</p></div>');
      $("#txtDireccion2").focus();
		return;
      
   }else{
     $('#frm-test2').submit();	
   }
 
});



$("#txtInicio2").change(function(){

   $(".alert").remove();

});

$("#txtFinal2").change(function(){

   $(".alert").remove();

});

$("#txtTitulo2").keyup(function(){
   
   $(".alert").remove();

});

$("#txtDireccion2").keyup(function(){
   
   $(".alert").remove();
 })


//========================== */



 