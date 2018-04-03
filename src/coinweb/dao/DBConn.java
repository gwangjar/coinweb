package coinweb.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConn {
	
	//Field
		static String url ="jdbc:oracle:thin:@localhost:1521:xe";
		static	String user = "scott";
		static String pass = "tiger";
		static	Connection conn;
		
		//Constructor
		public DBConn(){}
			

		//Method
		 static  public Connection getConnection(){
			try{
				Class.forName("oracle.jdbc.OracleDriver");
				conn= DriverManager.getConnection(url,user,pass);
			}catch(Exception e){e.printStackTrace();}
			
			return conn;
		}
		

}
