package context;

public class AdminUserDTO {

	private String userID, studentID, userName, level;

	
	public AdminUserDTO(String userID, String studentID, String userName, String level) {
		super();
		this.userID = userID;
		this.studentID = studentID;
		this.userName = userName;
		this.level = level;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getStudentID() {
		return studentID;
	}

	public void setStudentID(String studentID) {
		this.studentID = studentID;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
}
