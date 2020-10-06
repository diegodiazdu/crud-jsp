<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="conexionSQL.conexion"%>
<%

int confirmacion = JOptionPane.showConfirmDialog(null, "¿Realmente desea eliminar este registro?","Precaucion!",JOptionPane.YES_NO_OPTION);

conexion con = new conexion();

Connection cn = con.conecta();

int FRU_ID = Integer.parseInt(request.getParameter("FRU_ID"));

String opDelete = ("DELETE FROM FRUTAS WHERE FRU_ID = "+FRU_ID);

if(confirmacion == JOptionPane.YES_OPTION){
	
	try{
		
		PreparedStatement ps = cn.prepareStatement(opDelete);
		
		ps.executeUpdate();
		
		JOptionPane.showMessageDialog(null, "Registro eliminado correctamente","",JOptionPane.INFORMATION_MESSAGE);
		
		response.sendRedirect("index.jsp");
		
	}catch(Exception e){
		
		JOptionPane.showMessageDialog(null, "Error al eliminar "+e);
		
	}
	
	
	
}else{
	
	
	JOptionPane.showMessageDialog(null, "Registro no eliminado","",JOptionPane.INFORMATION_MESSAGE);
	response.sendRedirect("index.jsp");
	
}


%>
