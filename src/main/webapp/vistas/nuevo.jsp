<%-- 
    Document   : nuevo
    Created on : 6 dic 2022, 12:55:20
    Author     : windows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>

        
<!--<script>
  function validarFormulario(event) 
  {
    // Obtener los valores de los campos de formulario
    var nombre = document.getElementById('nombre').value;
    var apellido = document.getElementById('apellido').value;
    var direccion = document.getElementById('direccion').value;
    var localidad = document.getElementById('localidad').value;
    var fecha = document.getElementById('fnac').value;
    var mail = document.getElementById('mail').value;
    var telefono = document.getElementById('telefono').value;
   
        
    if (nombre.length < 3) 
    {
      alert('El nombre debe tener al menos 3 caracteres');
      event.preventDefault();
      return false;
    }
    if (apellido.length < 3) 
    {
      alert('El apellido debe tener al menos 3 caracteres');
      event.preventDefault();
      return false;
    }
    if (direccion.length < 3) 
    {
      alert('La direccion debe tener al menos 3 caracteres');
      event.preventDefault();
      return false;
    }
    if (telefono.length < 3) 
    {
      alert('El telefono debe tener al menos 3 números');
      event.preventDefault();
      return false;
    }
    
    
    
    
    // Verifico si el correo tiene un formato válido
    if (!/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(mail))
    {
      alert('Por favor ingresá una dirección de correo electrónico válida');
      event.preventDefault();
      return false;
    }

       
    return true;
  }
</script>-->

        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
      
     
        
        <title>GYM</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
           <!-- CSS only -->
        
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous"> <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
      <script src="https://kit.fontawesome.com/2cbbc87d30.js" crossorigin="anonymous"></script>
          <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Righteous&display=swap" rel="stylesheet">
    </head>
    <body>
          
        <div>
        <nav class="navbar bg-primary class">
       <div class="container-fluid">
       <a class="navbar-brand" href="#">
      <img src="vistas/imagenes/logo.png" alt="Logo" style="margin-left: 20px" >
      <!-- <div style> No s sin entrenar </div>-->
      </a>
           <div style="margin-right: 100px">
               <div><p style="font-family: Righteous ;color:white">- Funcional Cross</p></div>
             <div> <p style="font-family: Righteous;color:white">- Sobrecarga</p></div>
              <div> <p style="font-family: Righteous;color:white">- Rehabilitación</p></div>
             
              <div style="position: relative; margin-left: 200px ;margin-top: -120px">
               <div><p style="font-family: Righteous ;color:white">- Running</p></div>
               <div><p style="font-family: Righteous ;color:white">- Spinning</p></div>
                <div><p style="font-family: Righteous ;color:white">- Vestuarios y sauna</p></div>
      </div>
</nav>
          
       </div>   
        <div  style="margin-left: 20px" class container>
                        
            <div class="row" >
                        
                  <h2 style="margin-left: 130px; margin-top: 10px" class="text-left" >Nuevo Socio</h2>
                  
                  <div class="row" >
                    <div>
                    <img src="vistas/imagenes/runner.png "style="width: 40px; position: relative;margin-left: 300px"  class="card-img-top" alt="">
                    </div>
                    <div style="background-color: #5C636B; width: 490px; margin-left: 35px; height: 40px; margin-top: -40px">
                        <input onClick="history.go(-1)" type="button" value="Volver"name="btnVolver" style=" margin-left: 300px; margin-top: 2px;width: 100px; height: 38px;background-color:#5C636B;font-size:14pt;font-weight:bold;color:aqua; border-style: none">                                                                          
                    </div> 
                  
                
               
          
                   <form form style="font-size: 12px" class="p-4" method="POST" action="SociosController?accion=insert">
                        <div class="col-5">   
                            <div "class="ml-auto">
                            <label style="margin-bottom: 3px "for="nombre" class="form-label" >Nombre</label>
                            <input type="text" style="font-size: 13px" class="form-control" id="nombre" name="nombre">                          
                            </div> 
                        </div>
                       
                        <div class="col-5">   
                            <div class="ml-auto">
                            <label style="margin-bottom: 3px " for="apellido" class="form-label" >Apellido</label>
                            <input type="text" style="font-size: 13px" class="form-control" id="apellido" name="apellido">                          
                            </div> 
                        </div>  
                       
                        <div class="col-5"> 
                           <div class="ml-auto">
                            <label style="margin-bottom: 3px " for="direccion" class="form-label" >Direccion</label>
                            <input type="text" class="form-control" id="direccion" name="direccion">                          
                           </div>
                        </div> 
                       
                        <div class="col-5">      
                            <div class="ml-auto">
                            <label style="margin-bottom: 3px " for="localidad" class="form-label" >Localidad</label>
                            <input type="text" class="form-control" id="localidad" name="localidad">                          
                            </div> 
                        </div>  
                       
                        <div class="col-5">    
                           <div class="ml-auto">
                            <label style="margin-bottom: 3px " for="fnac" class="form-label" >Fecha Nac</label>
                            <input type="date"style="font-size: 13px" class="form-control" id="fnac" name="fnac" style="color:grey">
                            </div> 
                        </div> 
                            
                            
                            
                            
                        <div class="col-5">        
                            <div class="ml-auto">
                            <label style="margin-bottom: 3px " for="mail" class="form-label" >E-Mail</label>
                            <input type="text" style="font-size: 13px" class="form-control" id="mail" name="mail">                          
                            </div>  
                        </div>
                            
                            
                           <div class="col-5">       
                           <div class="ml-auto">
                            <label style="margin-bottom: 3px "  for="telefono" class="form-label" >Telefono</label>
                            <input type="text" style="font-size: 13px" class="form-control" id="telefono" name="telefono">                          
                           </div>
                        </div> 
                                
                 
                <div container>    
                               
               
                <!-- <button style="width: 520px; margin-bottom: -58px" type="submit" class="btn btn-primary mt-3 ml-2" >Añadir </button>-->
                  <button type="submit" style="margin-top: 10px;margin-left: 20px" class="btn btn-primary" >Añadir </button>
                 
                 
                              
                 <img style="margin-top:-500px; margin-left: 545px" src="vistas/imagenes/motivacion.jpg" height="500px" alt="" >
                                
                 </div>
            
                   
                  </form>  
       
 
     </div>        
 </div>
            
        
        
        
        
             
               
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</html>