package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import utils.DBUtil;

public class DAO {

	Connection conn = null;
	PreparedStatement stm = null;
	ResultSet rs = null;
	
	public String getUserNameByStudentID (String studentID) {
		String sql = "SELECT UserName FROM uthdb.dbUsers where StudentID = ?";
		try {
			
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, studentID);
			rs = stm.executeQuery();
			while (rs.next()) {
				return rs.getString("UserName");
			}
		} catch (Exception e) {
		}
		return null;
	}
	
	
	public void ConfirmListSignUp(String studentID, String confirm) {
		String sql = "update `uthdb`.`dbListSignUp` set `Confirm` = ? where StudentID = ?;";
		
		try {
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, confirm);
			stm.setString(2, studentID);
			stm.executeUpdate();
		} catch (Exception e) {
		}
	}
	
	public void ConfirmLevelDepartmentListSignUp(String studentID, String confirmleveldepartment) {
		String sql = "update `uthdb`.`dbListSignUp` set `ConfirmLevelDepartment` = ? where StudentID = ?;";
		
		try {
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, confirmleveldepartment);
			stm.setString(2, studentID);
			stm.executeUpdate();
		} catch (Exception e) {
		}
	}
	
	public void TheEditingListSignUp(String theEditing) {
		String sql = "UPDATE `uthdb`.`dbListSignUp` SET `TheEditing` = ?;";
		
		try {
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, theEditing);
			stm.executeUpdate();
		} catch (Exception e) {
		}
	}
	
}
