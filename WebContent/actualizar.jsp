<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="conexionSQL.conexion"%>

<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link rel="stylesheet" href="CSS/style.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.0/css/all.css" integrity="sha384-OLYO0LymqQ+uHXELyx93kblK5YIS3B2ZfLGBmsJaUyor7CpMTBsahDHByqSuWW+q" crossorigin="anonymous">
</head>
<body>
<%

conexion con = new conexion();

Connection cn = con.conecta();

String FRU_ID = request.getParameter("FRU_ID");

String lista = ("SELECT * FROM FRUTAS WHERE FRU_ID = "+FRU_ID);

try{
	
	PreparedStatement ps = cn.prepareStatement(lista);
	
	ResultSet rs = ps.executeQuery();
	
	while(rs.next()){
		
		%>
            <div class="col-md-12">

              <form action="funcion_actualizar.jsp" method="post" class="mx-auto mt-4 mb-4" id="miForm">
              
              <div class="form-group has-feedback">

                <i class="fas fa-hashtag form-control-feedback"></i>
  
                <input type="text" id="fruta_id" name="id" readonly="readonly" class="form-control" value="<%=rs.getString(1)%>">               
  
                </div>
  
                <div class="form-group has-feedback">
  
                <i class="fas fa-apple-alt form-control-feedback"></i>
  
                <input type="text" id="fruta_nombre" name="nombre" class="form-control" value="<%=rs.getString(2)%>">               
  
                </div>
  
                <div class="form-group">
  
                  <i class="fas fa-globe-americas form-control-feedback"></i>
  
                  <input type="text" id="fruta_procedencia" name="procedencia" class="form-control" value="<%=rs.getString(3)%>">
  
                </div>
  
                <div class="form-group">
  
                  
                  <i class="fas fa-cloud-sun form-control-feedback"></i>
  
                  <input type="text" id="fruta_temporada" name="temporada" class="form-control"value="<%=rs.getString(4)%>">
  
                </div>
  
                <div class="form-group">
  
                  
                  <i class="fas fa-dollar-sign form-control-feedback"></i>
  
                  <input type="text" id="fruta_precio" name="precio" class="form-control" value="<%=rs.getString(5)%>">
  
                </div>
  
                <div class="form-group">
  
                  <i class="fas fa-layer-group form-control-feedback"></i>
  
                  <input type="text" id="fruta_stock" name="stock" class="form-control" value="<%=rs.getString(6)%>">
  
                </div>
                  
                <button type="button" class="btn btn-success" onclick="validaBlancos()">Actualizar fruta</button>
                <a href="index.jsp"><button type="button" class="btn btn-outline-info">Volver</button></a>
  
              </form>
  
             </div>

		<%
		
	}
	
}catch(Exception e){
	
	JOptionPane.showMessageDialog(null, "Error "+e.getMessage());
	
}
   
  %>
<script src="JS/app.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>  
