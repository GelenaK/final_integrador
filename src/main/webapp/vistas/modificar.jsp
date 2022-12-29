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

    </head>
    <body>        
        
        <nav class="navbar bg-primary class">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
      <img src="vistas/imagenes/logo.png" alt="Logo" >
      </nav>
        
        
        <div class="container" >
            <h1 class="text-left" >Modificar Socio</h1>
                <div class="row" >
                    
                       
                     
                             
                              

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
                        
                         <div container>    
                         <button style="width: 200px" type="submit" class="btn btn-primary mt-3 ml-2">Modificar </button>
                        </div>
                         <div style="position: relative;margin-top: -38px;margin-bottom: 160px">
                         <input onClick="history.go(-1)" type="button" value="Volver" name="btnVolver" style=" margin-left: 220px; width: 230px; height: 38px;background-color: grey;font-size: 12pt;color: white;border-radius: 5px;border-color: white">                                                                          
                         </div>
            
                   
                  </form>  
                    
                             
          </div>
       </div>  
    </body>
</html>