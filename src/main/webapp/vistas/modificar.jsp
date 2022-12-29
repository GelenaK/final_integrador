<%-- 
    Document   : modificar
    Created on : 25 dic 2022, 13:35:35
    Author     : Alejandro
--%>

<%@page import="modelo.SociosDAO"%>
<%@page import="modelo.Socios"%>
<%@page import="java.util.List"%>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Righteous&display=swap" rel="stylesheet">
    </head>
    <body>        
        
        <nav class="navbar bg-primary class">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
      <img src="vistas/imagenes/logo.png" alt="Logo" >
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
        
        
        <div class="container" >
            <h3 style="margin-top: 18px;margin-left: 100px" >Modificar Socio</h3>
                <div class="row" >
                    <div>
                    <img src="vistas/imagenes/runner.png "style="width: 40px; position: relative;margin-left: 300px"  class="card-img-top" alt="">
                    </div>
                    <div style="background-color: #5C636B; width: 460px; margin-left: 20px; height: 40px; margin-top: -40px">
                        <input onClick="history.go(-1)" type="button" value="Volver"name="btnVolver" style=" margin-left: 320px; margin-top: 2px;width: 100px; height: 38px;background-color:#5C636B;font-size:14pt;font-weight:bold;color:aqua; border-style: none">                                                                          
                         </div> 
                             
                              

                    <%
				String id=request.getParameter("id");
				int mid;				                          
				mid= Integer.parseInt(id);
                                Socios resultado=null;
				SociosDAO  socio=new SociosDAO();
				resultado=socio.mostrarSocio(mid);				
		    %>


                   
                        
                   
                    
                    <form style="font-size: 12px" class="p-4" method="POST" action="SociosController?accion=actualizar">
                          <div class="col-5">   
                            <div  "class="ml-auto">
                            <label for="id" class="form-label" >id</label>
                           <!-- <input type="text" class="form-control" id="id" name="id" readonly="readonly" value=<%=resultado.getIdSocio()%> >    -->                      
                          <input type="text" style="font-size: 13px" class="form-control" id="id" name="id" readonly="readonly" value=<%=resultado.getIdSocio()%> >                          
                           </div> 
                            </div> 
                           
                         <div class="col-5">   
                            <div "class="ml-auto">
                            <label for="nombre" class="form-label" >Nombre</label>
                            <input type="text" style="font-size: 13px" class="form-control" id="nombre" name="nombre" value=<%=resultado.getNombre() %>   >                       
                        </div>
                        </div> 
                        
                         <div class="col-5">   
                            <div "class="ml-auto">
                            <label for="apellido" class="form-label" >Apellido</label>
                            <input type="text" style="font-size: 13px" class="form-control" id="apellido" name="apellido" value=<%=resultado.getApellido() %>   >                       
                        </div> 
                         </div>
                        
                          <div class="col-5">   
                            <div "class="ml-auto">
                            <label for="direccion" class="form-label" >Direccion</label>
                            <input type="text" style="font-size: 13px" class="form-control" id="direccion" name="direccion"value=<%=resultado.getDireccion() %>  >                          
                        </div>
                        </div>
                        
                         <div class="col-5">    
                           <div class="ml-auto">
                            <label for="localidad" class="form-label" >Localidad</label>
                            <input type="text" style="font-size: 13px" class="form-control" id="localidad" name="localidad" value=<%=resultado.getLocalidad() %>   >                          
                        </div>
                        </div>
                        
                           <div class="col-5">    
                           <div class="ml-auto">
                            <label for="fnac" class="form-label" >Fecha Nac</label>
                            <input type="date" style="font-size: 13px" class="form-control" id="fnac" name="fnac" value=<%=resultado.getFnac() %>  >                          
                        </div> 
                          </div>
                        
                       <div class="col-5">    
                           <div class="ml-auto">
                               
                            <label for="mail" class="form-label" >E-Mail</label>
                            <input type="text" style="font-size: 13px" class="form-control" id="mail" name="mail" value=<%=resultado.getMail()%>  >                          
                        </div>
                        </div>
                        
                         <div class="col-5">    
                           <div class="ml-auto">
                            <label for="telefono" class="form-label" >Telefono</label>
                            <input type="text" style="font-size: 13px" class="form-control" id="telefono" name="telefono" value=<%=resultado.getTelefono()%> >                          
                        </div> 
                         </div> 
                        
                      
                         <!--<button style="width: 200px" type="submit" class="btn btn-primary mt-3 ml-2">Modificar </button>-->
                         <!-- <button type="submit" class="btn btn-primary" >Modificar </button>-->
                         
                         <div style="margin-top:10px;width: 500px">
                         <button type="submit" class="btn btn-primary " >Modificar </button>
                         </div>
                   
                         </form> 
                        
                         
          </div>
       </div>  
    </body>
</html>