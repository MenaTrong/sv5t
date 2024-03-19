package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import context.AdminUserDTO;
import context.AssessDTO;
import context.ProfileUserDTO;
import utils.DBUtil;

public class ProfileUserDAO {

	Connection conn = null;
	PreparedStatement stm = null;
	ResultSet rs = null;

	public ProfileUserDTO getProfileUserByStudentID(String studentID) {
		String sql = "SELECT uthdb.dbProfileUsers.UserName, Email, PhoneNumber, DateOfBirth, Sex, Nation, Religion, PermanentAddress, Address, UnionJoining, DangJoiningRE, DangJoining, uthdb.dbUsers.StudentID, Confirm, TheEditing, Level, ConfirmLevelDepartment\n"
				+ "FROM uthdb.dbProfileUsers\n"
				+ "inner join uthdb.dbUsers on uthdb.dbProfileUsers.StudentID = uthdb.dbUsers.StudentID\n"
				+ "inner join uthdb.dbListSignUp on uthdb.dbProfileUsers.StudentID = uthdb.dbListSignUp.StudentID\n"
				+ "where uthdb.dbUsers.StudentID = ?;";
		try {

			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, studentID);
			rs = stm.executeQuery();
			while (rs.next()) {
				return new ProfileUserDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10),
						rs.getString(11), rs.getString(12), rs.getString(13),rs.getString(14), rs.getString(15), rs.getString(16), rs.getString(17));

			}
		} catch (Exception e) {
		}
		return null;
	}
	
	
	public AdminUserDTO getProfileAdminUserByStudentID(String studentID) {
		String sql = "SELECT UserID, StudentID, UserName, Level\n"
				+ "FROM uthdb.dbUsers\n"
				+ "where uthdb.dbUsers.StudentID = ?";
		try {

			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, studentID);
			rs = stm.executeQuery();
			while (rs.next()) {
				return new AdminUserDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
			}
		} catch (Exception e) {
		}
		return null;
	}
	
	public int countTheEditing() {
		String sql = "SELECT COUNT(*) FROM uthdb.dbListSignUp where TheEditing = '1';";

		try {
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			if (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
		}
		return 0;
	}
	
	
	public AssessDTO getAssessByStudentID(String studentID) {
		String sql = "SELECT *\n"
				+ "FROM uthdb.dbAssess\n"
				+ "where StudentID = ?;";
		try {

			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, studentID);
			rs = stm.executeQuery();
			while (rs.next()) {
				return new AssessDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7));

			}
		} catch (Exception e) {
		}
		return null;
	}
	
	public void updateProfile(String studentID, String userName, String phoneNumber, String dateOfBirth, String sex,
	        String nation, String religion, String permanentAddress, String address, String unionDayJoining,
	        String dangDayJoiningRe, String dangDayJoining) {
		String sql = "UPDATE uthdb.dbProfileUsers\n"
				+ "SET UserName = ?, PhoneNumber = ?, DateOfbirth = ?, Sex = ?, Nation = ?, Religion = ?, PermanentAddress = ?, Address = ?, UnionJoining = ?, DangJoiningRE = ?, DangJoining = ?\n"
				+ "where StudentID = ?;";
		
		try {
            conn = DBUtil.getConnection();
            stm = conn.prepareStatement(sql);
	        stm.setString(1, userName);
	        stm.setString(2, phoneNumber);
	        stm.setString(3, dateOfBirth);
	        stm.setString(4, sex);
	        stm.setString(5, nation);
	        stm.setString(6, religion);
	        stm.setString(7, permanentAddress);
	        stm.setString(8, address);
	        stm.setString(9, unionDayJoining);
	        stm.setString(10, dangDayJoiningRe);
	        stm.setString(11, dangDayJoining);
            stm.setString(12, studentID);
            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace(); // In a real application, handle the exception appropriately
        } finally {
            try {
                if (stm != null) {
                    stm.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
	}
	
	public void updateEmail(String studentID, String email) {
		String sql = "UPDATE uthdb.dbUsers\n"
				+ "SET Email = ?\n"
				+ "where StudentID = ?;";
		
		try {
            conn = DBUtil.getConnection();
            stm = conn.prepareStatement(sql);
            stm.setString(1, email);
            stm.setString(2, studentID);
            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace(); // In a real application, handle the exception appropriately
        } finally {
            try {
                if (stm != null) {
                    stm.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
	}
}
