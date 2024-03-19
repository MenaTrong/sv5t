package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import utils.DBUtil;

public class SaveContentDAO {

	Connection conn = null;
	PreparedStatement stm = null;
	ResultSet rs = null;
	
	public void insertContentTittle0101(String studentID, String content0101) {
		String sql = "UPDATE uthdb.dbContentOfProofSV5T SET Tittle0101 = ? WHERE StudentID = ?;";
		
		try {
            conn = DBUtil.getConnection();
            stm = conn.prepareStatement(sql);
            stm.setString(1, content0101);
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
	
	public void insertContentTittle0102(String studentID, String content0102) {
		String sql = "UPDATE uthdb.dbContentOfProofSV5T  SET Tittle0102 = ? where StudentID = ?;";
		
		try {
            conn = DBUtil.getConnection();
            stm = conn.prepareStatement(sql);
            stm.setString(1, content0102);
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
	
	public void insertContentTittle0103(String studentID, String content0103) {
		String sql = "UPDATE uthdb.dbContentOfProofSV5T  SET Tittle0103 = ? where StudentID = ?;";
		
		try {
            conn = DBUtil.getConnection();
            stm = conn.prepareStatement(sql);
            stm.setString(1, content0103);
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
	
	public void insertContentTittle0201(String studentID, String content0201) {
		String sql = "UPDATE uthdb.dbContentOfProofSV5T  SET Tittle0201 = ? where StudentID = ?;";
		
		try {
            conn = DBUtil.getConnection();
            stm = conn.prepareStatement(sql);
            stm.setString(1, content0201);
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
	
	public void insertContentTittle0202(String studentID, String content0202) {
		String sql = "UPDATE uthdb.dbContentOfProofSV5T  SET Tittle0202 = ? where StudentID = ?;";
		
		try {
            conn = DBUtil.getConnection();
            stm = conn.prepareStatement(sql);
            stm.setString(1, content0202);
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
	
	public void insertContentTittle03(String studentID, String content03) {
		String sql = "UPDATE uthdb.dbContentOfProofSV5T  SET Tittle03 = ? where StudentID = ?;";
		
		try {
            conn = DBUtil.getConnection();
            stm = conn.prepareStatement(sql);
            stm.setString(1, content03);
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
	
	public void insertContentTittle04(String studentID, String content04) {
		String sql = "UPDATE uthdb.dbContentOfProofSV5T  SET Tittle04 = ? where StudentID = ?;";
		
		try {
            conn = DBUtil.getConnection();
            stm = conn.prepareStatement(sql);
            stm.setString(1, content04);
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
	
	public void insertContentTittle05(String studentID, String content05) {
		String sql = "UPDATE uthdb.dbContentOfProofSV5T  SET Tittle05 = ? where StudentID = ?;";
		
		try {
            conn = DBUtil.getConnection();
            stm = conn.prepareStatement(sql);
            stm.setString(1, content05);
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
