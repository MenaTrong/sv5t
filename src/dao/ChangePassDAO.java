package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import context.UserDTO;
import utils.DBUtil;

public class ChangePassDAO {

	Connection conn = null;
	PreparedStatement stm = null;
	ResultSet rs = null;
	
	public UserDTO getUser(String StudentID) {
		String sql = "SELECT * FROM uthdb.dbUsers where StudentID = ?";
		try {
			
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, StudentID);
			rs = stm.executeQuery();
			while (rs.next()) {
				return new UserDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));

			}
		} catch (Exception e) {
		}
		return null;
	}
	
	
	public void editPasswordByStudentID(String studentid, String password) {
		String sql = "update `uthdb`.`dbUsers` set `Password` = ? where StudentID = ?;";
		
		try {
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, password);
			stm.setString(2, studentid);
			stm.executeUpdate();
		} catch (Exception e) {
		}
	}
	
}
