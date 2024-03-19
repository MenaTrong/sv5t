package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import context.AttachmentDTO;
import utils.DBUtil;

public class ShowAttachmentDAO {

	Connection conn = null;
	PreparedStatement stm = null;
	ResultSet rs = null;
	
	public AttachmentDTO getListAttachment(String studentID) {
		String sql = "SELECT StudentID, AttachTittle0101, AttachTittle0102, AttachTittle0103, AttachTittle0201, AttachTittle0202, AttachTittle03, AttachTittle04, AttachTittle05 FROM uthdb.dbAttachmentsOfProofSV5T WHERE StudentID = ?;";
		try {

			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, studentID);
			rs = stm.executeQuery();
			while (rs.next()) {
				return new AttachmentDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9));

			}
		} catch (Exception e) {
		}
		return null;
	}
}
