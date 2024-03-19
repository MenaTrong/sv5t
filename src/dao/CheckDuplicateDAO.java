package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import utils.DBUtil;

public class CheckDuplicateDAO {

    Connection conn = null;
    PreparedStatement stm = null;
    ResultSet rs = null;

	public int checkDuplicateStudentID(String studentID) {
		String sql = "SELECT COUNT(*) FROM uthdb.dbUsers WHERE StudentID = ?";

		try {
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, studentID);
			rs = stm.executeQuery();
			if (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
		}
		return 0;
	}
	
	public int checkDuplicateEmail(String email) {
		String sql = "SELECT COUNT(*) FROM uthdb.dbUsers WHERE Email = ?";

		try {
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, email);
			rs = stm.executeQuery();
			if (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
		}
		return 0;
	}
}

