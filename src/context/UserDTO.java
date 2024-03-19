package context;

public class UserDTO {

    private String userID, studentID, userName, password, email, level;

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public UserDTO(String userID, String studentID, String userName, String password, String email, String level) {
		super();
		this.userID = userID;
		this.studentID = studentID;
		this.userName = userName;
		this.password = password;
		this.email = email;
		this.level = level;
	}

}
