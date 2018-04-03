package coinweb.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import coinweb.vo.WalletVO;

public class WalletDAO {
	//Field
		PreparedStatement pstmt;
		ResultSet rs;
		
		//Method
		public void getPreparedStatement(String sql){
			try{
				pstmt = DBConn.getConnection().prepareStatement(sql);
			}catch(Exception e){ e.printStackTrace(); }
		}
		
		// insert처리메소드 
		public int getInsertResult(int id){
			int result=0;
			try{
				String sql = "insert into wallet values(?,30000000,0,'won',30000000,0,30000000,'on')";
			    getPreparedStatement(sql);
				pstmt.setInt(1, id);
				result = pstmt.executeUpdate();
				
			}catch(Exception e){e.printStackTrace();}
			
			return result;
		}
		
		
		
		/* close */
		public void close(){
			try{
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(DBConn.conn != null) DBConn.conn.close();
			}catch(Exception e){ e.printStackTrace();}
		}
}
