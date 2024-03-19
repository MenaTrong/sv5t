package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import utils.DBUtil;

public class SaveCommentDAO {

	Connection conn = null;
	PreparedStatement stm = null;
	ResultSet rs = null;
	
	public void insertCommentTittle0101(String studentID, String content0101) {
		String sql = "UPDATE uthdb.dbComment  SET CommentTittle0101 = ? where StudentID = ?;";
		
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
	
	public void insertCommentTittle0102(String studentID, String content0102) {
		String sql = "UPDATE uthdb.dbComment  SET CommentTittle0102 = ? where StudentID = ?;";
		
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
	
	public void insertCommentTittle0103(String studentID, String content0103) {
		String sql = "UPDATE uthdb.dbComment  SET CommentTittle0103 = ? where StudentID = ?;";
		
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
	
	public void insertCommentTittle0201(String studentID, String content0201) {
		String sql = "UPDATE uthdb.dbComment  SET CommentTittle0201 = ? where StudentID = ?;";
		
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
	
	public void insertCommentTittle0202(String studentID, String content0202) {
		String sql = "UPDATE uthdb.dbComment  SET CommentTittle0202 = ? where StudentID = ?;";
		
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
	
	public void insertCommentTittle03(String studentID, String content03) {
		String sql = "UPDATE uthdb.dbComment  SET CommentTittle03 = ? where StudentID = ?;";
		
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
	
	public void insertCommentTittle04(String studentID, String content04) {
		String sql = "UPDATE uthdb.dbComment  SET CommentTittle04 = ? where StudentID = ?;";
		
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
	
	public void insertCommentTittle05(String studentID, String content05) {
		String sql = "UPDATE uthdb.dbComment  SET CommentTittle05 = ? where StudentID = ?;";
		
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
