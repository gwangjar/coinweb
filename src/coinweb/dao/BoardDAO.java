package coinweb.dao;

import java.sql.*;
import java.util.ArrayList;

import coinweb.vo.BoardVO;
import coinweb.vo.MemberVO;

public class BoardDAO {

	PreparedStatement pstmt;
	ResultSet rs;

	// Constructor
	public BoardDAO() {
		// db = new DBConn();
		// conn = db.getConnection();
	}

	public void getPreparedStatement(String sql) {
		try {
			pstmt = DBConn.getConnection().prepareStatement(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/* community list */
	public ArrayList<BoardVO> getBoardList() {
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		try {
			/*rno 적용해야함*/
			String sql = "select  no, title,name,to_char(bdate,'yy-mm-dd')as bdate"
					+ "	,hits,likeit from coinweb_board";

			getPreparedStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				BoardVO vo = new BoardVO();
				vo.setNo(rs.getInt(1));
				vo.setTitle(rs.getString(2));
				vo.setName(rs.getString(3));
				vo.setBdate(rs.getString(4));
				vo.setHits(rs.getInt(5));
				vo.setLikeit(rs.getInt(6));
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public BoardVO getBoardContent(String no) {
	BoardVO vo = new BoardVO();
		try{
			String sql=  "select  no,title,bdate,hits,likeit,content  from  coinweb_board where no = ?";
			getPreparedStatement(sql);
			pstmt.setString(1, no);
			rs =pstmt.executeQuery();
			if(rs.next()){
				vo.setNo(rs.getInt(1));
				vo.setTitle(rs.getString(2));
				vo.setBdate(rs.getString(3));
				vo.setHits(rs.getInt(4));
				vo.setLikeit(rs.getInt(5));
				vo.setContent(rs.getString(6));
				
			}
	
	
		}catch (Exception e){
			e.printStackTrace();
		}
	
	return vo;
	}
	/*name은 session 사용할때 다시 넣어준다*/
	public int insertBoardContent(String title,String content){
		int result =0;
		try{
		String sql="insert into coinweb_board values(sequ_coinweb_board_no.nextval,?,'name',?,sysdate,0,0)";
		getPreparedStatement(sql);
		pstmt.setString(1, title);	
		pstmt.setString(2, content);
		result =pstmt.executeUpdate();
		
		
	
	
		}catch(Exception e){
			e.printStackTrace();
		}
	return result;
	}
	
	public int deleteBoardContent(String no){
		int result =0;
		try{
			String sql= "DELETE FROM coinweb_board WHERE no =?";
			getPreparedStatement(sql);
			pstmt.setString(1, no);
			result =pstmt.executeUpdate();
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return result;
	}
	// 여기서부터 다시 .업데이트 보드 안됨
	public int updateBoardContent(BoardVO vo, String no){
		
		int result = 0;
		try{
			String sql="update coinweb_board set title=? , content=? where no=?";
			getPreparedStatement(sql);
	
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getContent());
			pstmt.setString(3, no);
			result=pstmt.executeUpdate();
		
			
		}catch(Exception e){e.printStackTrace();}
		
		return result;
		
	}
	
	
	

	public void close() {
		try {
			if (pstmt != null)
				pstmt.close();
			if (DBConn.conn != null)
				DBConn.conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
