package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import context.ListSignUpDTO;
import utils.DBUtil;

public class ListSignUpDAO {

	Connection conn = null;
	PreparedStatement stm = null;
	ResultSet rs = null;
	
	public List<ListSignUpDTO> getListSignUp(String year, String department, String typeFile, String title) {
		List<ListSignUpDTO> list = new ArrayList<>();
		String sql = "SELECT FileID, ProfileType, uthdb.dbUsers.StudentID, uthdb.dbProfileUsers.UserName, Email, PhoneNumber, Sex, Department, Confirm\n"
				+ "FROM uthdb.dbListSignUp\n"
				+ "inner join uthdb.dbProfileUsers on uthdb.dbListSignUp.StudentID = uthdb.dbProfileUsers.StudentID\n"
				+ "inner join uthdb.dbUsers on uthdb.dbListSignUp.StudentID = uthdb.dbUsers.StudentID\n"
				+ "where uthdb.dbListSignUp.Year = ? and uthdb.dbListSignUp.Department = ? and uthdb.dbListSignUp.ProfileType = ? and uthdb.dbListSignUp.Title = ?\n";
		try {

			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, year);
			stm.setString(2, department);
			stm.setString(3, typeFile);
			stm.setString(4, title);
			rs = stm.executeQuery();
			while (rs.next()) {
				list.add(new ListSignUpDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9)));

			}
		} catch (Exception e) {
		}
		return list;
	}
	
	public List<ListSignUpDTO> getListSignUpLevelUniversity(String year, String department, String typeFile, String title) {
		List<ListSignUpDTO> list = new ArrayList<>();
		String sql = "SELECT FileID, ProfileType, uthdb.dbUsers.StudentID, uthdb.dbProfileUsers.UserName, Email, PhoneNumber, Sex, Department, Confirm\n"
				+ "FROM uthdb.dbListSignUp\n"
				+ "inner join uthdb.dbProfileUsers on uthdb.dbListSignUp.StudentID = uthdb.dbProfileUsers.StudentID\n"
				+ "inner join uthdb.dbUsers on uthdb.dbListSignUp.StudentID = uthdb.dbUsers.StudentID\n"
				+ "where uthdb.dbListSignUp.Year = ? and uthdb.dbListSignUp.Department = ? and uthdb.dbListSignUp.ProfileType = ? and uthdb.dbListSignUp.Title = ? and uthdb.dbListSignUp.ConfirmLevelDepartment = 1\n";
		try {

			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, year);
			stm.setString(2, department);
			stm.setString(3, typeFile);
			stm.setString(4, title);
			rs = stm.executeQuery();
			while (rs.next()) {
				list.add(new ListSignUpDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9)));

			}
		} catch (Exception e) {
		}
		return list;
	}
	
	public int countListSignUp() {
		String sql = "SELECT COUNT(*) AS soluongdangky\n"
				+ "FROM uthdb.dbListSignUp;";
		try {
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while (rs.next()) {
				return rs.getInt("soluongdangky");
			}
		} catch (Exception e) {
		}
		return 0;
	}
	
	public int countListSignUpConfirmed() {
		String sql = "SELECT COUNT(*) AS soluongdaduyet\n"
				+ "FROM uthdb.dbListSignUp\n"
				+ "WHERE Confirm = '1';";
		try {
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while (rs.next()) {
				return rs.getInt("soluongdaduyet");
			}
		} catch (Exception e) {
		}
		return 0;
	}
	
	
	public void UpdateAssessTittle01(String studentID, String assess) {
		String sql = "update `uthdb`.`dbAssess` set `AssessTittle01`=? where StudentID = ?;";
		
		try {
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, assess);
			stm.setString(2, studentID);
			stm.executeUpdate();
		} catch (Exception e) {
		}
	}
	
	public void UpdateAssessTittle02(String studentID, String assess) {
		String sql = "update `uthdb`.`dbAssess` set `AssessTittle02`=? where StudentID = ?;";
		
		try {
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, assess);
			stm.setString(2, studentID);
			stm.executeUpdate();
		} catch (Exception e) {
		}
	}
	
	public void UpdateAssessTittle03(String studentID, String assess) {
		String sql = "update `uthdb`.`dbAssess` set `AssessTittle03`=? where StudentID = ?;";
		
		try {
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, assess);
			stm.setString(2, studentID);
			stm.executeUpdate();
		} catch (Exception e) {
		}
	}
	
	public void UpdateAssessTittle04(String studentID, String assess) {
		String sql = "update `uthdb`.`dbAssess` set `AssessTittle04`=? where StudentID = ?;";
		
		try {
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, assess);
			stm.setString(2, studentID);
			stm.executeUpdate();
		} catch (Exception e) {
		}
	}
	
	public void UpdateAssessTittle05(String studentID, String assess) {
		String sql = "update `uthdb`.`dbAssess` set `AssessTittle05`=? where StudentID = ?;";
		
		try {
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, assess);
			stm.setString(2, studentID);
			stm.executeUpdate();
		} catch (Exception e) {
		}
	}
	
	public void UpdateProfileType(String studentID, String profileType) {
		String sql = "update `uthdb`.`dbListSignUp` set `ProfileType`=? where StudentID = ?;";
		
		try {
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, profileType);
			stm.setString(2, studentID);
			stm.executeUpdate();
		} catch (Exception e) {
		}
	}
	
}
