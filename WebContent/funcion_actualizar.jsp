<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="javax.swing.*"%>
<%@page import="java.sql.*"%>
<%@page import="conexionSQL.conexion"%>

<%

  int ID_fruta = Integer.parseInt(request.getParameter("id"));
  String nombre_fruta = request.getParameter("nombre");
  String proce_fruta = request.getParameter("procedencia");
  String temp_fruta = request.getParameter("temporada");
  String precio_fruta = request.getParameter("precio");
  String stock_fruta = request.getParameter("stock");

 conexion con = new conexion();
 Connection cn = con.conecta();
  
   try{
 	  
	 String opUpdate =("UPDATE FRUTAS SET FRU_NOMBRE ='"+nombre_fruta.toUpperCase()+"',FRU_PROC='"+proce_fruta.toUpperCase()+"',FRU_TEMPORADA='"+temp_fruta.toUpperCase()+"',FRU_PRECIO ="+precio_fruta+",FRU_STOCK ="+stock_fruta+" WHERE FRU_ID ="+ID_fruta);
   
 	 Statement st = cn.createStatement();
 	 
 	 st.executeUpdate(opUpdate);
 	 
 	 JOptionPane.showMessageDialog(null, "Registro editado correctamente","",JOptionPane.INFORMATION_MESSAGE);
 	 
 	 response.sendRedirect("index.jsp");

   }catch(Exception e){
 	  
 	  JOptionPane.showMessageDialog(null, "Error al editar el registro"+e.getMessage());
 	  response.sendRedirect("index.jsp");
 	  
   }

 %>

</body>
</html>