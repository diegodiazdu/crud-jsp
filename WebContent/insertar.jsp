<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="javax.swing.*"%>
<%@page import="java.sql.*"%>
<%@page import="conexionSQL.conexion"%>
<%


String nombre_fruta = request.getParameter("nombre");
String proce_fruta = request.getParameter("procedencia");
String temp_fruta = request.getParameter("temporada");
String precio_fruta = request.getParameter("precio");
String stock_fruta = request.getParameter("stock");
 
 conexion con = new conexion();
 Connection cn = con.conecta();
  try{
	  
	  String opInsert = " INSERT INTO FRUTAS(FRU_NOMBRE,FRU_PROC,FRU_TEMPORADA,FRU_PRECIO,FRU_STOCK) VALUES ('"+nombre_fruta.toUpperCase()+"','"+proce_fruta.toUpperCase()+"','"+temp_fruta.toUpperCase()+"',"+precio_fruta+","+stock_fruta+")";
	  
	 Statement st = cn.createStatement();
	 
	 st.executeUpdate(opInsert);
	 
	 //JOptionPane.showMessageDialog(null, "Registrado con exito!","",JOptionPane.INFORMATION_MESSAGE);
	 
	 %>
	 
	
	 
	 
	 <%
	 
	 response.sendRedirect("index.jsp");
	 
	 


  }catch(Exception e){
	  
	  JOptionPane.showMessageDialog(null, "Error al registrar la fruta "+e.getMessage());
	  response.sendRedirect("index.jsp");
	  
  }

%>
	<script src="JS/app.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js"></script>