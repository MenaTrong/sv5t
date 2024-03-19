package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import context.CommentDTO;
import context.ContentDTO;
import utils.DBUtil;

public class ShowContentAndCommentDAO {

	Connection conn = null;
	PreparedStatement stm = null;
	ResultSet rs = null;
	
	public ContentDTO getListContent(String studentID) {
		String sql = "SELECT StudentID, Tittle0101, Tittle0102, Tittle0103, Tittle0201, Tittle0202, Tittle03, Tittle04, Tittle05 FROM uthdb.dbContentOfProofSV5T WHERE StudentID = ?;";
		try {

			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, studentID);
			rs = stm.executeQuery();
			while (rs.next()) {
				return new ContentDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9));

			}
		} catch (Exception e) {
		}
		return null;
	}
	
	public CommentDTO getListComment(String studentID) {
		String sql = "SELECT StudentID, CommentTittle0101, CommentTittle0102, CommentTittle0103, CommentTittle0201, CommentTittle0202, CommentTittle03, CommentTittle04, CommentTittle05 FROM uthdb.dbComment WHERE StudentID = ?;";
		try {

			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, studentID);
			rs = stm.executeQuery();
			while (rs.next()) {
				return new CommentDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9));

			}
		} catch (Exception e) {
		}
		return null;
	}
}
