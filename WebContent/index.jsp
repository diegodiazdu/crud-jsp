<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="javax.swing.*"%>
<%@page import="java.sql.*"%>
<%@page import="conexionSQL.conexion"%>

<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <meta name="Description" content="Enter your description here" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css"/>
    <link rel="stylesheet" href="CSS/style.css"/>
    <title>Title</title>
  </head>
  <body>

    <div class="container-fluid mx-auto bg-info">

        <div class="row">

           <div class="col-md-4">

            <form action="insertar.jsp" method="post" class="mx-auto mt-4 mb-4" id="miForm">

              <div class="form-group has-feedback">

              <i class="fas fa-apple-alt form-control-feedback"></i>

              <input type="text" id="fruta_nombre" name="nombre" class="form-control" placeholder="Nombre de la fruta">               

              </div>

              <div class="form-group">

                <i class="fas fa-globe-americas form-control-feedback"></i>

                <input type="text" id="fruta_procedencia" name="procedencia" class="form-control" placeholder="Procedencia de la fruta">

              </div>

              <div class="form-group">

                
                <i class="fas fa-cloud-sun form-control-feedback"></i>

                <input type="text" id="fruta_temporada" name="temporada" class="form-control" placeholder="Temporada de la fruta">

              </div>

              <div class="form-group">

                
                <i class="fas fa-dollar-sign form-control-feedback"></i>

                <input type="text" id="fruta_precio" name="precio" class="form-control" placeholder="Precio de la fruta">

              </div>

              <div class="form-group">

                <i class="fas fa-layer-group form-control-feedback"></i>

                <input type="text" id="fruta_stock" name="stock" class="form-control" placeholder="Stock de la fruta">

              </div>
                
              <button type="button" class="btn btn-success" onclick="validaBlancos()">Registrar fruta</button>

            </form>

           </div>

           <div class="col-md-8">

              <div class="">
 
                  <table class="table table-striped">
                  <thead>
                    <tr>
                      <th scope="col">ID</th>
                      <th scope="col">Nombre</th>
                      <th scope="col">Procedencia</th>
                      <th scope="col">Temporada</th>
                      <th scope="col">Precio</th>
                      <th scope="col">Stock</th>
                      <th scope="col">Acciones</th>
                    </tr>
                  </thead>
                  <tbody>
                    <%
                    
                  try{
                	  
                  conexion con = new conexion();
                  Connection cn = con.conecta();;
                      
                   String opSelect = "SELECT * FROM FRUTAS";
                  
                  Statement st = cn.createStatement();
                  
                  ResultSet rs = st.executeQuery(opSelect);
                  
                  
                   while(rs.next()){

                 	 %>
                  
                    <tr>
              
                      <td><%=rs.getString(1)%></td>
                      <td><%=rs.getString(2)%></td>
                      <td><%=rs.getString(3)%></td>
                      <td><%=rs.getString(4)%></td>
                      <td><%=rs.getString(5)%></td>
                      <td><%=rs.getString(6)%></td>
                     <td><a href="actualizar.jsp?FRU_ID=<%=rs.getString(1)%>"><button class="btn btn-warning" data-toggle="modal" data-target="#modal"><i class="fas fa-edit"></i></button></a>
                     <a href="eliminar.jsp?FRU_ID=<%=rs.getString(1)%>"><button class="btn btn-danger"><i class="fas fa-trash-alt"></i></button></a>
                     </td>
		             
		        
                    </tr>
 				 <%
                         
                      }
                         
                   }
                  catch(Exception e){
                          
                          JOptionPane.showMessageDialog(null, "Error al listar frutas "+e.getMessage());
                          
                                   }
                  
                  	%>
                  </tbody>
               </table>

              </div>

           </div>

        </div>
    </div>

    <script src="JS/app.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js"></script>
  </body>
</html>