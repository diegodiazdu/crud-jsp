package conexionSQL;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.swing.JOptionPane;

public class conexion {

		Connection con = null;
		String driver = "com.mysql.jdbc.Driver";
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
