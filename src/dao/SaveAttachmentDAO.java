package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import utils.DBUtil;

public class SaveAttachmentDAO {

	Connection conn = null;
	PreparedStatement stm = null;
	ResultSet rs = null;
	public void insertAttachmentTittle0101(String studentID, String file0101) {
		String sql = "UPDATE uthdb.dbAttachmentsOfProofSV5T  SET AttachTittle0101 = ? where StudentID = ?;";
		
		try {
            conn = DBUtil.getConnection();
            stm = conn.prepareStatement(sql);
            stm.setString(1, file0101);
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
	
	public void insertAttachmentTittle0102(String studentID, String file0102) {
		String sql = "UPDATE uthdb.dbAttachmentsOfProofSV5T  SET AttachTittle0102 = ? where StudentID = ?;";
		
		try {
            conn = DBUtil.getConnection();
            stm = conn.prepareStatement(sql);
            stm.setString(1, file0102);
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
	
	public void insertAttachmentTittle0103(String studentID, String file0103) {
		String sql = "UPDATE uthdb.dbAttachmentsOfProofSV5T  SET AttachTittle0103 = ? where StudentID = ?;";
		
		try {
            conn = DBUtil.getConnection();
            stm = conn.prepareStatement(sql);
            stm.setString(1, file0103);
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
	
	public void insertAttachmentTittle0201(String studentID, String file0201) {
		String sql = "UPDATE uthdb.dbAttachmentsOfProofSV5T  SET AttachTittle0201 = ? where StudentID = ?;";
		
		try {
            conn = DBUtil.getConnection();
            stm = conn.prepareStatement(sql);
            stm.setString(1, file0201);
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
	
	public void insertAttachmentTittle0202(String studentID, String file0202) {
		String sql = "UPDATE uthdb.dbAttachmentsOfProofSV5T  SET AttachTittle0202 = ? where StudentID = ?;";
		
		try {
            conn = DBUtil.getConnection();
            stm = conn.prepareStatement(sql);
            stm.setString(1, file0202);
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
	
	public void insertAttachmentTittle03(String studentID, String file03) {
		String sql = "UPDATE uthdb.dbAttachmentsOfProofSV5T  SET AttachTittle03 = ? where StudentID = ?;";
		
		try {
            conn = DBUtil.getConnection();
            stm = conn.prepareStatement(sql);
            stm.setString(1, file03);
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
	
	public void insertAttachmentTittle04(String studentID, String file04) {
		String sql = "UPDATE uthdb.dbAttachmentsOfProofSV5T  SET AttachTittle04 = ? where StudentID = ?;";
		
		try {
            conn = DBUtil.getConnection();
            stm = conn.prepareStatement(sql);
            stm.setString(1, file04);
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
	
	public void insertAttachmentTittle05(String studentID, String file05) {
		String sql = "UPDATE uthdb.dbAttachmentsOfProofSV5T  SET AttachTittle05 = ? where StudentID = ?;";
		
		try {
            conn = DBUtil.getConnection();
            stm = conn.prepareStatement(sql);
            stm.setString(1, file05);
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
