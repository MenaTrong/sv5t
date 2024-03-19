package dao;

import context.UserDTO;
import utils.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
	private Connection conn = null;
	private PreparedStatement stm = null;
	private ResultSet rs = null;

	private void closeConnection() throws Exception {
		if (rs != null) {
			rs.close();
		}
		if (stm != null) {
			stm.close();
		}
		if (conn != null) {
			conn.close();
		}
	}

	public UserDTO checkLogin(String studentid, String password) throws SQLException, Exception {
		UserDTO result = null;
		try {
			conn = DBUtil.getConnection();
			if (conn != null) {

				String sql = "SELECT UserID, StudentID , UserName , Password , Email, Level"
						+ " FROM dbUsers WHERE StudentID = ? AND Password = ?";
				stm = conn.prepareStatement(sql);
				stm.setString(1, studentid);
				stm.setString(2, password);
				rs = stm.executeQuery();
				if (rs.next()) {
					result = new UserDTO(rs.getString("UserID"), rs.getString("StudentID"), rs.getString("UserName"), "***", rs.getString("Email"), rs.getString("Level"));
				}
			}
		} catch (Exception e) {
		} finally {
			closeConnection();
		}
		return result;
	}
	
	public List<UserDTO> getAllUser() {
		List<UserDTO> list = new ArrayList<>();
		String sql = "SELECT *\n"
				+ "FROM uthdb.dbUsers\n";
		try {

			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while (rs.next()) {
				list.add(new UserDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6)));

			}
		} catch (Exception e) {
		}
		return list;
	}
	
	public void deleteAccount(String studentID) {
		String sql = "DELETE FROM uthdb.dbUsers where StudentID = ?";
		try {
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, studentID);
			stm.executeUpdate();
		} catch (Exception e) {
		}
	}
	
	public List<UserDTO> getSearchUser(String userName) {
		List<UserDTO> list = new ArrayList<>();
		String sql = "SELECT * FROM uthdb.dbUsers\n"
				+ "WHERE UserName LIKE ?";
		try {
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, "%"+userName+"%");
			rs = stm.executeQuery();
			while (rs.next()) {
				list.add(new UserDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6)));

			}
		} catch (Exception e) {
		}
		return list;
	}
	
	public void UpdateUserAccountPassword(String userID, String password) {
		String sql = "UPDATE uthdb.dbUsers SET Password = ? where UserID = ?;";
		
		try {
            conn = DBUtil.getConnection();
            stm = conn.prepareStatement(sql);
            stm.setString(1, password);
            stm.setString(2, userID);
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
	
	public void UpdateUserAccountEmail(String userID, String email) {
		String sql = "UPDATE uthdb.dbUsers SET Email = ? where UserID = ?;";
		
		try {
            conn = DBUtil.getConnection();
            stm = conn.prepareStatement(sql);
            stm.setString(1, email);
            stm.setString(2, userID);
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
	
	public void UpdateUserAccountUserName(String userID, String userName) {
		String sql = "UPDATE uthdb.dbUsers SET UserName = ? where UserID = ?;";
		
		try {
            conn = DBUtil.getConnection();
            stm = conn.prepareStatement(sql);
            stm.setString(1, userName);
            stm.setString(2, userID);
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
	
	public String getBlocked(String studentID) {
		String sql = "SELECT Blocked"
				+ " FROM uthdb.dbUsers WHERE StudentID = ?";
		
		try {
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, studentID);
			rs = stm.executeQuery();
			while (rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
		}
		return null;
	}
	
	public void UpdateBlocked(String studentID) {
		String sql = "UPDATE uthdb.dbUsers SET Blocked = 'Khoá' WHERE StudentID = ?";
		
		try {
            conn = DBUtil.getConnection();
            stm = conn.prepareStatement(sql);
            stm.setString(1, studentID);
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
	
	public void UpdateUnlocked(String studentID) {
		String sql = "UPDATE uthdb.dbUsers SET Blocked = '0' WHERE StudentID = ?";
		
		try {
            conn = DBUtil.getConnection();
            stm = conn.prepareStatement(sql);
            stm.setString(1, studentID);
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
