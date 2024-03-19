package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.naming.NamingException;

public class DBUtil {
	public static Connection getConnection() throws ClassNotFoundException, SQLException, NamingException {
		Connection conn = null;
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/uthdb?useUnicode=yes&characterEncoding=UTF-8";
		conn = DriverManager.getConnection(url, "root", "10022002");
		return conn;
	}
}
