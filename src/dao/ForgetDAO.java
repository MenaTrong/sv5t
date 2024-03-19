package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Random;

import context.UserDTO;
import utils.DBUtil;

public class ForgetDAO {

	Connection conn = null;
	PreparedStatement stm = null;
	ResultSet rs = null;
	
	public UserDTO getEmailUser(String email) {
		String sql = "SELECT * FROM uthdb.dbUsers where Email = ?";
		try {
			
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, email);
			rs = stm.executeQuery();
			while (rs.next()) {
				return new UserDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));

			}
		} catch (Exception e) {
		}
		return null;
	}
	
	public String editPasswordByEmail(String email) {
		String sql = "update `uthdb`.`dbUsers` set `Password`=? where Email = ?;";
		
		//Create Password
		String[] pass = new String[6];
		String passString;
		String password = "";
		for (int i = 0; i < 6; i++) {
            Random rand = new Random();
            int ranNum = rand.nextInt(9) + 1;
            passString = String.valueOf(ranNum);
            pass[i] = passString;
		}
		
		for (int i = 0; i < 6; i++) {
			password = password + pass[i];
		}
		
		try {
			conn = DBUtil.getConnection();
			stm = conn.prepareStatement(sql);
			stm.setString(1, password);
			stm.setString(2, email);
			stm.executeUpdate();
		} catch (Exception e) {
		}
		return password;
	}
}
