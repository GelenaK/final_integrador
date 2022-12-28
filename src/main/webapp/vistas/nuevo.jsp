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
        <title>GYM</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
           <!-- CSS only -->
        
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous"> <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
      <script src="https://kit.fontawesome.com/2cbbc87d30.js" crossorigin="anonymous"></script>
    </head>
    <body>
          
        
        <div> 
         <a href="vistas/imagenes/foto1.jpg"></a>
        </div>
            
            
           
          
          
        <div class container>
       
                    
                  <div class="row" >
                        
                  <h2 class="text-center" >Añadir Nuevo Socio</h2>
                    
                        <form class="p-4" method="POST" action="SociosController?accion=insert">
                          <div class="col-6">   
                              <div "class="ml-auto">
                            <label style="margin-bottom: 3px "for="nombre" class="form-label" >Nombre</label>
                            <input type="text" class="form-control" id="nombre" name="nombre">                          
                        </div> 
                        </div>
                        <div class="col-6">   
                            <div class="ml-auto">
                            <label style="margin-bottom: 3px " for="apellido" class="form-label" >Apellido</label>
                            <input type="text" class="form-control" id="apellido" name="apellido">                          
                        </div> 
                        </div>     
                           <div class="col-6"> 
                           <div class="ml-auto">
                            <label style="margin-bottom: 3px " for="direccion" class="form-label" >Direccion</label>
                            <input type="text" class="form-control" id="direccion" name="direccion">                          
                        </div>
                        </div>        
                         <div class="col-6">      
                         <div class="ml-auto">
                            <label style="margin-bottom: 3px " for="localidad" class="form-label" >Localidad</label>
                            <input type="text" class="form-control" id="localidad" name="localidad">                          
                        </div> 
                        </div>      
                            <div class="col-6">    
                          <div class="ml-auto">
                            <label style="margin-bottom: 3px " for="fnac" class="form-label" >Fecha Nac</label>
                            <input type="date" class="form-control" id="fnac" name="fnac" style="color:grey" placeholder  ="aaaa-mm-dd">                          
                        </div> 
                        </div>         
                           <div class="col-6">        
                        <div class="ml-auto">
                            <label style="margin-bottom: 3px " for="mail" class="form-label" >E-Mail</label>
                            <input type="text" class="form-control" id="mail" name="mail">                          
                        </div>  
                        </div>        
                           <div class="col-6">       
                        <div class="ml-auto">
                            <label style="margin-bottom: 3px "  for="telefono" class="form-label" >Telefono</label>
                            <input type="text" class="form-control" id="telefono" name="telefono">                          
                        </div>
                        </div> 

                       
     
                   
                            <div container>    
                               
               
                 <button style="width: 610px" type="submit" class="btn btn-primary mt-3 ml-2" >Añadir </button>

                 </div>
                 </div> 
                 
            </form>  
       </div>

             
        
        
        
        
             
}
               
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</html>