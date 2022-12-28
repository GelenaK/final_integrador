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
    </head>

    <body>
             
       <nav class="navbar bg-primary class">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
      <img src="vistas/imagenes/logo.png" alt="Logo" >
      Bootstrap
    </a>
  </div>
</nav>
        
                   

       <!-- <div>
            <img src="vistas/imagenes/foto1.jpg"/>
        </div> -->
        
        
        <div class="container">
    <div class="row row-cols-1 row-cols-md-3 g-4">
     <div class="col">
      <div class="card h-100">
        <img src="vistas/imagenes/cintas.jpg" class="card-img-top" alt="" >

          <div>
              <a  id="mibtn"class="btn btn-warning" href="https://www.google.com/search?q=cintas+para+correr&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjEoJj69pr8AhWbrJUCHdejD3MQ_AUoAXoECAEQAw&biw=1366&bih=568&dpr=1" target="_blank" role="button"><h4><b style ="text-align: center">Cinta</b></h4></a>
         <!-- <a  id="mibtn"class="btn btn-primary" href="#" role="button"><b>React</b></a>-->
          </div>                                              
        <div class="card-body" >
         
        </div>   
      </div>
    </div>

    <div class="col">
      <div   class="card h-100">
        <img src="vistas/imagenes/bici.jpg" class="card-img-top" alt="">
        
          <div>        
            <a id="mibtn" class="btn btn-warning" href="#" role="button" ><b>Bicicleta Fija</b></a>
            
            </div>                                        
        <div class="card-body">
         
        </div>                    
      </div>      
    </div>

     <div class="col">
      <div   class="card h-100">
        <img src="vistas/imagenes/entrenam.jpg" class="card-img-top" alt="">
        
          <div>        
            <a id="mibtn" class="btn btn-secondary bg-" href="#" role="button" ><b>Entrenamiento</b></a>
            <a id="mibtn"class="btn btn-warning" href="#" role="button"><b>Startups</b></a>   
            </div>                                        
        <div class="card-body">
          
        </div>                    
      </div>      
    </div>   
        
              
        
        
  </div>
</div>                         
        
          <h1>Listado de Socios del Gym</h1>  
        
            
        
        
        
        
        
        <div class="container">
            <div class="row">   
                <a class="btn btn-primary col-4 m-4" href="SociosController?accion=nuevo">Agregar Socio</a>
              
                <table class="table table-primary">
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
                         <td class="text-center"><a href=<%=ruta%>> <i class="fa-solid fa-arrow-right-arrow-left"></i> </a></td>
			 <td class="text-center"><a href=<%=rutaE%>><i class="fa-solid fa-arrow-down"></i> </a></td>
                    </tr>
                    <%
                        }
                    %>

                </table>




            </div>


        </div>



<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</html>