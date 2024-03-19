package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import utils.DBUtil;

public class DeleteDAO {

	Connection conn = null;
	PreparedStatement stm = null;
	ResultSet rs = null;
	
	public void deleteComment(String studentID) {
		String sql = "DELETE FROM uthdb.dbComment where StudentID = ?";
		try {
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, studentID);
			stm.executeUpdate();
		} catch (Exception e) {
		}
	}
	
	public void deleteAttachment(String studentID) {
		String sql = "DELETE FROM uthdb.dbAttachmentsOfProofSV5T where StudentID = ?";
		try {
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, studentID);
			stm.executeUpdate();
		} catch (Exception e) {
		}
	}
	
	public void deleteContent(String studentID) {
		String sql = "DELETE FROM uthdb.dbContentOfProofSV5T where StudentID = ?";
		try {
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, studentID);
			stm.executeUpdate();
		} catch (Exception e) {
		}
	}
	
	public void deleteAssess(String studentID) {
		String sql = "DELETE FROM uthdb.dbAssess where StudentID = ?";
		try {
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, studentID);
			stm.executeUpdate();
		} catch (Exception e) {
		}
	}
	
	public void deleteListSignUp(String studentID) {
		String sql = "DELETE FROM uthdb.dbListSignUp where StudentID = ?";
		try {
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, studentID);
			stm.executeUpdate();
		} catch (Exception e) {
		}
	}
	
	public void deleteProfile(String studentID) {
		String sql = "DELETE FROM uthdb.dbProfileUsers where StudentID = ?";
		try {
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, studentID);
			stm.executeUpdate();
		} catch (Exception e) {
		}
	}
}
