package conexionSQL;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.swing.JOptionPane;

public class conexion {

		Connection con = null;
		String driver = "com.mysql.jdbc.Driver";
		
		//CONEXION A HOST REMOTO
		/*
		String user = "epiz_26899785";
		String pass = "6JNNdHuCv2ggMwO";
		String url="jdbc:mysql://sql201.epizy.com:3306/epiz_26899785_123_crud_jsp_frutas";
		*/
		
		String user = "root";
		String pass = "";
		String url="jdbc:mysql://localhost:3306/frutas-crud";
		
		
		public Connection conecta() {
			
			try {
				
				Class.forName(driver);
				
				con = DriverManager.getConnection(url,user,pass);
				
				//JOptionPane.showMessageDialog(null, "Conexion establecida!!", "Correcto", JOptionPane.INFORMATION_MESSAGE);
				
				
			}catch(Exception e) {
				
				JOptionPane.showMessageDialog(null, "No se puede establecer comunicación con la base de datos "+e.getMessage(),"Error!",JOptionPane.ERROR_MESSAGE);
				
			}
			
			
			return con;
			
			
			
		}
  }
