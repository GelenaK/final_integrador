<%-- 
    Document   : nuevo
    Created on : 25 dic 2022, 13:34:32
    Author     : Alejandro
--%>

!--<%@page contentType="text/html" pageEncoding="UTF-8"%>-->
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
           <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>    
        <script src="https://kit.fontawesome.com/2cbbc87d30.js" crossorigin="anonymous"></script>
    </head>
    <body>
                
        
        <div class="container" >
            <h1 class="text-center" >Añadir Nuevo Socio</h1>
                <div class="row" >
                        <form class="p-4" method="POST" action="SociosController?accion=insert">
                          <div class="col-6">   
                        <div class="mb-2">
                            <label for="nombre" class="form-label" >Nombre</label>
                            <input type="text" class="form-control" id="nombre" name="nombre">                          
                        </div> 
                        </div>
                        <div class="col-6">   
                            <div class="mb-">
                            <label for="apellido" class="form-label" >Apellido</label>
                            <input type="text" class="form-control" id="apellido" name="apellido">                          
                        </div> 
                        </div>     
                           <div class="col-6"> 
                           <div class="mb-2">
                            <label for="direccion" class="form-label" >Direccion</label>
                            <input type="text" class="form-control" id="direccion" name="direccion">                          
                        </div>
                        </div>        
                         <div class="col-6">      
                         <div class="mb-2">
                            <label for="localidad" class="form-label" >Localidad</label>
                            <input type="text" class="form-control" id="localidad" name="localidad">                          
                        </div> 
                        </div>      
                            <div class="col-6">    
                          <div class="mb-2">
                            <label for="fnac" class="form-label" >Fecha Nac</label>
                            <input type="date" class="form-control" id="fnac" name="fnac">                          
                        </div> 
                        </div>         
                           <div class="col-6">        
                        <div class="mb-2">
                            <label for="mail" class="form-label" >E-Mail</label>
                            <input type="text" class="form-control" id="mail" name="mail">                          
                        </div>  
                        </div>        
                           <div class="col-6">       
                        <div class="mb-2">
                            <label for="telefono" class="form-label" >Telefono</label>
                            <input type="text" class="form-control" id="telefono" name="telefono">                          
                        </div>
                        </div> 

                        <button type="submit" class="btn btn-primary" >Añadir </button>

                    </form>                
                </div>
       </div>

    </body>
</html>
