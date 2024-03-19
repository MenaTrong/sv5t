package context;

public class ListSignUpDTO {

	private String fileID, profileType, studentID, userName, email, phoneNumber, sex, department, confirm;


	public String getConfirm() {
		return confirm;
	}

	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}

	public ListSignUpDTO(String fileID, String profileType, String studentID, String userName, String email,
			String phoneNumber, String sex, String department, String confirm) {
		super();
		this.fileID = fileID;
		this.profileType = profileType;
		this.studentID = studentID;
		this.userName = userName;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.sex = sex;
		this.department = department;
		this.confirm = confirm;
	}

	public String getStudentID() {
		return studentID;
	}

	public void setStudentID(String studentID) {
		this.studentID = studentID;
	}

	public String getFileID() {
		return fileID;
	}

	public void setFileID(String fileID) {
		this.fileID = fileID;
	}

	public String getProfileType() {
		return profileType;
	}

	public void setProfileType(String profileType) {
		this.profileType = profileType;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getClss() {
		return department;
	}

	public void setClss(String department) {
		this.department = department;
	}
}
