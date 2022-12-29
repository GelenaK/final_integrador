<%-- 
    Document   : socios
    Created on : 25 dic 2022, 13:31:03
    Author     : A
--%>

<%@page import="modelo.SociosDAO"%>
<%@page import="modelo.Socios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>



<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
           <!-- CSS only -->
        
           
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous"> <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
      <script src="https://kit.fontawesome.com/2cbbc87d30.js" crossorigin="anonymous"></script>
     <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Righteous&display=swap" rel="stylesheet">
    </head>

    <body>
             
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
        
          
         
          <!-- <div>
            <img src="vistas/imagenes/foto1.jpg"/>
        </div> -->
        
        
        <div style= "margin-top: 5px" class="container">
    <div class="row row-cols-1 row-cols-md-3 g-4">
     <div class="col">
      <div class="card h-50">
        <img src="vistas/imagenes/cintas.jpg" class="card-img-top" alt="" >

          <div>
              <a style="margin-top: 3px "class="btn btn-secondary bg-" href="https://www.google.com/search?q=cintas+para+correr&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjEoJj69pr8AhWbrJUCHdejD3MQ_AUoAXoECAEQAw&biw=1366&bih=568&dpr=1" target="_blank" role="button" ><b>Cinta</b></a>
        
          </div>                                              
        <div class="card-body"mt-5 ></div>   
      </div>
    </div>

    <div class="col">
      <div   class="card h-50">
        <img src="vistas/imagenes/bici.jpg" class="card-img-top" alt="">
        
          <div>        
            <a style="margin-top: 3px "class ="btn btn-secondary bg-" href="#" role="button" ><b>Bicicleta Fija</b></a>
            </div>                                        
        <div class="card-body"></div> 
                                  
      </div>      
    </div>

     <div class="col">
      <div   class="card h-50">
        <img src="vistas/imagenes/entrenam.jpg" class="card-img-top" alt="">
        
          <div>        
            <a style="margin-top: 3px "class="btn btn-secondary bg-" href="#" role="button" ><b>Entrenamiento</b></a>
             
            </div>                                        
        <div class="card-body"></div>
          
                            
      </div>      
    </div>   
        
          
</div>                         
         <!--<div class="d-grid p-2 bg-primary text-white">Asociáte</div>-->
            
         <div>
            
             <h1 class="d-grid p-0 bg-primary text-white display-3 fu-bold text-center">Asociáte <a class="btn btn-lg btn-secondary " href="SociosController?accion=nuevo" ><h1 style="color:aqua ">Aquí <i class="fa-solid fa-person-running"></i></h1></a>    
      
         
         <!--<h1 class="d-grid p-2 bg-primary text-white display-3 fu-bold text-center">Asociáte <a class="btn btn-lg btn-secondary " href="SociosController?accion=nuevo" ><h1>Aquí</h1></a></h1>-->
         
         
       <!--  <a class="btn btn-primary " href="SociosController?accion=nuevo">Aquí</a>-->
         
         </div>
         <section>
             <div style="height: 60px" >
             <p></p>
         </div>
         <h4 class="display -block text-center">Listado de Socios </h4>  
        
         
        
        <div class="container">
            <div class="row">   
              <!--   <a class="btn btn-primary col-4 m-4" href="SociosController?accion=nuevo">Agregar Socio</a>-->
              
                <table style="font-size: 12px" class="table table-striped">
                    <thead>
                            <th>id</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                             <th>Direccion</th>
                             <th>Localidad</th>
                             <th>Fecha Nac.</th>
                             <th>Telefono</th>
                             <th>mail</th>
                             <th>Modificar</th>
                             <th>Eliminar</th>
                    </thead>

                    <%
                    List<Socios> resultado= null;   
                    SociosDAO s1=new SociosDAO();
                    resultado=s1.listarSocios();
                    
                                for(int i=0;i<resultado.size();i++)
				{
				String ruta="SociosController?accion=modificar&id="+resultado.get(i).getIdSocio();	
				String rutaE="SociosController?accion=eliminar&id="+resultado.get(i).getIdSocio();
				%>                


                    <tr>
                         <td><%=resultado.get(i).getIdSocio()%></td>
                         <td><%=resultado.get(i).getNombre()%></td>
                         <td><%=resultado.get(i).getApellido()%></td>
                         <td><%=resultado.get(i).getDireccion()%></td>
                         <td><%=resultado.get(i).getLocalidad()%></td>
                         <td><%=resultado.get(i).getFnac()%></td>
                         <td><%=resultado.get(i).getTelefono()%></td>
                         <td><%=resultado.get(i).getMail()%></td>
                     
                         
                      
                         <td class="text-center"><a href=<%=ruta%>><i class="fa-solid fa-marker"></i> </a></td>
		
                         <td class="text-center"><a href=<%=rutaE%>><i class="fa-solid fa-delete-left"></i></a></td>
                    </tr>
                    <%
                        }
                    %>

                </table>
</section>
                  
 
              
                    
                        <div class="container-fluid">
        <footer>
           <nav class="navbar navbar-dark navbar-expand-lg">        
            
             <!--<div class="justify-content-end" id="navbarSupportedContent">-->
               <ul class="navbar-nav mx-auto mb-7 mb-lg-0">
                 <li class="nav-item" > 
                   <a  class="nav-link active" aria-current="page" href="#">Preguntas Frecuentes</a>
                 </li>
   
                 <li class="nav-item">
                   <a class="nav-link" href="#">Prensa</a>
                 </li>
   
                 <li class="nav-item">
                   <a class="nav-link" href="#">Conferencias</a>
                 </li>
                
                 <li class="nav-item">
                   <a class="nav-link" href="#">Términos y condiciones</a>
                 </li>
   
                 <li class="nav-item">
                   <a  class="nav-link" href="#" >Privacidad</a>
                 </li>
                 <li class="nav-item">
                   <a class="nav-link" href="#" >Estudiantes</a>
                 </li>
               </ul>
                    
         </nav>
        </footer>
     </div>
              


<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</html>