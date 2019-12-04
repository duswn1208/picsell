package com.picsell;

import java.util.ArrayList;
import java.util.List;

import com.join.MemberDTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class PicSellBoardDAO {

	private Connection conn;

	public PicSellBoardDAO(Connection conn) {
		this.conn = conn;

	}

	public int getMaxNum() {

		int maxNum = 0;

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {

			sql = "select nvl(max(num),0) from psqboard";

			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();

			if (rs.next()) {

				maxNum = rs.getInt(1);

			}
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println("board.getMaxNum=" + e.toString());
		}
		return maxNum;
	}
	
	// 전체데이터의 개수를 구하는 메소드
	public int getDataCount(String searchKey, String searchValue) {
		
		int dataCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			searchValue = "%" + searchValue + "%";
			
			sql = "select nvl(count(*),0) from psqboard ";
			sql += "where " + searchKey + " like ?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchValue);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dataCount = rs.getInt(1);
			}
			rs.close();
			pstmt.close();
			 
			
		} catch (Exception e) {
			System.out.println("board.getDataCount=" + e.toString());
		}
		return dataCount;
	
	}
	
	public List<PicSellBoardDTO> getLists(int start, int end, String searchKey, String searchValue){
		
		List<PicSellBoardDTO> board_lists = new ArrayList<PicSellBoardDTO>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			searchValue = "%" + searchValue + "%";
			
			sql = "select * from (";
			sql += "select rownum rnum, data. * from(";
			sql += "select num,userId,subject,hitCount,";
			sql += "to_char(created,'YYYY-MM-DD') created ";
			sql += "from psQboard where " +searchKey+ " like ? order by num desc) data) ";
			//sql += "from psQboard order by num desc) data) ";
			sql += "where rnum>=? and rnum<=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchValue);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			
			rs = pstmt.executeQuery();
			 
			while (rs.next()) {
				
				PicSellBoardDTO board_dto = new PicSellBoardDTO();
				
				board_dto.setNum(rs.getInt("num"));
				board_dto.setUserId(rs.getString("userId"));
				board_dto.setSubject(rs.getString("subject"));
				board_dto.setHitCount(rs.getInt("hitCount"));
				board_dto.setCreated(rs.getString("created"));
				
				board_lists.add(board_dto);
			}
			
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println("board.getLists=" + e.toString());
		}
		return board_lists;
	}
	
	public int updateHitCount(int num) {

		int result = 0;

		PreparedStatement pstmt = null;
		String sql;

		try {

			sql = "update psQboard set hitCount = hitCount+1 ";
			sql += "where num = ?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, num);

			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;

	}

	// num으로 조회한 한개의데이터
	public PicSellBoardDTO getReadData(int num) {

		PicSellBoardDTO dto = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {
			sql = "select num,userId,subject,content,";
			sql += "ipAddr,hitCount,created ";
			sql += "from psQboard where num=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();

			if (rs.next()) {

				dto = new PicSellBoardDTO();
				
				dto.setNum(rs.getInt("num"));
				dto.setUserId(rs.getString("userId"));
				dto.setSubject(rs.getString("subject"));
				dto.setContent(rs.getString("content"));
				dto.setIpAddr(rs.getString("ipAddr"));
				dto.setHitCount(rs.getInt("hitCount"));
				dto.setCreated(rs.getString("created"));
				
			}

			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println("board.getReadData:"+e.toString());
		}
		return dto;
	}

	// 수정하기
	public int updateData(PicSellBoardDTO dto) {

		int result = 0;

		PreparedStatement pstmt = null;
		String sql;

		try {

			sql = "update psQboard set userId=?,subject=?,content=? where num=?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, dto.getUserId());
			pstmt.setString(2, dto.getSubject());
			pstmt.setString(3, dto.getContent());
			pstmt.setInt(4, dto.getNum());

			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result; 

	}

	// 삭제하기
	public int deleteData(int num) {

		int result = 0;

		PreparedStatement pstmt = null;
		String sql;

		try {
			sql = "delete psQboard where num=?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, num);

			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println("Board.deleteData" + e.toString());
		}
		return result;

	}
	
	public int insertData(PicSellBoardDTO dto) {

		int result = 0;

		PreparedStatement pstmt = null;
		String sql;

		try {

			sql = "insert into psqboard (num,userId,subject, ";
			sql += "content,ipAddr,hitCount,created) ";
			sql += "values (?,?,?,?,?,0,sysdate)";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, dto.getNum());
			pstmt.setString(2, dto.getUserId());
			pstmt.setString(3, dto.getSubject());
			pstmt.setString(4, dto.getContent());
			pstmt.setString(5, dto.getIpAddr());

			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println("Board.insertData" + e.toString());
		}

		return result;

	}
	
	public PicSellBoardDTO getReadDatas(String userId, int num) {//아이디로검색 조회

		PicSellBoardDTO dto = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
 
		try {

			sql = "select num,userId,subject,content,";
			sql += "ipAddr,hitCount,created ";
			sql += "from psQboard where userId=? and num=?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, userId);
			pstmt.setInt(2, num);

			rs = pstmt.executeQuery();

			if (rs.next()) {

				dto = new PicSellBoardDTO();
				
				dto.setNum(rs.getInt("num"));
				dto.setUserId(rs.getString("userId"));
				dto.setSubject(rs.getString("subject"));
				dto.setContent(rs.getString("content"));
				dto.setIpAddr(rs.getString("ipAddr"));
				dto.setHitCount(rs.getInt("hitCount"));
				dto.setCreated(rs.getString("created"));

			} 
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return dto;

	}
	
	
}
