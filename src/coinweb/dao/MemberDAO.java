package coinweb.dao;

import java.sql.*;
import java.util.ArrayList;
import coinweb.vo.MemberVO;



public class MemberDAO {
	
	PreparedStatement pstmt;
	ResultSet rs;
	
	
	//Constructor
	public MemberDAO(){
		//db = new DBConn();
		//conn = db.getConnection();
	}
	
	public void getPreparedStatement(String sql){
		try{
			pstmt =DBConn.getConnection().prepareStatement(sql);
		}catch(Exception e){e.printStackTrace();}
	}
	
	
	// insert처리메소드 
	public int getInsertResult(MemberVO vo){
		int result = 0;
		try{
			String sql = "insert into coinweb_member values(sequ_coinweb_member_id.nextval,?,?,?,?,sysdate)";
		    getPreparedStatement(sql);
			pstmt.setString(1, vo.getEmail());
			pstmt.setString(2, vo.getName());
			pstmt.setString(3, vo.getPass());
			pstmt.setString(4, vo.getAgree());
		
			result = pstmt.executeUpdate();
			
		}catch(Exception e){e.printStackTrace();}
		
		return result;
	}

	
	//PreparedStatement Login  전용 처리 메소드 
	public int getLoginResult(MemberVO vo){
		int result =0;
		try{
			//PreparedStatement
			String sql = "select count(*) from coinweb_member where email=? and pass=? ";
			getPreparedStatement(sql);
			
			pstmt.setString(1, vo.getEmail());
			pstmt.setString(2, vo.getPass());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				result = rs.getInt(1);
			}
			
		}catch(Exception e){e.printStackTrace();}
		
		return result;
	}
	
	/*회원 전체 리스트 출력*/
	public ArrayList<MemberVO> getResultList(){
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		
		try{
		String sql="select rownum as rno,id,name,to_char "
				+ " (jdate,'yyyy-mm-dd')as jdate from (select *from coinweb_member ORDER BY jdate desc)";
		getPreparedStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next()){
			MemberVO  vo = new MemberVO();
	//		vo.setRno(rs.getInt(1));
	//		vo.setId(rs.getString(2));
			vo.setName(rs.getString(3));
			vo.setJdate(rs.getString(4));
			list.add(vo);
			
		}
			
		}catch(Exception e){e.printStackTrace();}
		return list;
	}
	
	/*한 사람의 정보 가져오기*/
	public MemberVO getResultVO(String id){
		MemberVO vo= new MemberVO();
		try{
		String sql="select id,name,jdate from coinweb_member where id=? ";	
			
		getPreparedStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		if(rs.next()){
		//	vo.setId(rs.getString(1));
			vo.setName(rs.getString(2));
			vo.setJdate(rs.getString(5));
		}
		}catch(Exception e){e.printStackTrace();}
		
		return vo;
	}
	
	 //id 중복체크
	public int getIdCheckResult(String id){
		int result =0;
		try{
			String sql = "select count(*) from coinweb_member where id=?";
			getPreparedStatement(sql);
			
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()){
				result = rs.getInt(1);
			}
			
		}catch(Exception e){e.printStackTrace();}
		
		return result;
	}
	
	public int getJoinIdResult(MemberVO vo){
		int result =0;
		try{
			//PreparedStatement
			String sql = "select rownum, id from (select * from coinweb_member order by jdate desc)";
			getPreparedStatement(sql);	
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
					result = rs.getInt(2);
				}
			
		}catch(Exception e){e.printStackTrace();}		
		
		return result;
	}
		
		
	public void close(){
		try{
			if(pstmt != null) pstmt.close();
			if(DBConn.conn !=null) DBConn.conn.close();
		}catch(Exception e){e.printStackTrace();}
	}
}

 

